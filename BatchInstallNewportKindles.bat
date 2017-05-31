@echo off

:: Used to setup Amazon Kindles for Newport Mansion Tour Guides.::

:: Restore app data to the phone (Do this so mobilock doesnt prompt us and also turns off lock) ::
start cmd /C adb+ restore "C:\Users\Guest\Desktop\KindleSetup\backup.ab"
timeout 4
start cmd /C adb+ shell input tap 475 950
timeout 10

:: Turn off parental controls ::
start cmd /C adb+ shell am start -a android.settings.SETTINGS
timeout 6
start cmd /C adb+ shell input tap 300 880
timeout 5
start cmd /C adb+ shell input tap 300 350
timeout 4
start cmd /C adb+ shell input text "5543"
timeout 3
start cmd /C adb+ shell input keyevent 66
timeout 4
start cmd /C adb+ shell input tap 300 215
timeout 4
start cmd /C adb+ shell input text "5543"
timeout 3
start cmd /C adb+ shell input keyevent 66
:: Wait for 40 seconds to clear out applock and other apps popping up ::
pause

timeout 15

:: Turn administrative settings off ::
start cmd /C adb+ shell am start -a android.settings.SETTINGS
timeout 5
start cmd /C adb+ shell input tap 300 950
timeout 3
start cmd /C adb+ shell input tap 300 480
timeout 3
for /l %%x in (1, 1, 6) do (
start cmd /C adb+ shell input keyevent KEYCODE_DPAD_DOWN
timeout 2
start cmd /C adb+ shell input keyevent 66
timeout 2
start cmd /C adb+ shell input tap 475 950
timeout 5
)

pause

:: Connect to the Wifi :: 
start cmd /C adb+ shell am start -a android.settings.SETTINGS
timeout 5
start cmd /C adb+ shell input tap 300 220
timeout 3
start cmd /C adb+ shell input tap 300 125
timeout 3
start cmd /C adb+ shell input tap 560 55
timeout 3
start cmd /C adb+ shell input tap 560 55
timeout 3

:: This code pulls out the Username and Mac IDs from the phones ::
SETLOCAL ENABLEDELAYEDEXPANSION 
:: INSTALL ON ALL ATTACHED DEVICES ::
FOR /F "tokens=1,2 skip=1" %%A IN ('adb devices') DO (
    SET IS_DEV=%%B
	if "!IS_DEV!" == "device" (
	    SET SERIAL=%%A
	    :: Record ID and MAC Address :: 
	    FOR /f "tokens=2 delims=:" %%G IN (
			'adb -s !SERIAL! shell dumpsys user^|findstr UserInfo'
		) DO echo.|set /P =%%G >> userID.txt
		FOR /f "tokens=2" %%G IN (
			'adb -s !SERIAL! shell ip address show wlan0^|find "link/ether"'
		) DO echo %%G >> userID.txt

		:: Set SSID for Specific Kindle :: 
		FOR /f "tokens=2 delims=:" %%G IN (
			'adb -s !SERIAL! shell dumpsys user^|findstr UserInfo'
		) DO (
			SET num=%%G
			SET /a "num=1!num:psnc=! %% 10000"
			
			IF !num!  GEQ 1 IF !num!  LEQ 25 adb -s !SERIAL! shell input text "KIN1A"
			IF !num!  GEQ 26 IF !num!  LEQ 50 adb -s !SERIAL! shell input text "KIN1B"
			IF !num!  GEQ 51 IF !num!  LEQ 75 adb -s !SERIAL! shell input text "KIN2A"
			IF !num!  GEQ 76 IF !num!  LEQ 100 adb -s !SERIAL! shell input text "KIN2B"
			IF !num!  GEQ 101 IF !num!  LEQ 125 adb -s !SERIAL! shell input text "KIN3A"
			IF !num!  GEQ 126 IF !num!  LEQ 150 adb -s !SERIAL! shell input text "KIN3B"
			IF !num!  GEQ 151 IF !num!  LEQ 175 adb -s !SERIAL! shell input text "KIN4A"
			IF !num!  GEQ 176 IF !num!  LEQ 200 adb -s !SERIAL! shell input text "KIN4B"
			IF !num!  GEQ 201 IF !num!  LEQ 225 adb -s !SERIAL! shell input text "KIN5A"
			IF !num!  GEQ 226 IF !num!  LEQ 250 adb -s !SERIAL! shell input text "KIN5B"
			IF !num!  GEQ 251 IF !num!  LEQ 275 adb -s !SERIAL! shell input text "KIN6A"
			IF !num!  GEQ 276 IF !num!  LEQ 300 adb -s !SERIAL! shell input text "KIN6B"
			IF !num!  GEQ 301 IF !num!  LEQ 325 adb -s !SERIAL! shell input text "KIN7A"
			IF !num!  GEQ 326 IF !num!  LEQ 350 adb -s !SERIAL! shell input text "KIN7B"
			IF !num!  GEQ 351 IF !num!  LEQ 375 adb -s !SERIAL! shell input text "KIN8A"
			IF !num!  GEQ 376 IF !num!  LEQ 400 adb -s !SERIAL! shell input text "KIN8B"
		)
	)		
)
ENDLOCAL

