@echo off
color 02

REM setting variables
set dir="C:\Program Files (x86)\Origin Games\Command and Conquer Red Alert II"
set quit=0


echo Starting wasd 
goto start

:ra2
echo Staring Red Alert 2
start "" %dir%\Ra2.exe
REM start "" %dir%\CnCNetYRLauncher.exe


REM Variables
set game=game.exe
set launcher=RA2Launcher.exe
set cnc=clientdx.exe
set log=wasd_search.log
set started=1


REM Search
:search
echo Wating for programs to start
tasklist >> %log%
FindStr "%game%" %dir%\%log% >Nul:
del %dir%\%log%
IF ERRORLEVEL 0 IF NOT ERRORLEVEL 1 goto online
goto search

:online
ping 192.0.2.2 -n 1 -w 10000 > nul
cls
:while
IF %quit% EQU 0 (
	set quit=1
	cls
	echo Game and wasd running, waiting for shutdown. Errorlevel = %ERRORLEVEL%
	tasklist >> %log%
	FindStr "%game%" %dir%\%log% >Nul:
	IF ERRORLEVEL 0 IF NOT ERRORLEVEL 1 set quit=0
	FindStr "%launcher%" %dir%\%log% >Nul:
	IF ERRORLEVEL 0 IF NOT ERRORLEVEL 1 set quit=0
	FindStr "%cnc%" %dir%\%log% >Nul:
	IF ERRORLEVEL 0 IF NOT ERRORLEVEL 1 set quit=0
	del %dir%\%log%
	goto :while
)
echo killing wasd.exe
goto stop

:exit
exit

:stop
taskkill /F /IM wasd.exe
goto exit

:start
Start "" "C:\Program Files (x86)\Origin Games\Command and Conquer Red Alert II\wasd.exe"
goto ra2