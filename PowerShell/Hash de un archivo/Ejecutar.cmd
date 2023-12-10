@echo off

powershell -command "get-filehash -Algorithm SHA256 .\Input\* | Format-List"

cmd /k