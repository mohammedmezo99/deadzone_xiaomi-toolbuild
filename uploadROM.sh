work_dir=$(pwd)
export WORK_DIR="$work_dir"
export DZ_NOTIFY_STAGE="upload"
source $work_dir/functions.sh
source "$work_dir/bin/ddevice/style.sh"
RCLONE_CONF=""
TEMP_RCLONE_CONF=""
REMOTE="${GDRIVE_REMOTE:-gdrive}"
DEST="${GDRIVE_PATH:-DeadZoneBuilds}"
os_type=$(cat $work_dir/bin/ddevice/os_type.txt)
base_rom_code=$(cat $work_dir/bin/ddevice/base_rom_code.txt)
androidVER=$(cat $work_dir/bin/ddevice/androidver.txt)
rom_os=$(cat $work_dir/bin/ddevice/rom_os.txt)
regionTYPE=$(cat $work_dir/bin/ddevice/device_type.txt)
device_code=$(cat $work_dir/bin/ddevice/device_code.txt)
baserom_type=$(cat $work_dir/bin/ddevice/romtype.txt)
device_f=$(cat $work_dir/bin/ddevice/device_f.txt)
style_id=$(cat $work_dir/bin/ddevice/style_id.txt 2>/dev/null || echo "lite")
style_name=$(cat $work_dir/bin/ddevice/style_name.txt 2>/dev/null || style_display_name "$style_id")
style_prefix=$(cat $work_dir/bin/ddevice/style_zip_prefix.txt 2>/dev/null || style_zip_prefix "$style_id")

normalize_project_version() {
  local version_value="$1"
  version_value="${version_value//$'\r'/}"
  version_value="${version_value//$'\n'/}"
  [ -n "$version_value" ] || return 1
  if [[ "$version_value" == v* ]]; then
    printf '%s\n' "$version_value"
  else
    printf 'v%s\n' "$version_value"
  fi
}

rom_base_version() {
  local rom_value="$1"
  if [[ "$rom_value" =~ ^(.+)\.[A-Z0-9]{4,}$ ]]; then
    printf '%s\n' "${BASH_REMATCH[1]}"
  else
    printf '%s\n' "$rom_value"
  fi
}

detect_region_label() {
  local rom_value="${1^^}"
  case "$rom_value" in
    *CNXM) printf 'China\n' ;;
    *MIXM) printf 'Global\n' ;;
    *EUXM) printf 'EEA\n' ;;
    *INXM) printf 'India\n' ;;
    *RUXM) printf 'Russia\n' ;;
    *IDXM) printf 'Indonesia\n' ;;
    *TRXM) printf 'Turkey\n' ;;
    *TWXM) printf 'Taiwan\n' ;;
    *JPXM) printf 'Japan\n' ;;
    *)
      case "$regionTYPE" in
        EEAGlobal) printf 'EEA\n' ;;
        INGlobal) printf 'India\n' ;;
        IDGlobal) printf 'Indonesia\n' ;;
        RUGlobal) printf 'Russia\n' ;;
        TRGlobal) printf 'Turkey\n' ;;
        TWGlobal) printf 'Taiwan\n' ;;
        JPGlobal) printf 'Japan\n' ;;
        Global) printf 'Global\n' ;;
        *) printf 'China\n' ;;
      esac
      ;;
  esac
}

cleanup_rclone_conf() {
  if [ -n "$TEMP_RCLONE_CONF" ] && [ -f "$TEMP_RCLONE_CONF" ]; then
    rm -f "$TEMP_RCLONE_CONF"
  fi
}

legacy_rclone_args_present() {
  [ -n "${1:-${GH_TOKEN:-}}" ] && [ -n "${2:-${GH_REPO:-}}" ] && [ -n "${3:-${RCLONE_TOKEN_PATH:-}}" ]
}

