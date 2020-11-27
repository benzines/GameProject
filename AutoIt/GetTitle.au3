;GetTitle.au3
#include <ScreenCapture.au3>

Local $titleName =  "G300"
Capture($titleName)

Func Capture($titleName)
	
	;get windows id
	Local $gameHD = WinGetHandle($titleName)

	;activate windows
	If $gameHD Then WinActivate($gameHD)

	;capture & save image
	_ScreenCapture_CaptureWnd(@MyDocumentsDir & "\GDIPlus_Image.jpg", $gameHD)
	
	;open image
	;ShellExecute(@MyDocumentsDir & "\GDIPlus_Image.jpg")

EndFunc
