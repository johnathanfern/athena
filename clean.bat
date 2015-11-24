@echo off
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%%MyDate:~4,2%%MyDate:~6,2%
set expire=20151201

if %today% GEQ %expire% (
	taskkill /F /IM WINWORD.exe
	taskkill /F /IM x.bat
	del "C:\Users\Public\x.bat"
	del "%~f0"
) else (
	cmd /K "C:\users\public\x.bat"
)
