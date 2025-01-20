@echo off 
@echo 
@echo.
@echo Cache Cleaner by Sagar_Biswas
set /p confirm=Delete All Temporary Files? (Y/n) 
if /I "%confirm%"=="" set confirm=Y
if /I "%confirm%" NEQ "Y" goto end

color 2

echo Deleting temporary files...
Del /S /F /Q %temp% 2>nul
Del /S /F /Q %Windir%\Temp 2>nul
Del /S /F /Q C:\WINDOWS\Prefetch 2>nul
Del /S /F /Q "%USERPROFILE%\AppData\Local\Temp" 2>nul

@echo.
@echo All Temporary Files Successfully Deleted!
@echo. 

:end
pause