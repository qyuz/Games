nothing := "nothing", test := ["this", "is", "a", "test"], up := "{Up}", right := "{Right}", down := "{Down}", left := "{Left}" ;tolik nitrogaj



sleep := 30 ;zaderzhka mezhdu nazhatijami knopok vo vremja spella v milisikundah
sleepAfter := 0 ;zaderzhka posle spella v milisikundah, TIPA ANTISPAM MEHANIZM OT TOLIKA

;suda dabavljaj spelly START
reinforcement := [up, up, up]
;suda dabavljaj spelly END

;suda pisi liba nothing stobi knopka rabotala kak ran'she liba imja spella START
xButton1 := reinforcement
xButton2 := nothing
;suda pisi liba nothing stobi knopka rabotala kak ran'she liba imja spella END









;tolik bala nitrogaj START
xButton1progress := false
xButton2progress := false
return

MButton::
if (xButton1 != "nothing") {
	if (xButton1progress = false) {
		xButton1progress := true
		;Send, {Ctrl down}
		for index, element in xButton1 {
			Sleep, % sleep
			Send % xButton1[index]	
		}
		;Send, {Ctrl up}
		Sleep, % sleepAfter
		xButton1progress := false
	}
} else {
	Send, {MButton}
}
;tolik ty niponil END
