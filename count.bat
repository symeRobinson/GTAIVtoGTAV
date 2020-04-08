@echo off
set coow=0
set cooww=0
set wwwww=0
for /r %%x in (*.wdr) do set /a coow+=1
for /r %%x in (*.wtd) do set /a cooww+=1
for /r %%x in (*.wbn) do set /a wwwww+=1
echo You have %coow% wdr
echo You have %cooww% wtd
echo You have %wwwww% wbn
pause