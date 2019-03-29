Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c WASD.bat"
oShell.Run strArgs, 0, false