#include "telegram/telegram-udf-autoit-master/src/Telegram.au3"
;bCaptureForm.au3
#include <ScreenCapture.au3>

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("bCapture", 211, 183, 192, 124)
$Input1 = GUICtrlCreateInput("a", 80, 8, 121, 21)
$Input2 = GUICtrlCreateInput("b", 80, 32, 121, 21)
$Input3 = GUICtrlCreateInput("c", 80, 56, 121, 21)
$Input4 = GUICtrlCreateInput("d", 80, 80, 121, 21)
$Input5 = GUICtrlCreateInput("e", 80, 104, 121, 21)
$Input6 = GUICtrlCreateInput("f", 80, 128, 121, 21)
$Input7 = GUICtrlCreateInput("g", 80, 152, 121, 21)
$Checkbox1 = GUICtrlCreateCheckbox("Screen 1", 8, 8, 65, 17)
$Checkbox2 = GUICtrlCreateCheckbox("Screen 2", 8, 32, 65, 17)
$Checkbox3 = GUICtrlCreateCheckbox("Screen 3", 8, 56, 65, 17)
$Checkbox4 = GUICtrlCreateCheckbox("Screen 4", 8, 80, 65, 17)
$Checkbox5 = GUICtrlCreateCheckbox("Screen 5", 8, 104, 65, 17)
$Checkbox6 = GUICtrlCreateCheckbox("Screen 6", 8, 128, 65, 17)
$Checkbox7 = GUICtrlCreateCheckbox("Screen 7", 8, 152, 65, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Global $Token
$Token = "1210716232:AAGJUndF2wSwxUpNeSKoFVHbpmgLtr3bxBE" ;Token here
_InitBot($Token)

Local  $array[0][2]
;_ArrayAdd($array,'1|2')
_ArrayAdd($array,_IsChecked($Checkbox1) & '|' & GUICtrlRead($Input1))
_ArrayAdd($array,_IsChecked($Checkbox2) & '|' & GUICtrlRead($Input2))
_ArrayAdd($array,_IsChecked($Checkbox3) & '|' & GUICtrlRead($Input3))
_ArrayAdd($array,_IsChecked($Checkbox4) & '|' & GUICtrlRead($Input4))
_ArrayAdd($array,_IsChecked($Checkbox5) & '|' & GUICtrlRead($Input5))
_ArrayAdd($array,_IsChecked($Checkbox6) & '|' & GUICtrlRead($Input6))
_ArrayAdd($array,_IsChecked($Checkbox7) & '|' & GUICtrlRead($Input7))
_ArrayDisplay($array)
While 1
    $msgData = _Polling()
    ;ConsoleWrite("Incoming message from " & $msgData[3] & ": " & $msgData[5] & @CRLF)
	If $msgData[5] == "cap" Then
		;Incoming message from Username: msg
		;Incoming message from Kitsbenz: cap
		;ConsoleWrite("Incoming message from " & $msgData[3] & ": " & $msgData[5] & @CRLF)
		;_SendMsg($msgData[2],$msgData[5])

		;ConsoleWrite(_IsChecked($Checkbox1))
		;ConsoleWrite(GUICtrlRead($Input1))
		;$picnum = 0
		;_ScreenCapture_Capture("D:\SnapClick\ScreenCapture\" & $picnum + 1 & ".jpg")
		;_SendPhoto($msgData[2],"D:\SnapClick\ScreenCapture\1.jpg")
		
	Endif
	
WEnd

While 0
	$nMsg = GUIGetMsg()
	Switch $nMsg
		
		Case $GUI_EVENT_CLOSE
			Exit
			
		Case $btnStart
			ConsoleWrite("Start")
			Local $arr[5]
			$arr[0] = GUICtrlRead($Input1)
			$arr[1] = GUICtrlRead($Input2)
			$arr[2] = GUICtrlRead($Input3)
			$arr[3] = GUICtrlRead($Input4)
			$arr[4] = GUICtrlRead($Input5)
			$iMax = UBound($arr); get array size
			For $i = 0 to $iMax - 1; subtract 1 from size to prevent an out of bounds error
				;ConsoleWrite($arr[$i] & @LF)
				;xxx
				Local $titleName =  $arr[$i]
				Capture($titleName)
				;xxx
			Next
			
		Case $btnStop
			ConsoleWrite("Stop")

	EndSwitch
WEnd

Func Capture($titleName)
	
	ConsoleWrite("Capture 1 " &  $titleName & @LF)
	ConsoleWrite("Capture 2 " &  @MyDocumentsDir & @LF)
	
	;get windows id
	Local $gameHD = WinGetHandle($titleName)

	;activate windows
	If $gameHD Then WinActivate($gameHD)

	;capture & save image
	;_ScreenCapture_CaptureWnd(@MyDocumentsDir & "\GDIPlus_Image.jpg", $gameHD)
	Local $path = @MyDocumentsDir & "\" & $titleName & ".jpg"
	_ScreenCapture_CaptureWnd($path , $gameHD)
	;TelegramSendPhoto($path)
	
	;open image
	;ShellExecute(@MyDocumentsDir & "\GDIPlus_Image.jpg")

EndFunc

Func TelegramSendPhoto($path)
    $msgData = _Polling()
    ;ConsoleWrite("Incoming message from " & $msgData[3] & ": " & $msgData[5] & @CRLF)
	If $msgData[5] == "cap" Then
		
		;ConsoleWrite("Incoming message from " & $msgData[3] & ": " & $msgData[5] & @CRLF)
		;_SendMsg($msgData[2],$msgData[5])
		
		$picnum = 0
		;_ScreenCapture_Capture("D:\SnapClick\ScreenCapture\" & $picnum + 1 & ".jpg")
		;_SendPhoto($msgData[2],"D:\SnapClick\ScreenCapture\1.jpg")
		_SendPhoto($msgData[2], $path)
		
	Endif
EndFunc

Func _IsChecked($idControlID)
    Return BitAND(GUICtrlRead($idControlID), $GUI_CHECKED) = $GUI_CHECKED
EndFunc   ;==>_IsChecked

