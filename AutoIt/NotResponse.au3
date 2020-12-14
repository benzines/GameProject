;NotResponse.au3
#include <MsgBoxConstants.au3>
#include "telegram/telegram-udf-autoit-master/src/Telegram.au3"

$Token = "1210716232:AAGJUndF2wSwxUpNeSKoFVHbpmgLtr3bxBE"
_InitBot($Token)
$ChatID = "1016397345"
$CountDown = 1
While 1
	Local $titleName = "Test"
	;get windows id
	Local $hwnd = WinGetHandle($titleName)

	;activate windows
	If $hwnd Then WinActivate($hwnd)
	
	;While PixelChecksum(400, 400, 50, 50, 1) = PixelChecksum(400, 400, 50, 50, 1)
	
	Sleep($CountDown * 60000)
	While PixelChecksum(210, 120, 10, 10, 1, $hwnd) = PixelChecksum(210, 120, 10, 10, 1, $hwnd)
		_SendMsg($ChatID,"Not Response")
		ConsoleWrite("Not Response" & @LF)
		_CountDown(1)
		ConsoleWrite("After _CountDown" & @LF)
		;Sleep(60000)
	WEnd

Wend
#cs============================================
#how to get chat id#
$msgData = _Polling()
ConsoleWrite("Chat ID = " & $msgData[2] & @CRLF)	
#ce============================================

Func _CountDown($min)
	$time=TimerInit()
	While 1		
		$new = TimerDiff ($time)
		$new = ($min*60*1000)-$new
		$seconds = Round ($new/1000)
		$newMin = Floor ($seconds/60)
		$newSec = Mod ($seconds, 60)
		If $newSec < 10 Then $newSec = "0"&$newSec
		ConsoleWrite($newMin & " : " & $newSec & @LF)
		Sleep(1000)
		If $newMin = 0 And $newSec = 0 Then ExitLoop 
	WEnd
EndFunc