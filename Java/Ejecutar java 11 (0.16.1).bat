REM Ejecutable que abre el terminal de windows en la ruta en la que está el archivo con java 11.0.16.1 en el Path

set JAVA_HOME=C:\Program Files\Java\jdk-11.0.16.1
setx JAVA_HOME "%JAVA_HOME%" /M
set Path=%JAVA_HOME%\bin;%Path%
cls

java -version

cmd /k