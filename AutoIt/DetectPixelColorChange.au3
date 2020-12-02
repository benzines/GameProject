;DetectPixelColorChange.au3

HotKeySet("{esc}","quit")
$pix=PixelGetColor(500,500)
$quit=False
Do
    
sleep(500);check every half a second
$pix2=PixelGetColor(500,500)
if $pix <> $pix2 then 
MsgBox(0,"", "That Pixel Has Changed",0)
$pix=PixelGetColor(500,500)
EndIf
until $quit=true

func quit()
    $quit=True
MsgBox(0,"","Bye",0)
EndFunc
