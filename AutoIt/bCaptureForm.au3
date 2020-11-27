;bCaptureForm.au3
#include <ScreenCapture.au3>

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("bCapture", 290, 137, 192, 124)
$Input1 = GUICtrlCreateInput("G30032", 80, 8, 121, 21)
$Input2 = GUICtrlCreateInput("CabalM_2", 80, 32, 121, 21)
$Input3 = GUICtrlCreateInput("CabalM_3", 80, 56, 121, 21)
$Input4 = GUICtrlCreateInput("CabalM_4", 80, 80, 121, 21)
$Input5 = GUICtrlCreateInput("CabalM_5", 80, 104, 121, 21)
$btnStart = GUICtrlCreateButton("Start", 208, 8, 75, 57)
$btnStop = GUICtrlCreateButton("Stop", 208, 72, 75, 57)
$Checkbox1 = GUICtrlCreateCheckbox("Screen 1", 8, 8, 65, 17)
$Checkbox2 = GUICtrlCreateCheckbox("Screen 2", 8, 32, 65, 17)
$Checkbox3 = GUICtrlCreateCheckbox("Screen 3", 8, 56, 65, 17)
$Checkbox4 = GUICtrlCreateCheckbox("Screen 4", 8, 80, 65, 17)
$Checkbox5 = GUICtrlCreateCheckbox("Screen 5", 8, 104, 65, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
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
	_ScreenCapture_CaptureWnd(@MyDocumentsDir & "\" & $titleName & ".jpg" , $gameHD)
	
	;open image
	;ShellExecute(@MyDocumentsDir & "\GDIPlus_Image.jpg")

EndFunc
