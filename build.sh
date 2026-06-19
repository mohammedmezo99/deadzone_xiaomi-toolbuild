baserom="$1"
repo_name="$2"
prefix_id="$3"
builder_name="$4"
builder_id="$5"
work_dir=$(pwd)
export WORK_DIR="$work_dir"
export DZ_NOTIFY_REPO_NAME="$repo_name"
export DZ_NOTIFY_ROM_LINK="$baserom"
export DZ_NOTIFY_PREFIX="$prefix_id"
export DZ_NOTIFY_BUILDER_NAME="$builder_name"
export DZ_NOTIFY_BUILDER_ID="$builder_id"
source "$work_dir/bin/ddevice/style.sh"
raw_style="${STYLE:-${DZ_STYLE_ID:-${INPUT_STYLE:-Lite}}}"
if ! style_id="$(resolve_style_id "$raw_style")"; then
    echo "[ERROR] - Unsupported STYLE value: ${raw_style:-<empty>}. Expected one of Lite, GamingPlus, Legend, Ninja." >&2
    exit 1
fi
style_name="$(style_display_name "$style_id")"
style_zip_name="$(style_zip_prefix "$style_id")"
style_tier="$(style_tier_name "$style_id")"
export STYLE="$style_id"
export DZ_STYLE="$style_id"
export DZ_STYLE_ID="$style_id"
export DZ_FINAL_STYLE_ID="$style_id"
export DZ_REQUESTED_STYLE="$style_id"
export DZ_BASE_STYLE_ID=""
export DZ_STYLE_EXECUTION_MODE="final"
export DZ_STYLE_NAME="$style_name"
export DZ_STYLE_TIER="$style_tier"
mkdir -p "$work_dir/bin/ddevice"
printf '%s\n' "$style_id" > "$work_dir/bin/ddevice/style_id.txt"
printf '%s\n' "$style_name" > "$work_dir/bin/ddevice/style_name.txt"
printf '%s\n' "$style_zip_name" > "$work_dir/bin/ddevice/style_zip_prefix.txt"

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

detect_platform_id() {
    local rom_code="$1"
    local android_major="$2"
    local upper_code="${rom_code^^}"
    local family=""

    if [[ "$upper_code" == OS3.* ]]; then
        family="OS3"
    elif [[ "$upper_code" == OS2.* ]]; then
        family="OS2"
    elif [[ "$upper_code" == V* ]]; then
        family="OS1"
    fi

    if [[ -n "$family" && -n "$android_major" ]]; then
        printf '%s_A%s\n' "$family" "$android_major"
    fi
}

