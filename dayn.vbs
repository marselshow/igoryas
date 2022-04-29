Set objWshShell = WScript.CreateObject("Wscript.Shell")
Set WshNetwork = CreateObject("WScript.Network")

if WshNetwork.UserName = "Администратор" then
 strPath2DestWallpaper = ""
else 
 strPath2DestWallpaper = "./1.bmp"
end if

do while 1<2 
 objWshShell.RegWrite "HKEY_CURRENT_USER\Control Panel\Desktop\Wallpaper", strPath2DestWallpaper, "REG_SZ"
 objWshShell.Run """%SystemRoot%\System32\RUNDLL32.EXE"" user32.dll,UpdatePerUserSystemParameters", 0, True
 wscript.sleep 5400000
loop