:: Enters in SSID and Password
start cmd /C adb+ shell input keyevent KEYCODE_TAB
timeout 2
start cmd /C adb+ shell input keyevent 66
timeout 2
start cmd /C adb+ shell input keyevent KEYCODE_DPAD_DOWN
timeout 1
start cmd /C adb+ shell input keyevent KEYCODE_DPAD_DOWN
timeout 1
start cmd /C adb+ shell input keyevent 66
timeout 2
start cmd /C adb+ shell input tap 300 300
timeout 2
start cmd /C adb+ shell input text "psnc5543"
timeout 2
start cmd /C adb+ shell input keyevent 66
timeout 4
pause

:: Uninstall old newport mansion apps ::

start cmd /C adb+ uninstall com.actioncharts.smartmansions.actionmh 
start cmd /C adb+ uninstall com.actioncharts.smartmansions.actionmh.french
start cmd /C adb+ uninstall com.actioncharts.smartmansions.actionmh.german
start cmd /C adb+ uninstall com.actioncharts.smartmansions.actionmh.spanish
start cmd /C adb+ uninstall com.actioncharts.smartmansions.actionr
start cmd /C adb+ uninstall com.actioncharts.smartmansions.actione
start cmd /C adb+ uninstall com.amazon.edu.consumer.dialog
start cmd /C adb+ uninstall com.dreamori.hidebar


:: Installs apps for initial setup of Newport Mansions via USB ::

start cmd /C adb+ install -r "C:\Users\Guest\Desktop\KindleSetup\NewportMansions_v1.30.apk"
start cmd /C adb+ install -r "C:\Users\Guest\Desktop\KindleSetup\ESFileExplorer.apk"
start cmd /C adb+ install -r "C:\Users\Guest\Desktop\KindleSetup\lutey.FTPServer.apk"

ECHO REM Please wait until other windows close before pressing key
pause

start cmd /C adb+ shell input tap 300 1000

:: Install tours ::
start cmd /C adb+ push "C:\Users\Guest\Desktop\BluSetup\Android\Android\data\com.actioncharts.smartmensions" "/sdcard/Android/data"

pause

:: Clear out the ads on the lock screen. ::
start cmd /C adb+ shell pm clear com.amazon.kindle.kso

:: Turn on Parental Controls ::
start cmd /C adb+ shell am start -a android.settings.SETTINGS
timeout 10
start cmd /C adb+ shell input tap 300 880
timeout 4
start cmd /C adb+ shell input tap 300 215
timeout 4
start cmd /C adb+ shell input text "5543"
timeout 3
start cmd /C adb+ shell input keyevent 66
timeout 9
start cmd /C adb+ shell input tap 300 450
timeout 4
start cmd /C adb+ shell input tap 520 585
timeout 2
start cmd /C adb+ shell input tap 40 55

pause

:: Turn on Mobilock ::
start cmd /C adb+ restore "C:\Users\Guest\Desktop\KindleSetup\backup2.ab"
timeout 6
start cmd /C adb+ shell input tap 475 950
timeout 25
:: Restart ::
start cmd /C adb+ reboot