@echo off

REM Ejecutable que muestra la IP pública

nslookup myip.opendns.com resolver1.opendns.com > nslookup_output.txt 2>&1

for /f "tokens=2 delims=: " %%a in ('type nslookup_output.txt ^| findstr /i "Address"') do (
    set "ip=%%a"
)
echo %ip%

del nslookup_output.txt

cmd /k
