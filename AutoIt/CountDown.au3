#include <GUIConstants.au3>

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("AForm1", 122, 42, 438, 156)
$Label1 = GUICtrlCreateLabel("15:00", 8, 8, 43, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

$time=TimerInit()
While 1
    $nMsg = GUIGetMsg()
    Switch $nMsg
        Case $GUI_EVENT_CLOSE
            Exit
    EndSwitch
    
    $new = TimerDiff ($time)
    $new = (16*60*1000)-$new
    $seconds = Round ($new/1000)
    $newMin = Floor ($seconds/60)
    $newSec = Mod ($seconds, 60)
    If $newSec < 10 Then $newSec = "0"&$newSec
    GUICtrlSetData ($Label1, $newMin&":"&$newSec)
	ConsoleWrite($newMin & " : " & $newSec & @LF)
	Sleep(1000)
WEnd
