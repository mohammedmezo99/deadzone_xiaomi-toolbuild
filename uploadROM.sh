work_dir=$(pwd)
source $work_dir/functions.sh
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
    polyxver="$(cat Version)"
	status="Development"
else
    polyxver="$(cat Version)"
	status="Official"
fi

if [[ $rom_os == "MIUI" ]];then
    os_type="MIUI"
else
    os_type="HyperOS"
fi

repack "Compressing super.img."
zstd --rm $work_dir/build/baserom/images/super.img -o $work_dir/build/baserom/images/super.img.zst > /dev/null 2>&1

repack "Generating the flashing package layout."
if [[ ${baserom_type} == 'payload' ]]; then
    mkdir -p $work_dir/out/${os_type}_${device_code}_${base_rom_code}/images/
	mv -f $work_dir/build/baserom/images/super.img.zst $work_dir/out/${os_type}_${device_code}_${base_rom_code}/
    mv -f $work_dir/build/baserom/images/*.img $work_dir/out/${os_type}_${device_code}_${base_rom_code}/images/
elif [[ ${baserom_type} == 'br' ]]; then
    mkdir -p $work_dir/out/${os_type}_${device_code}_${base_rom_code}/images/
    mv -f $work_dir/build/baserom/firmware-update/* $work_dir/out/${os_type}_${device_code}_${base_rom_code}/images/
    mv -f $work_dir/build/baserom/images/super.img.zst $work_dir/out/${os_type}_${device_code}_${base_rom_code}/
fi

# generate dynamic script
cp -rf $work_dir/bin/script2flash/META-INF $work_dir/out/${os_type}_${device_code}_${base_rom_code}/
cp -rf $work_dir/bin/script2flash/*.bat $work_dir/out/${os_type}_${device_code}_${base_rom_code}/
cp -rf $work_dir/bin/script2flash/*.sh $work_dir/out/${os_type}_${device_code}_${base_rom_code}/
cp -rf $work_dir/bin/script2flash/cust.img $work_dir/out/${os_type}_${device_code}_${base_rom_code}/images/
echo $device_f > $work_dir/out/${os_type}_${device_code}_${base_rom_code}/META-INF/Data/DeviceCode
repack "Flash package layout generated."


find out/${os_type}_${device_code}_${base_rom_code} |xargs touch
pushd out/${os_type}_${device_code}_${base_rom_code}/ || exit
zip -r ${os_type}_${device_code}_${base_rom_code}.zip ./*
mv ${os_type}_${device_code}_${base_rom_code}.zip ../
popd || exit
hash=$(md5sum out/${os_type}_${device_code}_${base_rom_code}.zip |head -c 5)
mv out/${os_type}_${device_code}_${base_rom_code}.zip out/${os_type}_${polyxver}_${device_code}_${base_rom_code}_${hash}_${status}.zip
repack "ROM package completed."
repack "Output file:"
repack "$(pwd)/out/${os_type}_${polyxver}_${device_code}_${base_rom_code}_${hash}_${status}.zip"
upload "Starting cloud upload."
output_file="out/${os_type}_${polyxver}_${device_code}_${base_rom_code}_${hash}_${status}.zip"
zip_name=$(basename "$output_file")
echo "${os_type}_${polyxver}_${device_code}_${base_rom_code}_${hash}_${status}.zip" > $work_dir/bin/ddevice/output_zip.txt

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
