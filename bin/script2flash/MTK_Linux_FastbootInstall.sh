#!/bin/bash
echo "Welcome to DeadZone MediaTek ROM Installer"
cd "$(dirname "$0")" || exit 1

FASTBOOT="fastboot"

if ! command -v "$FASTBOOT" >/dev/null 2>&1; then
    if [ -x "META-INF/bin/fastboot" ]; then
        FASTBOOT="META-INF/bin/fastboot"
    else
        echo "fastboot not found. Attempting to install via apt..."
        sudo apt-get update
        sudo apt-get install -y android-tools-fastboot || sudo apt-get install -y fastboot
        command -v fastboot >/dev/null 2>&1 || {
            echo "Failed to install fastboot. Please install it manually."
            read -r -p "Press Enter to exit..."
            exit 1
        }
        FASTBOOT="fastboot"
    fi
fi

DeviceCodeRom=$(cat META-INF/Data/DeviceCode 2>/dev/null | tr -d '\r\n')

echo ""
echo "[i] - Read this information before flashing"
echo ""
echo "1. Our ROM, like most other custom ROMS, requires an unlocked bootloader! If your device is NOT, please close this window."
echo "2. You have to choose carefully else you will LOST ALL DATA!"
echo "3. THIS IS DeadZone ROM!!! If you see someone sell or install this ROM for fees, please CONTACT MEZO NOW."
echo "4. We will NOT take responsibility if you brick your phone or lose all data while installing this ROM."
echo "5. Make sure you have downloaded the exact build for your device, else you might get bricked."
echo ""
echo "[i] - If you have read and agreed to all of the above, press Enter to start the installation."
echo "[i] - Else, close this terminal window."
read -r -p ""

echo "========================================================================================="
echo " Please Choose Format Option Before Flash ROM"
echo ""
echo "   y = Format All Data(Clean Flash)"
echo "   n = Keep Data And Document(Dirty Flash)"
echo ""
echo "========================================================================================="
read -r -p "Your choice {y/n}: " CHOICE
echo "========================================================================================="
echo "Make Sure Your Devices Is On Fastboot Mode"
echo "If It Still Not Detect Please Install Driver"
echo "And Try Again..."
echo "========================================================================================="

DeviceCodeReal=$($FASTBOOT getvar product 2>&1 | grep -i "product:" | awk '{print $2}' | tr -d '\r\n')

if [ "$DeviceCodeReal" = "mars" ]; then
    DeviceCodeReal="star"
fi

if [[ "$DeviceCodeReal" != *"$DeviceCodeRom"* ]]; then
    echo "Device Code Mismatch!"
    echo "Device codename does not match, your device is \"$DeviceCodeReal\". This rom file is for \"$DeviceCodeRom\"."
    read -r -p "Press Enter to exit..."
    exit 1
fi

for f in *.img.zst; do
    [ -e "$f" ] || continue
    par="${f%.img.zst}"
    rm -f "${par}.img" 2>/dev/null
    echo "  Extract ${par} ..."
    if command -v zstd >/dev/null 2>&1; then
        zstd -d "$f" -o "${par}.img"
    else
        echo "zstd not found. Attempting to install via apt..."
        sudo apt-get update
        sudo apt-get install -y zstd
        command -v zstd >/dev/null 2>&1 || {
            echo "Failed to install zstd. Please install it manually."
            exit 1
        }
        zstd -d "$f" -o "${par}.img"
    fi
done

