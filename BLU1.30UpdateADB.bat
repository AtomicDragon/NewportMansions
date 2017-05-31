:: Updates BLU phones with finger and secuity settings and updates to 1.30 ::
start cmd /C adb+ install -r "C:\Users\Atomic\Desktop\BluSetup\NewportMansions_v1.30.apk"
pause

start cmd /C adb+ push "C:\Users\Atomic\Desktop\BluSetup\Android\Android\data\com.actioncharts.smartmensions\Rosecliff" "/sdcard/Android/data/com.actioncharts.smartmensions"
pause

:: Exit Mobilock ::
start cmd /C adb+ shell input keyevent KEYCODE_APP_SWITCH
timeout 5
start cmd /C adb+ shell input tap 360 1100
timeout 5
start cmd /C adb+ shell input keyevent KEYCODE_BACK
timeout 5
start cmd /C adb+ shell input tap 660 100
timeout 3
start cmd /C adb+ shell input tap 500 200
timeout 3
start cmd /C adb+ shell input text "5543"
timeout 3
start cmd /C adb+ shell input tap 500 760
timeout 5

:: Enter Settings ::
start cmd /C adb+ shell input tap 300 800
timeout 5
start cmd /C adb+ shell input swipe 500 1150 500 150
timeout 5
start cmd /C adb+ shell input tap 300 440
timeout 3
start cmd /C adb+ shell input tap 640 560
timeout 3
start cmd /C adb+ shell am start -a android.settings.SECURITY_SETTINGS
timeout 5
start cmd /C adb+ shell input swipe 500 1150 500 150
timeout 3
start cmd /C adb+ shell input tap 300 1010
timeout 3
start cmd /C adb+ shell input tap 640 215
timeout 3

:: Exit Settings :: 
start cmd /C adb+ shell input keyevent KEYCODE_HOME
timeout 5
start cmd /C adb+ shell input keyevent KEYCODE_APP_SWITCH
timeout 5
start cmd /C adb+ shell input tap 360 1100
timeout 5

:: Pin Newport Mansions :: 
start cmd /C adb+ shell input keyevent KEYCODE_DPAD_DOWN
timeout 3
start cmd /C adb+ shell input keyevent KEYCODE_ENTER
timeout 15
start cmd /C adb+ shell input keyevent KEYCODE_APP_SWITCH
timeout 5
start cmd /C adb+ shell input tap 585 750
timeout 5
start cmd /C adb+ shell input tap 555 1075