apply_deadzone_style_runtime() {
    local platform_id="$1"
    local rom_root="$2"

    export DZ_PLATFORM_ID="$platform_id"
    export PLATFORM_ID="$platform_id"
    export PLATFORM="$platform_id"
    export ROM_PLATFORM="$platform_id"
    export DZ_ROM_ROOT="$rom_root"
    export ROM_ROOT="$rom_root"
    export EXTRACTED_ROM_DIR="$rom_root"
    export ANDROID_VERSION="$(cat "$work_dir/bin/ddevice/androidver.txt" 2>/dev/null)"
    export DZ_ANDROID_VERSION="$ANDROID_VERSION"
    export SDK_VERSION="$(cat "$work_dir/bin/ddevice/sdkLevel.txt" 2>/dev/null)"
    export ANDROID_SDK="$SDK_VERSION"

    info "Selected style: $style_name"

    case "$style_id" in
        lite)
            mods "Applying DeadZone Lite style"
            info "Skipping DeadZone Ninja style because STYLE=$style_name"
            if [[ "$platform_id" == "OS3_A16" ]]; then
                bash "$work_dir/DeadZone/Patches/ModFile/OS3_A16/Lite/insmod.sh" "$rom_root" || {
                    error "Lite OS3_A16 manual runtime pack failed."
                    exit 1
                }
            else
                info "⏭️ Skipping Lite OS3_A16 pack because STYLE=$style_name PLATFORM=${platform_id:-unknown}"
            fi
            ;;
        gamingplus)
            mods "Applying DeadZone GamingPlus style"
            info "Skipping DeadZone Ninja style because STYLE=$style_name"
            info "⏭️ Skipping Lite OS3_A16 pack because STYLE=$style_name PLATFORM=${platform_id:-unknown}"
            ;;
        legend)
            mods "Applying DeadZone Legend style"
            info "Skipping DeadZone Ninja style because STYLE=$style_name"
            info "⏭️ Skipping Lite OS3_A16 pack because STYLE=$style_name PLATFORM=${platform_id:-unknown}"
            ;;
        ninja)
            mods "Applying DeadZone Ninja style"
            info "⏭️ Skipping Lite OS3_A16 pack because STYLE=$style_name PLATFORM=${platform_id:-unknown}"
            if [[ "$platform_id" == "OS3_A16" ]]; then
                mods "Applying Ninja OS3_A16 manual runtime pack."
                bash "$work_dir/DeadZone/Patches/ModFile/OS3_A16/Ninja/insmod.sh" "$rom_root" || {
                    error "Ninja OS3_A16 manual runtime pack failed."
                    exit 1
                }
            else
                info "Ninja OS3_A16 manual runtime pack is not applicable for ${platform_id:-unknown platform}."
            fi
            ;;
        *)
            error "Unsupported style route resolved to ${style_id:-<empty>}."
            exit 1
            ;;
    esac
}
# Import functions
tools_dir=${work_dir}/bin/$(uname)/$(uname -m)
export PATH="$(pwd)/bin/$(uname)/$(uname -m):$PATH"
chmod 777 ${work_dir}/bin/*
chmod 777 ${work_dir}/bin/Linux/x86_64/*
source $work_dir/functions.sh
if [[ $(git branch --show-current) == "beta" ]]; then
    polyxver="$(normalize_project_version "$(cat Version 2>/dev/null)")"
	status="Development"
else
    polyxver="$(normalize_project_version "$(cat Version 2>/dev/null)")"
	status="Official"
fi

check unzip aria2c 7z zip java zipalign python3 zstd bc xmlstarlet aapt

rm -rf $work_dir/out
rm -rf $work_dir/build

export DZ_NOTIFY_STAGE="download"
python3 $work_dir/notify.py download "$repo_name" "$baserom" "$prefix_id" "$builder_name" "$builder_id"
source "$work_dir/bin/ddevice/getROM.sh" "$baserom"

export DZ_NOTIFY_STAGE="unpack"
python3 $work_dir/notify.py unpack "$repo_name" "$baserom" "$prefix_id" "$builder_name" "$builder_id"
if unzip -l ${baserom} | grep -q "payload.bin"; then
    baserom_type="payload"
    echo $baserom_type > $work_dir/bin/ddevice/romtype.txt
    unpack "Detected payload.bin firmware package."
    super_list="vendor mi_ext odm odm_dlkm system system_dlkm vendor_dlkm product product_dlkm system_ext"
    unpack "ROM input validation passed."
elif unzip -l ${baserom} | grep -q "br$";then
    baserom_type="br"
    echo $baserom_type > $work_dir/bin/ddevice/romtype.txt
    super_list="system vendor product odm system_ext mi_ext"
    unpack "Detected Brotli-compressed partition package."
    unpack "ROM input validation passed."
elif unzip -l ${baserom} | grep -q "images/super.img*"; then
    unpack "Detected split super.img firmware package."
    is_base_rom_eu=true
    unpack "ROM input validation passed."
else
    error "Unpack failed"
    exit 1
fi

rm -rf app
rm -rf tmp
rm -rf config
rm -rf build/baserom/
find . -type d -name 'miui_*' | xargs rm -rf

unpack "Workspace cleanup completed."
mkdir -p build/baserom/images/

# Extract partitions
if [[ ${baserom_type} == 'payload' ]]; then
    unpack "Extracting payload.bin from the base ROM."
    unzip ${baserom} payload.bin -d build/baserom >/dev/null 2>&1 || error "Extracting payload.bin error"
    unpack "payload.bin extracted successfully."
elif [[ ${baserom_type} == 'br' ]];then
    unpack "Extracting *.new.dat.br partitions from the base ROM."
    unzip ${baserom} -d build/baserom >/dev/null 2>&1 || error "Extracting new.dat.br error"
    unpack "new.dat.br files extracted successfully."
elif [[ ${is_base_rom_eu} == true ]];then
    unpack "Extracting split super.img files from the base ROM."
    unzip ${baserom} 'images/*' -d build/baserom >  /dev/null 2>&1 ||error "Extracting [super.img] error"
    unpack "Merging super.img.* into a single super.img."
    simg2img build/baserom/images/super.img.* build/baserom/images/super.img
    rm -rf build/baserom/images/super.img.*
    mv build/baserom/images/super.img build/baserom/super.img
    unpack "super.img extracted successfully."
    if [[ -f build/baserom/images/cust.img.0 ]];then
        simg2img build/baserom/images/cust.img.* build/baserom/images/cust.img
        rm -rf build/baserom/images/cust.img.*
    fi
fi

if [[ ${baserom_type} == 'payload' ]]; then
    unpack "Unpacking payload.bin."
    payload-extract extract -o build/baserom/images/ build/baserom/payload.bin >/dev/null 2>&1 || error "Unpacking payload.bin failed"
elif [[ ${baserom_type} == 'br' ]];then
    super_list=$(cat build/baserom/dynamic_partitions_op_list | grep "add " | awk '{ print $2 }')
    unpack "Unpacking new.dat.br partitions."
        for brotlipart in ${super_list}; do
            brotli -d build/baserom/$brotlipart.new.dat.br >/dev/null 2>&1
            python3 $work_dir/bin/Linux/x86_64/sdat2img.py build/baserom/$brotlipart.transfer.list build/baserom/$brotlipart.new.dat build/baserom/images/$brotlipart.img >/dev/null 2>&1
            rm -rf build/baserom/$brotlipart.new.dat* build/baserom/$brotlipart.transfer.list build/baserom/$brotlipart.patch.*
        done
elif [[ ${is_base_rom_eu} == true ]];then
    unpack "Unpacking the base ROM super.img."
    super_list=$(python3 bin/lpunpack.py --info build/baserom/super.img | grep "super:" | awk '{ print $5 }')
    for i in ${super_list}; do
        if [[ $i == *_a ]];then
            i=${i%_a}
            python3 bin/lpunpack.py -p ${i}_a build/baserom/super.img build/baserom/images >/dev/null 2>&1
            mv build/baserom/images/${i}_a.img build/baserom/images/${i}.img
        else
            python3 bin/lpunpack.py -p ${i} build/baserom/super.img build/baserom/images >/dev/null 2>&1
        fi
    done
    super_list=$(echo $super_list | sed 's/_a//g')
fi

for part in ${super_list}; do
    extract_partition $work_dir/build/baserom/images/${part}.img $work_dir/build/baserom/images
    PACK_TYPE=$(cat $work_dir/bin/ddevice/fstype.txt)
done
echo $device_f > $work_dir/bin/ddevice/device_f.txt
getvar=$(cat $work_dir/bin/ddevice/device_f.txt)

rm -rf config

if [ -f $work_dir/${baserom}.zip ]; then
    rm -rf ${baserom}.zip
fi

rm -rf build/baserom/payload.bin
rm -rf build/baserom/images/super.img

mods "Collecting device information."
bash $work_dir/bin/ddevice/getname.sh $getvar
bash $work_dir/bin/ddevice/fetchINFO.sh
platform_id="$(detect_platform_id "$(cat "$work_dir/bin/ddevice/base_rom_code.txt" 2>/dev/null)" "$(cat "$work_dir/bin/ddevice/androidver.txt" 2>/dev/null)")"
printf '%s\n' "$platform_id" > "$work_dir/bin/ddevice/platform_id.txt"

# Send the build notification after codename and version are available.
export DZ_NOTIFY_STAGE="build"
python3 $work_dir/notify.py build "$repo_name" "$baserom" "$prefix_id" "$builder_name" "$builder_id"

bash $work_dir/bin/ddevice/DEBLOAT/debloat.sh
info "ROM patch stage completed."

mods "Applying ${style_name} style routing."
bash $work_dir/bin/modfile/OS1/insmod.sh
bash $work_dir/bin/modfile/OS2/insmod.sh
bash $work_dir/bin/modfile/OS3/insmod.sh
bash $work_dir/bin/modfile/Universal/insfile.sh
bash $work_dir/bin/modfile/UpdateFile/insupdate.sh
bash $work_dir/bin/package/patchpackage.sh
apply_deadzone_style_runtime "$platform_id" "$work_dir/build/baserom/images"

find "$work_dir/build/baserom/images/" -exec touch -t 200901010000.00 {} + 2> /dev/null || true
