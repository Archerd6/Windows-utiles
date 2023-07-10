REM Ejecutable que abre el terminal de windows en la ruta en la que está el archivo con el kit de desarrollo de java 17 en el Path

set JAVA_HOME=C:\Program Files\Java\jdk-17
setx JAVA_HOME "%JAVA_HOME%" /M
set Path=%JAVA_HOME%\bin;%Path%
cls

java -version

cmd /k