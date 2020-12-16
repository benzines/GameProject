;GetTitleByClass.au3

#include <Array.au3>
Dim $array[1]
$iCounter = 1
While 1
;If Not WinExists ( "[CLASS:IEFrame; INSTANCE:" & $iCounter & "]" ) Then ExitLoop
If Not WinExists ( "[CLASS:LDPlayerMainFrame; INSTANCE:" & $iCounter & "]" ) Then ExitLoop
ReDim $array[$iCounter]
;$array[$iCounter-1] = WinGetTitle ( "[CLASS:IEFrame; INSTANCE:" & $iCounter & "]" )
$array[$iCounter-1] = WinGetTitle ( "[CLASS:LDPlayerMainFrame; INSTANCE:" & $iCounter & "]" )
$iCounter += 1
WEnd
_ArrayDisplay ( $array )
Exit
