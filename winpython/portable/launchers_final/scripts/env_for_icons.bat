@echo off
call "%~dp0env.bat"
FOR /F "delims=" %%i IN ('""%WINPYDIR%\python.exe" "%~dp0WinpythonIni.py" %* "') DO  set winpythontoexec=%%i
%winpythontoexec%set winpythontoexec=

rem Change of directory only if we are in a launcher directory
if  "%__CD__%scripts\"=="%~dp0"  cd/D %WINPYWORKDIR1%
if  "%__CD__%"=="%~dp0"          cd/D %WINPYWORKDIR1%
