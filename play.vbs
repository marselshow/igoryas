Set WMP = WScript.CreateObject("MediaPlayer.MediaPlayer","WMP_")
WMP.Open "background.mp3"
WMP.Play
WScript.Sleep 60000