@echo off

ECHO REM Used to setup Android BLU Phones for Newport Mansion Tour Guides.
ECHO REM Installs apps for initial setup of Newport Mansions via USB.

start cmd /C adb+ install -r "C:\Users\Atomic\Desktop\BluSetup\NewportMansions_v1.30.apk"
start cmd /C adb+ install -r "C:\Users\Atomic\Desktop\BluSetup\ESFileExplorer.apk"
start cmd /C adb+ install -r "C:\Users\Atomic\Desktop\BluSetup\lutey.FTPServer.apk"
start cmd /C adb+ install -r "C:\Users\Atomic\Desktop\BluSetup\What'smyMAC_.apk"
start cmd /C adb+ install -r "C:\Users\Atomic\Desktop\BluSetup\com.promobitech.mobilock.apk"
start cmd /C adb+ install -r "C:\Users\Atomic\Desktop\BluSetup\es.com.leonweb.porcenbat.apk"

ECHO REM Please wait until all other windows are closed before continuing by pressing any key.
pause

ECHO REM Restoring app settings for our applications
start cmd /C adb+ restore "C:\Users\Atomic\Desktop\BluSetup\backup.ab"
timeout 5
start cmd /C adb+ shell input tap 540 1100
pause

ECHO REM Now installation tours onto devices. 
start cmd /C adb+ shell monkey -p net.mobizme.mymacaddress 1

timeout 7

start cmd /C adb+ push "C:\Users\Atomic\Desktop\BluSetup\Android\Android\data\com.actioncharts.smartmensions" "/sdcard/Android/data"

ECHO REM Installation and restoring finished. Please put MAC ID into spreadsheet and wait for tours to install before pressing key. 
pause

start cmd /C adb+ shell input keyevent KEYCODE_APP_SWITCH
timeout 5
start cmd /C adb+ shell input tap 360 1100
timeout 5
start cmd /C adb+ shell monkey -p com.promobitech.mobilock 1
timeout 5
start cmd /C adb+ shell input tap 360 1100
timeout 5
start cmd /C adb+ shell input tap 360 1100
timeout 5
start cmd /C adb+ shell input tap 360 1000
timeout 5
start cmd /C adb+ shell input tap 670 1100
ECHO REM Finished installing BLU phones.
timeout 5
start cmd /C adb+ reboot
timeout 65
start cmd /C adb+ shell input tap 360 1000
timeout 5
start cmd /C adb+ shell input tap 670 1100