WORK_DIR=$(pwd)
source $WORK_DIR/functions.sh
MAIN_FOLDER="$WORK_DIR/build/baserom/images"
rom_os=$(cat $WORK_DIR/bin/ddevice/rom_os.txt)
AndroidVER=$(cat $WORK_DIR/bin/ddevice/androidver.txt)
APKEDITOR="java -jar $WORK_DIR/bin/apktool/apke.jar"
base_rom_code=$(cat $WORK_DIR/bin/ddevice/base_rom_code.txt)
myversion="$(cat $WORK_DIR/Version)"
repS="python3 $WORK_DIR/bin/strRep.py"
build_date=$(TZ=UTC date +"%y%m%d")

#patching
if [[ $rom_os == "MIUI" ]]; then

mods "Adding ROM information to MIUI."
  mkdir -p $WORK_DIR/apk_temp
  isSettingsDIR=$(find "$MAIN_FOLDER" -type d -name "Settings")
  isSettings=$(find "$MAIN_FOLDER" -type f -name "Settings.apk")

  $APKEDITOR d -i $isSettings -o $WORK_DIR/apk_temp/isSettings.apk.out >/dev/null 2>&1
  p1=$(find "$WORK_DIR/apk_temp/isSettings.apk.out" -type f -name MiuiAboutPhoneUtils.smali)

  sed -i "s/MIUI /MIUINT $myversion | /g" $p1
  sed -i "s/MIUI Pad /MIUINT $myversion | /g" $p1
  sed -i "s/MIUI Fold /MIUINT $myversion | /g" $p1

  mods "Rebuilding Settings.apk."
  Settings=$(basename $isSettings)
  $APKEDITOR b -f -i $WORK_DIR/apk_temp/isSettings.apk.out -o $WORK_DIR/apk_temp/final/$Settings >/dev/null 2>&1

  if [ -f "$WORK_DIR/apk_temp/final/$Settings" ]; then
    mods "Cleaning workspace."
    rm -rf $isSettingsDIR/*
    mods "Deploying the patched Settings.apk."
    cp -rf $WORK_DIR/apk_temp/final/$Settings $isSettingsDIR
    mods "Workspace cleaned."

  fi

  rm -rf $WORK_DIR/apk_temp
  mods "MIUI ROM information update completed."
else

mods "Adding ROM information to HyperOS."
  mkdir -p $WORK_DIR/apk_temp
  isSettingsDIR=$(find "$MAIN_FOLDER" -type d -name "Settings")
  isSettings=$(find "$MAIN_FOLDER" -type f -name "Settings.apk")
  $APKEDITOR d -i $isSettings -o $WORK_DIR/apk_temp/isSettings.apk.out >/dev/null 2>&1
  p1=$(find "$WORK_DIR/apk_temp/isSettings.apk.out" -type f -name MiuiAboutPhoneUtils.smali)
  tar1="$WORK_DIR/bin/modfile/UpdateFile/Settings_ROMInformation/getMiuiVersionInCard.ini"
  tar2="$WORK_DIR/bin/modfile/UpdateFile/Settings_ROMInformation/getRoXmsVersion.ini"
  tar3="$WORK_DIR/bin/modfile/UpdateFile/Settings_ROMInformation/getXmsVersion.ini"
  tar4="$WORK_DIR/bin/modfile/UpdateFile/Settings_ROMInformation/getSimpleOSVersion.ini"
  my="$WORK_DIR/build/baserom/images/system/system/build.prop"
  final_version="${base_rom_code%.*}"
  simposcode="${final_version#OS}"

  mods "Updating getMiuiVersionInCard."
  $repS $tar1 $p1
  mods "Updating getRoXmsVersion."
  $repS $tar2 $p1
  mods "Updating getXmsVersion."
  $repS $tar3 $p1
  mods "Updating getSimpleOSVersionCode."
  $repS $tar4 $p1

  mods "Updating build.prop."
  echo "ro.nothings.version=DeadZone $myversion | $final_version" >> $my
  echo "ro.nothings.osversion=${simposcode}.${build_date}" >> $my
  echo "ro.nothings.simposcode=Project DeadZone By MEZO" >> $my

  mods "Rebuilding Settings.apk."
  Settings=$(basename $isSettings)
  $APKEDITOR b -f -i $WORK_DIR/apk_temp/isSettings.apk.out -o $WORK_DIR/apk_temp/final/$Settings >/dev/null 2>&1

  if [ -f "$WORK_DIR/apk_temp/final/$Settings" ]; then
    mods "Cleaning workspace."
    rm -rf $isSettingsDIR/*
    mods "Deploying the patched Settings.apk."
    cp -rf $WORK_DIR/apk_temp/final/$Settings $isSettingsDIR
    mods "Workspace cleaned."

  fi

  rm -rf $WORK_DIR/apk_temp
  mods "HyperOS ROM information update completed."

fi
