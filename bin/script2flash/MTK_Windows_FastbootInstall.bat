@echo off&setlocal enabledelayedexpansion
title Welcome to DeadZone MediaTek ROM Installer
cd %~dp0
set fastboot=META-INF\fastboot
set /p DeviceCodeRom=<META-INF\Data\DeviceCode
echo.
echo.[i] - Read this information before flashing
echo.
echo.1. Our ROM,like most other custom ROMS,requires an unlocked bootloader!If your device is NOT,please close this window.
echo.2. You have to choose carefully else you will LOST ALL DATA!
echo.3. THIS IS DeadZone ROM!!!If you see someone sell or install this ROM for fees,please CONTACT MEZO NOW.
echo.4. We will NOT take responsibility if you brick your phone or lose all data while installing this ROM.
echo.5. Make sure you have downloaded the exact build for your device, else you might get bricked.
echo.
echo.[i] - If you have read and agreed to all of the above,press any key to start the installation.
echo.[i] - Else, exit this window.
pause >NUL 2>NUL
echo.=========================================================================================
echo. Please Choose Format Option Before Flash ROM
echo.
echo.   y = Format All Data(Clean Flash)
echo.   n = Keep Data And Document(Dirty Flash)
echo.
echo.=========================================================================================
set /p CHOICE="Your choice {y/n}: "
echo.=========================================================================================
echo.Make Sure Your Devices Is On Fastboot Mode
echo.If It Still Not Detect Please Install Driver
echo.And Try Again...
echo.=========================================================================================

for /f "tokens=2" %%a in ('!fastboot! getvar product 2^>^&1 ^| findstr /l /b /c:"product:"') do set DeviceCodeReal=%%a

if "!DeviceCodeReal!" == "mars" set DeviceCodeReal=star

echo !DeviceCodeReal! | findstr /b /c:"!DeviceCodeRom!" >nul 2>nul
if errorlevel 1 (
    title Device Code Mismatch! & echo. Device codename does not match, your device is "!DeviceCodeReal!". This rom file is for "!DeviceCodeRom!". & pause & exit /B 1
)

for /f %%i in ('dir /b *.img.zst') do (
    set par=%%i
    set par=!par:.img.zst=!
    del /s /q !par!.img >nul 2>nul
    echo.  Extract !par! ...
    META-INF\zstd -d !par!.img.zst -o !par!.img
)

call :flash_if_present preloader_raw.img
call :flash_if_present lk.img
call :flash_if_present boot.img
call :flash_if_present init_boot.img
call :flash_if_present dtbo.img
call :flash_if_present vendor_boot.img
call :flash_if_present md1img.img
call :flash_if_present spmfw.img
call :flash_if_present scp.img
call :flash_if_present sspm.img
call :flash_if_present tee.img
call :flash_if_present gz.img
call :flash_if_present dpm.img
call :flash_if_present ccu.img
call :flash_if_present apusys.img
call :flash_if_present audio_dsp.img
call :flash_if_present connsys_bt.img
call :flash_if_present connsys_gnss.img
call :flash_if_present connsys_wifi.img
call :flash_if_present gpueb.img
call :flash_if_present mcf_ota.img
call :flash_if_present mcupm.img
call :flash_if_present mvpu_algo.img
call :flash_if_present pi_img.img
call :flash_if_present vcp.img
call :flash_if_present logo.img
call :flash_if_present cust.img
call :flash_if_present rescue.img
call :flash_if_present vbmeta_system.img
call :flash_if_present vbmeta_vendor.img
call :flash_if_present vbmeta_product.img
call :flash_if_present vbmeta_odm.img
call :flash_if_present vbmeta.img
call :flash_if_present super.img

for %%f in (images\*.img) do (
    if exist "%%f" (
        set filename=%%~nxf
        if /I not "!filename!"=="preloader.img" if /I not "!filename!"=="preloader_a.img" if /I not "!filename!"=="preloader_b.img" if /I not "!filename!"=="preloader1.img" if /I not "!filename!"=="preloader2.img" (
            call :maybe_flash_extra "!filename!"
        )
    )
)

