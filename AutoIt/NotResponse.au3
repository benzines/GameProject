;NotResponse.au3
#include <MsgBoxConstants.au3>
#include "telegram/telegram-udf-autoit-master/src/Telegram.au3"

$Token = "1210716232:AAGJUndF2wSwxUpNeSKoFVHbpmgLtr3bxBE"
_InitBot($Token)
$ChatID = "1016397345"

While 1
	Local $titleName = "Test"
	Local $hwnd = WinGetHandle($titleName)
	
	;While PixelChecksum(400, 400, 50, 50, 1) = PixelChecksum(400, 400, 50, 50, 1)
	While PixelChecksum(210, 120, 10, 10, 1, $hwnd) = PixelChecksum(210, 120, 10, 10, 1, $hwnd)
		Sleep(5000)
		_SendMsg($ChatID,"Not Response")
		ConsoleWrite("Not Response" & @LF)
	WEnd
Wend
#cs============================================
#how to get chat id#
$msgData = _Polling()
ConsoleWrite("Chat ID = " & $msgData[2] & @CRLF)	
#ce============================================