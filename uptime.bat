@echo off
color a

REM ####################
REM Enter your Ping destination Server
set ping_destination=server.local
REM #####################


set timestamp=%DATE:~4,2%.%DATE:~7,2%.%DATE:~-4%
set profile=%userdomain%^\%computername%^\%username%

echo.
echo    ##########################################################
echo    # Checking Uptime on Server - Manuel Test - Do Not Close #
echo    ##########################################################
echo.
echo. CLOSE COMMAND PROMPT WHEN FINISHED.
ECHO. CHECK [C:\%timestamp%_%profile%_uptime.txt] FOR LOGS
echo.

ping %ping_destination% -n 10>C:\%timestamp%_%profile%_uptime.txt

:loop
ping %ping_destination% -n 10>>C:\%timestamp%_%profile%_uptime.txt
echo ###########################################################>> C:\%timestamp%_%profile%_uptime.txt
echo ###########################################################>> C:\%timestamp%_%profile%_uptime.txt
echo #							  #>> C:\%timestamp%_%profile%_uptime.txt
echo #		     -[Log Break for Review]-             #>> C:\%timestamp%_%profile%_uptime.txt
echo #							  #>> C:\%timestamp%_%profile%_uptime.txt
echo #							  #>> C:\%timestamp%_%profile%_uptime.txt
echo. >> C:\%timestamp%_%profile%_uptime.txt
echo. >> C:\%timestamp%_%profile%_uptime.txt
echo. |time |find "current" >> C:\%timestamp%_%profile%_uptime.txt
echo. |date |find "current" >> C:\%timestamp%_%profile%_uptime.txt 
echo. >> C:\%timestamp%_%profile%_uptime.txt
echo. >> C:\%timestamp%_%profile%_uptime.txt
echo #							  #>> C:\%timestamp%_%profile%_uptime.txt
echo #							  #>> C:\%timestamp%_%profile%_uptime.txt
echo #							  #>> C:\%timestamp%_%profile%_uptime.txt
echo #							  #>> C:\%timestamp%_%profile%_uptime.txt
echo ###########################################################>> C:\%timestamp%_%profile%_uptime.txt
echo ###########################################################>> C:\%timestamp%_%profile%_uptime.txt
goto loop