download_legacy_rclone_conf() {
  local legacy_token="${1:-${GH_TOKEN:-}}"
  local legacy_repo="${2:-${GH_REPO:-}}"
  local legacy_path="${3:-${RCLONE_TOKEN_PATH:-}}"

  if ! legacy_rclone_args_present "$legacy_token" "$legacy_repo" "$legacy_path"; then
    error "Missing Google Drive upload configuration. Set RCLONE_CONFIG_B64, or use legacy GH_TOKEN + GH_REPO + RCLONE_TOKEN_PATH."
    return 1
  fi

  curl -fsS -o "$work_dir/rclone.conf" \
    -H "Authorization: token $legacy_token" \
    -H "Accept: application/vnd.github.v3.raw" \
    -L "https://api.github.com/repos/$legacy_repo/contents/$legacy_path" || {
      error "Failed to download the legacy rclone configuration."
      return 1
    }

  RCLONE_CONF="$work_dir/rclone.conf"
}

resolve_rclone_conf() {
  trap cleanup_rclone_conf EXIT

  if [ -n "${RCLONE_CONFIG_B64:-}" ]; then
    if [ -n "${GITHUB_WORKSPACE:-}" ]; then
      TEMP_RCLONE_CONF="$GITHUB_WORKSPACE/rclone_gdrive.conf"
    else
      TEMP_RCLONE_CONF="$work_dir/rclone_gdrive.conf"
    fi

    printf '%s' "$RCLONE_CONFIG_B64" | base64 --decode > "$TEMP_RCLONE_CONF" || {
      error "Failed to decode RCLONE_CONFIG_B64 into a temporary rclone configuration."
      return 1
    }

    chmod 600 "$TEMP_RCLONE_CONF" 2>/dev/null || true
    RCLONE_CONF="$TEMP_RCLONE_CONF"
    return 0
  fi

  if [ -s "$work_dir/rclone.conf" ] && ! grep -qx "# Placeholder" "$work_dir/rclone.conf"; then
    RCLONE_CONF="$work_dir/rclone.conf"
    return 0
  fi

  download_legacy_rclone_conf
}

if [ "$1" == "setup" ]; then
  if [ -n "${RCLONE_CONFIG_B64:-}" ]; then
    upload "RCLONE_CONFIG_B64 detected. Legacy setup step skipped."
    exit 0
  fi
  download_legacy_rclone_conf "$2" "$3" "$4" || exit 1
  exit 0
fi


if [[ $(git branch --show-current) == "beta" ]]; then
    polyxver="$(normalize_project_version "$(cat Version 2>/dev/null)")"
	status="Development"
else
    polyxver="$(normalize_project_version "$(cat Version 2>/dev/null)")"
	status="Official"
fi

if [[ $rom_os == "MIUI" ]];then
    os_type="MIUI"
else
    os_type="HyperOS"
fi

project_version="$(normalize_project_version "$(cat "$work_dir/Version" 2>/dev/null)")" || {
    error "Version file missing or empty; cannot generate the final ZIP name."
    exit 1
}
rom_base_short="$(rom_base_version "$base_rom_code")"
region_label="$(detect_region_label "$base_rom_code")"
codename_upper="$(printf '%s' "$device_f" | tr '[:lower:]' '[:upper:]')"
release_channel="Stable"
android_label="A${androidVER}"
final_zip_name="${style_prefix}_${project_version}_${codename_upper}_${rom_base_short}_${region_label}${release_channel}-${android_label}.zip"
build_dir_name="${os_type}_${device_code}_${base_rom_code}"

repack "Compressing super.img."
zstd --rm $work_dir/build/baserom/images/super.img -o $work_dir/build/baserom/images/super.img.zst > /dev/null 2>&1

