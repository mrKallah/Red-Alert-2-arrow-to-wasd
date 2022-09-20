# Red-Alert-2-arrow-to-wasd
Lets you launch the ORIGIN version of Red Alert 2 (CD version not tested) using WASD instead of arrow keys for camera movement

This was originally written by me for the cd version and has now been updated to work with the ORIGIN version. I cannot find my cd version of the game and thus testing will not be possible. Feedback will be helpfull if you have the CD version and you can test it.

# Install

It is required to download this dependency
https://www.microsoft.com/en-us/download/details.aspx?id=52685

To install the program download the files as a zip using github and move the

```
wasd.bat
wasd.exe
wasd.vbs
wasd_ra2_launcher.exe
```

to the install directory of Red Alert 2. 

Avoid having to rightclick and run as administrator by right clicking the wasd_ra2_launcher.exe, pressing compatability and tick the "Run this program as an administrator" box. See image below for illustration.

![Administrator privelages](https://i.gyazo.com/ed390b81a97336b908b832cd812e7e81.png)

### Not default directory
If the install directory is not the default (C:\Program Files (x86)\Origin Games\Command and Conquer Red Alert II)
then you must edit wasd.bat

On line 3, there is a 
```
set dir="C:\Program Files (x86)\Origin Games\Command and Conquer Red Alert II"
```

Change the directory for that line to the appropriate one. 

### Changing other keybinds
In ./src/ there is a wasd.ahk which contain the ahk script used to rebind keys. If this is changed and recompiled into a wasd.exe file then the wasd.exe file that comes with this project can be replaced by this new file. Any exe called wasd.exe will run when the script starts and so technically it doesnt have to be a ahk script, however it will only automatically shut down any wasd.exe file that show up in the taskmanager as wasd.exe. 

### Using CnCNet
If using the cncnetclient you must change the lines
```
start "" %dir%\Ra2.exe
REM start "" %dir%\CnCNetYRLauncher.exe
```
to
```
REM start "" %dir%\Ra2.exe
start "" %dir%\CnCNetYRLauncher.exe
```

### Other mods that use launchers
If the launcher is not supported, it can be added by adding a new variable under the REM Variables section with
```
set newlauncher=newlauncer.exe
```
and in :while you must add 
```
FindStr "%newlauncher%" %dir%\%log% >Nul:
IF ERRORLEVEL 0 IF NOT ERRORLEVEL 1 set quit=0
```
below the other FindStr statements

# How to use
Run the wasd_ra2_launcher.exe as an administrator

# Sources and use
If you want to change, adapt or modify the sources provided in this project then I hereby grant anyone the permission to do so as long as I am sourced properly

# DISCLAIMER
This program modifies a file called wasd_search.log in the install directory of Red Alert 2, any other program that use the same name would not work as intended when this is running. 

I am not responsible for anything breaking if you install this, its tested on two systems of Windows 10 and it works on both. 
