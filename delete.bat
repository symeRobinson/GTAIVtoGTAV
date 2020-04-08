@echo off
set mypath=%cd%
@echo off
setlocal enabledelayedexpansion
set mypath=%cd%

del "%mypath%\files\*.wdr" /s /f /q
del "%mypath%\files\*.wdd" /s /f /q
del "%mypath%\files\*.wad" /s /f /q
del "%mypath%\files\*.wbd" /s /f /q
del "%mypath%\files\*.wbn" /s /f /q
del "%mypath%\files\*.wtd" /s /f /q
del "%mypath%\files\*.wpl" /s /f /q
del "%mypath%\files\*.wtf" /s /f /q
del "%mypath%\files\*.wft" /s /f /q
del "%mypath%\files\*.wnv" /s /f /q

pause