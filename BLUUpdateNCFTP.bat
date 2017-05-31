@echo off

REM This setup is for BLU 1.1-25 Have this batch file and the Blu Setup folder in the same dir.

REM Note: Spacing is important, there should not be a space before or after the "=" (See documentation).
REM DO NOT CHANGE USERNAME, PASSWORD, OR PORT
SET username_newportBLU=psnc
SET password_newportBLU=5543
SET port_newportBLU=3721
SET input_destination_newportBLU="Android\Android\data\com.actioncharts.smartmensions"
SET output_destination_newportBLU="Android/data"

start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.1 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.2 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.3 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.4 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.5 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.6 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.7 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.8 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.9 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.10 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.11 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.12 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.13 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.14 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.15 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.16 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.17 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.18 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.19 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.20 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.21 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.22 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.23 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.24 %output_destination_newportBLU% %input_destination_newportBLU%
start cmd /C ncftpput -u %username_newportBLU% -p %password_newportBLU% -P %port_newportBLU% -R 192.168.0.25 %output_destination_newportBLU% %input_destination_newportBLU%

