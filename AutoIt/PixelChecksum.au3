;PixelChecksum.au3

#include <MsgBoxConstants.au3>

Global $i =  0

While 1
			; Wait until something changes in the region 0,0 to 50,50

			; Get initial checksum
			Local $iCheckSum1 = PixelChecksum(400, 400, 50, 50, 1)

			; Wait for the region to change, the region is checked every 100ms to reduce CPU load
			While $iCheckSum1 = PixelChecksum(400, 400, 50, 50, 1)
				Sleep(100)
				
				;ConsoleWrite("Something in the region has changed! 11111 " & $i & @LF)
				;$i = $i + 1
				
			WEnd

			;MsgBox($MB_SYSTEMMODAL, "", "Something in the region has changed! 11111")
			ConsoleWrite("Something in the region has changed! 11111 " & $i & @LF)
			$i = $i + 1




			; Wait until something changes in the region 0,0 to 50,50

			; Get initial checksum
			Local $iCheckSum2 = PixelChecksum(1400, 0, 50, 50, 1)

			; Wait for the region to change, the region is checked every 100ms to reduce CPU load
			While $iCheckSum2 = PixelChecksum(1400, 0, 50, 50, 1)
				Sleep(100)
				;ConsoleWrite("Something in the region has changed! 22222 " & $i & @LF)
				;$i = $i + 1
			WEnd

			;MsgBox($MB_SYSTEMMODAL, "", "Something in the region has changed! 22222")
			ConsoleWrite("Something in the region has changed! 22222 " & $i & @LF)
			$i = $i + 1
	
Wend
