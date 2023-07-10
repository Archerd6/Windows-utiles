REM Ejecutable que muestra la IP publica

powershell -Command "nslookup myip.opendns.com resolver1.opendns.com | Select-String 'Address:' | Select-Object -Last 1"

cmd /k