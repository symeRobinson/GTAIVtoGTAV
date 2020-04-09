@echo off
setlocal enabledelayedexpansion
set mypath=%cd%
set count=0
set othercount=0

for /r %%x in (*.wdr) do set /a count+=1
for /r %%x in (*.wbn) do set /a count+=1
for /r %%x in (*.wtd) do set /a count+=1
for /r %%x in (*.wbd) do set /a count+=1
for /r %%x in (*.wdd) do set /a count+=1
for /r %%x in (*.wft) do set /a count+=1

for /r %%v in (*.wbd) do set /a othercount+=1 & (
	C:\Users\%USERNAME%\AppData\Local\FiveM\FiveM.app\fivem.com formats:convert %%v --game=ny
	rem ping 127.255.255.255 -n 1 -w 200> nul
	echo Converted %%v
	echo !othercount! out of %count%
)
for /r %%v in (*.wdr) do set /a othercount+=1 & (
	C:\Users\%USERNAME%\AppData\Local\FiveM\FiveM.app\fivem.com formats:convert %%v --game=ny
	rem ping 127.255.255.255 -n 1 -w 200> nul
	echo Converted %%v
	echo !othercount! out of %count%
)
for /r %%v in (*.wdd) do set /a othercount+=1 & (
	C:\Users\%USERNAME%\AppData\Local\FiveM\FiveM.app\fivem.com formats:convert %%v --game=ny
	rem ping 127.255.255.255 -n 1 -w 200> nul
	echo Converted %%v
	echo !othercount! out of %count%
)
for /r %%v in (*.wbn) do set /a othercount+=1 & (
	C:\Users\%USERNAME%\AppData\Local\FiveM\FiveM.app\fivem.com formats:convert %%v --game=ny
	rem ping 127.255.255.255 -n 1 -w 200> nul
	echo Converted %%v
	echo !othercount! out of %count%
)
for /r %%v in (*.wtd) do set /a othercount+=1 & (
	C:\Users\%USERNAME%\AppData\Local\FiveM\FiveM.app\fivem.com formats:convert %%v --game=ny
	rem ping 127.255.255.255 -n 1 -w 200> nul
	echo Converted %%v
	echo !othercount! out of %count%
)
for /r %%v in (*.wft) do set /a othercount+=1 & (
	C:\Users\%USERNAME%\AppData\Local\FiveM\FiveM.app\fivem.com formats:convert %%v --game=ny
	rem ping 127.255.255.255 -n 1 -w 200> nul
	echo Converted %%v
	echo !othercount! out of %count%
)
for /r %%v in (*.wtf) do set /a othercount+=1 & (
	C:\Users\%USERNAME%\AppData\Local\FiveM\FiveM.app\fivem.com formats:convert %%v --game=ny
	rem ping 127.255.255.255 -n 1 -w 200> nul
	echo Converted %%v
	echo !othercount! out of %count%
)
for /r %%v in (*.wpl) do set /a othercount+=1 & (
	C:\Users\%USERNAME%\AppData\Local\FiveM\FiveM.app\fivem.com formats:convert %%v --game=ny
	rem ping 127.255.255.255 -n 1 -w 200> nul
	echo Converted %%v
	echo !othercount! out of %count%
)
PING -n 5 127.0.0.1>nul
echo "Finished with WTD files"
echo "Press any key to begin deleting old files"
pause
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
echo "Finished!"
pause