if /I "%CHOICE%" == "y" (
    echo.  Formatting...
    !fastboot! erase frp >NUL 2>NUL
    !fastboot! erase userdata >NUL 2>NUL
    !fastboot! erase metadata >NUL 2>NUL
    echo.
)

echo.  All done,Your Devices Is Automatic Restart...
echo.  Now Wait For 10-15 Min For Booting
echo.
!fastboot! reboot
pause
exit /B 0

:flash_if_present
set img=%~1
set file_path=
if exist "images\%img%" set file_path=images\%img%
if not defined file_path if exist "%img%" set file_path=%img%
if not defined file_path exit /B 0
call :partition_for_image "%img%"
echo.  Flash !partition! ^<- %img%
!fastboot! flash !partition! "!file_path!"
exit /B 0

:maybe_flash_extra
set img=%~1
for %%k in (preloader_raw.img lk.img boot.img init_boot.img dtbo.img vendor_boot.img md1img.img spmfw.img scp.img sspm.img tee.img gz.img dpm.img ccu.img apusys.img audio_dsp.img connsys_bt.img connsys_gnss.img connsys_wifi.img gpueb.img mcf_ota.img mcupm.img mvpu_algo.img pi_img.img vcp.img logo.img cust.img rescue.img vbmeta_system.img vbmeta_vendor.img vbmeta_product.img vbmeta_odm.img vbmeta.img super.img) do (
    if /I "%%k"=="!img!" exit /B 0
)
call :flash_if_present "!img!"
exit /B 0

:partition_for_image
set partition=
if /I "%~1"=="apusys.img" set partition=apusys_ab
if /I "%~1"=="audio_dsp.img" set partition=audio_dsp_ab
if /I "%~1"=="boot.img" set partition=boot_ab
if /I "%~1"=="ccu.img" set partition=ccu_ab
if /I "%~1"=="connsys_bt.img" set partition=connsys_bt_ab
if /I "%~1"=="connsys_gnss.img" set partition=connsys_gnss_ab
if /I "%~1"=="connsys_wifi.img" set partition=connsys_wifi_ab
if /I "%~1"=="cust.img" set partition=cust
if /I "%~1"=="dpm.img" set partition=dpm_ab
if /I "%~1"=="dtbo.img" set partition=dtbo_ab
if /I "%~1"=="gpueb.img" set partition=gpueb_ab
if /I "%~1"=="gz.img" set partition=gz_ab
if /I "%~1"=="init_boot.img" set partition=init_boot_ab
if /I "%~1"=="lk.img" set partition=lk_ab
if /I "%~1"=="logo.img" set partition=logo_ab
if /I "%~1"=="mcf_ota.img" set partition=mcf_ota_ab
if /I "%~1"=="mcupm.img" set partition=mcupm_ab
if /I "%~1"=="md1img.img" set partition=md1img_ab
if /I "%~1"=="mvpu_algo.img" set partition=mvpu_algo_ab
if /I "%~1"=="pi_img.img" set partition=pi_img_ab
if /I "%~1"=="preloader_raw.img" set partition=preloader_raw_ab
if /I "%~1"=="rescue.img" set partition=rescue
if /I "%~1"=="scp.img" set partition=scp_ab
if /I "%~1"=="spmfw.img" set partition=spmfw_ab
if /I "%~1"=="sspm.img" set partition=sspm_ab
if /I "%~1"=="super.img" set partition=super
if /I "%~1"=="tee.img" set partition=tee_ab
if /I "%~1"=="vbmeta.img" set partition=vbmeta_ab
if /I "%~1"=="vbmeta_odm.img" set partition=vbmeta_odm_ab
if /I "%~1"=="vbmeta_product.img" set partition=vbmeta_product_ab
if /I "%~1"=="vbmeta_system.img" set partition=vbmeta_system_ab
if /I "%~1"=="vbmeta_vendor.img" set partition=vbmeta_vendor_ab
if /I "%~1"=="vcp.img" set partition=vcp_ab
if /I "%~1"=="vendor_boot.img" set partition=vendor_boot_ab
if not defined partition (
    set stem=%~n1
    set partition=!stem!_ab
)
exit /B 0
