baserom="$1"
repo_name="$2"
prefix_id="$3"
builder_name="$4"
builder_id="$5"
work_dir=$(pwd)
# Import functions
tools_dir=${work_dir}/bin/$(uname)/$(uname -m)export PATH=$(pwd)/bin/$(uname)/$(uname -m)/:$PATH
chmod 777 ${work_dir}/bin/*
chmod 777 ${work_dir}/bin/Linux/x86_64/*
source $work_dir/functions.sh
if [[ $(git branch --show-current) == "beta" ]]; then
    polyxver="$(cat Version)"
	status="Development"
else
    polyxver="$(cat Version)"
	status="Official"
fi

check unzip aria2c 7z zip java zipalign python3 zstd bc xmlstarlet aapt

rm -rf $work_dir/out
rm -rf $work_dir/build

python3 $work_dir/notify.py download "$repo_name" "$baserom" "$prefix_id" "$builder_name" "$builder_id"
source "$work_dir/bin/ddevice/getROM.sh" "$baserom"

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

# Send the build notification after codename and version are available.
python3 $work_dir/notify.py build "$repo_name" "$baserom" "$prefix_id" "$builder_name" "$builder_id"

bash $work_dir/bin/ddevice/DEBLOAT/debloat.sh
info "ROM patch stage completed."

bash $work_dir/bin/modfile/OS1/insmod.sh
bash $work_dir/bin/modfile/OS2/insmod.sh
bash $work_dir/bin/modfile/OS3/insmod.sh
bash $work_dir/bin/modfile/Universal/insfile.sh
bash $work_dir/bin/modfile/UpdateFile/insupdate.sh
bash $work_dir/bin/package/patchpackage.sh

find "$work_dir/build/baserom/images/" -exec touch -t 200901010000.00 {} + 2> /dev/null || true
