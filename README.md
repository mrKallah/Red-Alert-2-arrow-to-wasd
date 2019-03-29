# Red-Alert-2-arrow-to-wasd
Lets you launch the ORIGIN version of Red Alert 2 (CD version not tested) using WASD instead of arrow keys for camera movement

# Install
To install the program download the files as a zip using github and move the

```
wasd.bat
wasd.exe
wasd.vbs
wasd_ra2_launcher.exe
```

to the install directory. 

### Not default directory
If the install directory is not the default (C:\Program Files (x86)\Origin Games\Command and Conquer Red Alert II)
then you must edit wasd.bat

On line 3, there is a 
```
set dir="C:\Program Files (x86)\Origin Games\Command and Conquer Red Alert II"
```

Change the directory for that line to the appropriate one. 

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

