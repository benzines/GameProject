;ColorSearch.au3
#include <Array.au3>
Opt("PixelCoordMode", 2)

Local $WinHandle = WinGetHandle("Test")
Local $ClientPos = WinGetPos($WinHandle)
Local $mouseclick = "Left"
Local $ColorSearch


func Event1()
		ConsoleWrite("in = " &  $ColorSearch)
	$ColorSearch = PixelSearch(221 -5, 161 -5, 221 +5, 161 +5, 2830087, 10, 1, $WinHandle)
	ConsoleWrite("in = 1" &  $ColorSearch)
	if not @error then
	$ColorSearch = PixelSearch(237 -5, 163 -5, 237 +5, 163 +5, 0, 10, 1, $WinHandle)
	ConsoleWrite("in = 2" &  $ColorSearch)
	if not @error then
	$ColorSearch = PixelSearch(217 -5, 167 -5, 217 +5, 167 +5, 0, 10, 1, $WinHandle)
	ConsoleWrite("in = 3" &  $ColorSearch)
	if not @error then
	$ColorSearch = PixelSearch(243 -5, 170 -5, 243 +5, 170 +5, 0, 10, 1, $WinHandle)
	ConsoleWrite("in = 4" &  $ColorSearch)
	if not @error then
	$ColorSearch = PixelSearch(234 -5, 173 -5, 234 +5, 173 +5, 0, 10, 1, $WinHandle)
	ConsoleWrite("in = 5" &  $ColorSearch)
	if not @error then
	$ColorSearch = PixelSearch(225 -5, 175 -5, 225 +5, 175 +5, 0, 10, 1, $WinHandle)
	ConsoleWrite("in = 6" &  $ColorSearch)
	if not @error then
	$ColorSearch = PixelSearch(247 -5, 176 -5, 247 +5, 176 +5, 5128971, 10, 1, $WinHandle)
	ConsoleWrite("in = 7" &  $ColorSearch)
	if not @error then
	$ColorSearch = PixelSearch(221 -5, 179 -5, 221 +5, 179 +5, 0, 10, 1, $WinHandle)
	ConsoleWrite("in = 8" &  $ColorSearch)
	if not @error then
	$ColorSearch = PixelSearch(218 -5, 183 -5, 218 +5, 183 +5, 6840336, 10, 1, $WinHandle)
	ConsoleWrite("in = 9" &  $ColorSearch)
	
	#cs
	Local $titleName = "Test"
	;get windows id
	Local $hwnd = WinGetHandle($titleName)
	PixelChecksum ( 218 -5, 183 -5, 218 +5, 183 +5 ,1 , $hwnd )
	#ce
	if not @error then
			ConsoleWrite("in = 10" &  $ColorSearch & @LF)

		ConsoleWrite("$ColorSearch[0] = " &  $ColorSearch[0] & " $ColorSearch[1] = " &  $ColorSearch[1] & @LF)
		ConsoleWrite("$ColorSearch = " &  $ColorSearch & @LF)

	EndIf
	EndIf
	EndIf
	EndIf
	EndIf
	EndIf
	EndIf
	EndIf
	EndIf
		ConsoleWrite("end = " &  $ColorSearch)
EndFunc

		ConsoleWrite("before WinActivate = " &  $ColorSearch)
WinActivate($WinHandle)
		ConsoleWrite("after WinActivate = " &  $ColorSearch)
Event1()
		ConsoleWrite("after Event1 = " &  $ColorSearch)
