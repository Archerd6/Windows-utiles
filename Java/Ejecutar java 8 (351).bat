REM Ejecutable que abre el terminal de windows en la ruta en la que está el archivo con java 1.8.0_351 en el Path

set JAVA_HOME=C:\Program Files (x86)\Java\jre1.8.0_351
setx JAVA_HOME "%JAVA_HOME%" /M
set Path=%JAVA_HOME%\bin;%Path%
cls

java -version

cmd /k