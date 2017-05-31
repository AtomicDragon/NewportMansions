@echo off

REM This setup is for individual BLU phone. Used for testing. Have this batch file and the Blu Setup folder in the same dir.

SET username_newportBLU=psnc
SET password_newportBLU=5543
SET input_destination_newportBLU="Android\Android\data\com.actioncharts.smartmensions"
SET output_destination_newportBLU="Android/data"

start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P 3721 -R 192.168.0.24 %output_destination_newportBLU% %input_destination_newportBLU%

