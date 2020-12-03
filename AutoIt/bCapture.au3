#include "telegram/telegram-udf-autoit-master/src/Telegram.au3"
;_ScreenCapture_Capture
#include <ScreenCapture.au3>

HotKeySet("{END}","_Exit") ;Press 'END' on your keyboard to force-exit the script

$Token = "1210716232:AAGJUndF2wSwxUpNeSKoFVHbpmgLtr3bxBE" ;Token here
_InitBot($Token)

While 1
    $msgData = _Polling()
	ConsoleWrite("Chat ID " & $msgData[2] & @CRLF)	
    ;ConsoleWrite("Incoming message from " & $msgData[3] & ": " & $msgData[5] & @CRLF)
	If $msgData[5] == "cap" Then
		
		;ConsoleWrite("Incoming message from " & $msgData[3] & ": " & $msgData[5] & @CRLF)
		;_SendMsg($msgData[2],$msgData[5])
		
		$picnum = 0
		_ScreenCapture_Capture("D:\SnapClick\ScreenCapture\" & $picnum + 1 & ".jpg")
		_SendPhoto($msgData[2],"D:\SnapClick\ScreenCapture\1.jpg")
		
	Endif
	
WEnd

Func _Exit()
    Exit 0
EndFunc
#cs
$msgData[0] = Offset of the current update (used to 'switch' to the next update)
$msgData[1] = Message ID
$msgData[2] = Chat ID, use for interact with the user
$msgData[3] = Username of the user
$msgData[4] = First name of the user
$msgData[5] = Text of the message
#ce