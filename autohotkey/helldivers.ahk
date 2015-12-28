;tolik bala nitrogaj START
nothing := "nothing"
test := ["this", "is", "a", "test"]
xButton1progress := false
xButton2progress := false
;tolik ty niponil END



sleep := 30 ;zaderzhka mezhdu nazhatijami knopok vo vremja spella v milisikundah
sleepAfter := 0 ;zaderzhka posle spella v milisikundah, TIPA ANTISPAM MEHANIZM OT TOLIKA
;suda dabavljaj spelly START
reinforcement := ["{Up}", "{Up}", "{Up}"]
;suda dabavljaj spelly END

;suda pisi liba nothing stobi knopka rabotala kak ran'she liba imja spella START
xButton1 := reinforcement
xButton2 := nothing
;suda pisi liba nothing stobi knopka rabotala kak ran'she liba imja spella END
return




;tolik bala nitrogaj START
XButton1::
if (xButton1 != "nothing") {
	if (xButton3progress = false) {
		xButton3progress := true
		Send, {Ctrl down}
		for index, element in xButton1 {
			Sleep, % sleep
			Send % xButton1[index]
		}
		Send, {Ctrl up}
		Sleep, % sleepAfter
		xButton1progress := false
	}
} else {
	Send, {XButton1}
}
;tolik ty niponil END
