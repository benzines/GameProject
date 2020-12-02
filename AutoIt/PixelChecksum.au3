;PixelChecksum.au3

#include <MsgBoxConstants.au3>



While 1
			; Wait until something changes in the region 0,0 to 50,50

			; Get initial checksum
			Local $iCheckSum = PixelChecksum(400, 400, 50, 50)

			; Wait for the region to change, the region is checked every 100ms to reduce CPU load
			While $iCheckSum = PixelChecksum(400, 400, 50, 50)
				Sleep(100)
			WEnd

			;MsgBox($MB_SYSTEMMODAL, "", "Something in the region has changed! 11111")
			ConsoleWrite("Something in the region has changed! 11111" & @LF)




			; Wait until something changes in the region 0,0 to 50,50

			; Get initial checksum
			Local $iCheckSum = PixelChecksum(1400, 0, 50, 50)

			; Wait for the region to change, the region is checked every 100ms to reduce CPU load
			While $iCheckSum = PixelChecksum(1400, 0, 50, 50)
				Sleep(100)
			WEnd

			;MsgBox($MB_SYSTEMMODAL, "", "Something in the region has changed! 22222")
			ConsoleWrite("Something in the region has changed! 22222" & @LF)
	
Wend
