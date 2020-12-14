;loopArray.au3

#include <Array.au3>

global $reproArray[5][2]=[["Bob",34],["James",22],["Sally",18],["David",43],["Cindy",28]]

;visualize data
_ArrayDisplay($reproArray)

; walk 2d array
for $a=0 to ubound($reproArray)-1
    ConsoleWrite("Name: " & $reproArray[$a][0]&" age: "&$reproArray[$a][1] & @crlf)
Next
