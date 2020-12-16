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
		
		;get windows id
		$titleName = "CabalM_2"
		Local $gameHD = WinGetHandle($titleName)
		
		if @error Then
			_SendMsg($msgData[2], "Title : " &  $titleName & " | Title Not Match")
		Else 
			;activate windows
			If $gameHD Then WinActivate($gameHD)

				;capture & save image
				;_ScreenCapture_CaptureWnd(@MyDocumentsDir & "\GDIPlus_Image.jpg", $gameHD)
				Local $path = @MyDocumentsDir & "\" & $titleName & ".jpg"
				_ScreenCapture_CaptureWnd($path , $gameHD)
				_SendPhoto($msgData[2], $path)
			
			;$picnum = 0
			;_ScreenCapture_Capture("D:\SnapClick\ScreenCapture\" & $picnum + 1 & ".jpg")
			;_SendPhoto($msgData[2],"D:\SnapClick\ScreenCapture\1.jpg")
		EndIf
		
		;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		
		
		;ConsoleWrite("Incoming message from " & $msgData[3] & ": " & $msgData[5] & @CRLF)
		;_SendMsg($msgData[2],$msgData[5])
		
		;get windows id
		$titleName = "CabalM_6"
		Local $gameHD = WinGetHandle($titleName)
		
		if @error Then
			_SendMsg($msgData[2], "Title : " &  $titleName & " | Title Not Match")
		Else 
			;activate windows
			If $gameHD Then WinActivate($gameHD)
			Sleep(5000)
				;capture & save image
				;_ScreenCapture_CaptureWnd(@MyDocumentsDir & "\GDIPlus_Image.jpg", $gameHD)
				Local $path = @MyDocumentsDir & "\" & $titleName & ".jpg"
				_ScreenCapture_CaptureWnd($path , $gameHD)
				_SendPhoto($msgData[2], $path)
			
			;$picnum = 0
			;_ScreenCapture_Capture("D:\SnapClick\ScreenCapture\" & $picnum + 1 & ".jpg")
			;_SendPhoto($msgData[2],"D:\SnapClick\ScreenCapture\1.jpg")
		EndIf
		
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