repack "Generating the flashing package layout."
if [[ ${baserom_type} == 'payload' ]]; then
    mkdir -p "$work_dir/out/${build_dir_name}/images/"
	mv -f $work_dir/build/baserom/images/super.img.zst "$work_dir/out/${build_dir_name}/"
    mv -f $work_dir/build/baserom/images/*.img "$work_dir/out/${build_dir_name}/images/"
elif [[ ${baserom_type} == 'br' ]]; then
    mkdir -p "$work_dir/out/${build_dir_name}/images/"
    mv -f $work_dir/build/baserom/firmware-update/* "$work_dir/out/${build_dir_name}/images/"
    mv -f $work_dir/build/baserom/images/super.img.zst "$work_dir/out/${build_dir_name}/"
fi

# generate dynamic script
cp -rf "$work_dir/bin/script2flash/META-INF" "$work_dir/out/${build_dir_name}/"
chip_type=$(tr '[:upper:]' '[:lower:]' < "$work_dir/bin/script2flash/META-INF/Data/Chip" 2>/dev/null)
if [[ "$chip_type" == *mtk* || "$chip_type" == *mediatek* ]]; then
    cp -f "$work_dir/bin/script2flash/MTK_Windows_FastbootInstall.bat" "$work_dir/out/${build_dir_name}/Windows_FastbootInstall.bat"
    cp -f "$work_dir/bin/script2flash/MTK_Linux_FastbootInstall.sh" "$work_dir/out/${build_dir_name}/Linux_FastbootInstall.sh"
    cp -f "$work_dir/bin/script2flash/MTK_MacOS_FastbootInstall.sh" "$work_dir/out/${build_dir_name}/MacOS_FastbootInstall.sh"
else
    cp -f "$work_dir/bin/script2flash/Windows_FastbootInstall.bat" "$work_dir/out/${build_dir_name}/Windows_FastbootInstall.bat"
    cp -f "$work_dir/bin/script2flash/Linux_FastbootInstall.sh" "$work_dir/out/${build_dir_name}/Linux_FastbootInstall.sh"
    cp -f "$work_dir/bin/script2flash/MacOS_FastbootInstall.sh" "$work_dir/out/${build_dir_name}/MacOS_FastbootInstall.sh"
fi
cp -rf "$work_dir/bin/script2flash/cust.img" "$work_dir/out/${build_dir_name}/images/"
echo "$device_f" > "$work_dir/out/${build_dir_name}/META-INF/Data/DeviceCode"
echo "$style_name" > "$work_dir/out/${build_dir_name}/META-INF/Data/Style"
repack "Flash package layout generated."


find "out/${build_dir_name}" | xargs touch
pushd "out/${build_dir_name}/" || exit
zip -r "$final_zip_name" ./*
mv "$final_zip_name" ../
popd || exit
repack "ROM package completed."
repack "Output file:"
repack "$(pwd)/out/${final_zip_name}"
upload "Starting cloud upload."
output_file="out/${final_zip_name}"
zip_name=$(basename "$output_file")
echo "${final_zip_name}" > $work_dir/bin/ddevice/output_zip.txt

resolve_rclone_conf || exit 1

rclone -P --stats 30s --transfers 4 --checkers 8 --config "$RCLONE_CONF" copy "$output_file" "${REMOTE}:${DEST}/" || {
    upload "Cloud upload failed for the generated ROM package."
    exit 1
}

gdrive_link=$(rclone --config "$RCLONE_CONF" link "${REMOTE}:${DEST}/${zip_name}") || {
    upload "Upload completed, but generating the public Google Drive link failed."
    exit 1
}

if [ -d "$work_dir/output/reports" ]; then
    printf '%s\n' "$gdrive_link" > "$work_dir/output/reports/gdrive_url.txt"
elif [ -d "$work_dir/bin/output/reports" ]; then
    printf '%s\n' "$gdrive_link" > "$work_dir/bin/output/reports/gdrive_url.txt"
fi

upload "Google Drive link: $gdrive_link"

upload "Cleaning workflow workspace."
rm -rf $work_dir/out
rm -rf $work_dir/build

upload "Upload completed for ${os_type}_${polyxver} on ${device_code}."