partition_for_image() {
    case "$1" in
        apusys.img) echo "apusys_ab" ;;
        audio_dsp.img) echo "audio_dsp_ab" ;;
        boot.img) echo "boot_ab" ;;
        ccu.img) echo "ccu_ab" ;;
        connsys_bt.img) echo "connsys_bt_ab" ;;
        connsys_gnss.img) echo "connsys_gnss_ab" ;;
        connsys_wifi.img) echo "connsys_wifi_ab" ;;
        cust.img) echo "cust" ;;
        dpm.img) echo "dpm_ab" ;;
        dtbo.img) echo "dtbo_ab" ;;
        gpueb.img) echo "gpueb_ab" ;;
        gz.img) echo "gz_ab" ;;
        init_boot.img) echo "init_boot_ab" ;;
        lk.img) echo "lk_ab" ;;
        logo.img) echo "logo_ab" ;;
        mcf_ota.img) echo "mcf_ota_ab" ;;
        mcupm.img) echo "mcupm_ab" ;;
        md1img.img) echo "md1img_ab" ;;
        mvpu_algo.img) echo "mvpu_algo_ab" ;;
        pi_img.img) echo "pi_img_ab" ;;
        preloader_raw.img) echo "preloader_raw_ab" ;;
        rescue.img) echo "rescue" ;;
        scp.img) echo "scp_ab" ;;
        spmfw.img) echo "spmfw_ab" ;;
        sspm.img) echo "sspm_ab" ;;
        super.img) echo "super" ;;
        tee.img) echo "tee_ab" ;;
        vbmeta.img) echo "vbmeta_ab" ;;
        vbmeta_odm.img) echo "vbmeta_odm_ab" ;;
        vbmeta_product.img) echo "vbmeta_product_ab" ;;
        vbmeta_system.img) echo "vbmeta_system_ab" ;;
        vbmeta_vendor.img) echo "vbmeta_vendor_ab" ;;
        vcp.img) echo "vcp_ab" ;;
        vendor_boot.img) echo "vendor_boot_ab" ;;
        *)
            stem="${1%.img}"
            echo "${stem}_ab"
            ;;
    esac
}

flash_if_present() {
    local img="$1"
    local path=""
    if [ -f "images/$img" ]; then
        path="images/$img"
    elif [ -f "$img" ]; then
        path="$img"
    else
        return 0
    fi
    local partition
    partition=$(partition_for_image "$img")
    echo "  Flash ${partition} <- ${img}"
    $FASTBOOT flash "$partition" "$path"
}

ordered_images=(
    preloader_raw.img
    lk.img
    boot.img
    init_boot.img
    dtbo.img
    vendor_boot.img
    md1img.img
    spmfw.img
    scp.img
    sspm.img
    tee.img
    gz.img
    dpm.img
    ccu.img
    apusys.img
    audio_dsp.img
    connsys_bt.img
    connsys_gnss.img
    connsys_wifi.img
    gpueb.img
    mcf_ota.img
    mcupm.img
    mvpu_algo.img
    pi_img.img
    vcp.img
    logo.img
    cust.img
    rescue.img
    vbmeta_system.img
    vbmeta_vendor.img
    vbmeta_product.img
    vbmeta_odm.img
    vbmeta.img
    super.img
)

for img in "${ordered_images[@]}"; do
    flash_if_present "$img"
done

if [ -d "images" ]; then
    for f in images/*.img; do
        [ -e "$f" ] || continue
        filename=$(basename "$f")
        case "$filename" in
            preloader.img|preloader_a.img|preloader_b.img|preloader1.img|preloader2.img)
                continue
                ;;
        esac
        found=0
        for img in "${ordered_images[@]}"; do
            if [ "$filename" = "$img" ]; then
                found=1
                break
            fi
        done
        [ "$found" -eq 1 ] || flash_if_present "$filename"
    done
fi

if [ "$CHOICE" = "y" ] || [ "$CHOICE" = "Y" ]; then
    echo "  Formatting..."
    $FASTBOOT erase frp >/dev/null 2>&1
    $FASTBOOT erase userdata >/dev/null 2>&1
    $FASTBOOT erase metadata >/dev/null 2>&1
    echo ""
fi

echo "  All done,Your Devices Is Automatic Restart..."
echo "  Now Wait For 10-15 Min For Booting"
echo "  "
echo ""
$FASTBOOT reboot

read -r -p "Press Enter to exit..."
exit 0
