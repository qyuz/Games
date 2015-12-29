setup()

sleep := 30 ;zaderzhka mezhdu nazhatijami knopok vo vremja spella v milisikundah
sleepAfter := 0 ;zaderzhka posle spella v milisikundah, TIPA ANTISPAM MEHANIZM OT TOLIKA
nothing := "nothing" ;ispolzuj eta cheby nibindit nichigo

;suda dabavljaj spelly START
reinforcement := [right,right,right]
dive_bomb := [right,right,right]
;suda dabavljaj spelly END

;suda pisi liba nothing stobi knopka rabotala kak ran'she liba imja spella START
c[MBUTTON] := dive_bomb
c[XBUTTON1] := nothing
c[XBUTTON2] := nothing
;suda pisi liba nothing stobi knopka rabotala kak ran'she liba imja spella END
return







;tolik bala nitrogaj START
MButton::
	doCombination(MBUTTON, buttonProgress, c, buttonDefaults)
	return




XButton1::
	doCombination(XBUTTON1, buttonProgress, c, buttonDefaults)
	return

XButton2::
	doCombination(XBUTTON2, buttonProgress, c, buttonDefaults)
	return

setup() {
	global c := []
	global buttonProgress := [false, false, false]
	global buttonDefaults := ["{MButton}", "{XButton1}", "{XButton2}"]
	global MBUTTON := 1
	global XBUTTON1 := 2
	global XBUTTON2 := 3
	global test := ["this", "is", "a", "test"]
	global up := "w"
	global right := "d"
	global down := "s"
	global left := "a"
}

doCombination(_buttonConst, _buttonProgress, _combinations, _buttonDefaults) {
	combination := _combinations[_buttonConst]
	isProgress := _buttonProgress[_buttonConst]

	if (combination != "nothing") {
		if (isProgress = false) {
			_buttonProgress[_buttonConst] := true
			Send, {Ctrl down}
			Sleep, % sleep
			for index, element in combination {
				Sleep, % sleep
				Send, % element
			}
			Sleep, % sleep
			Send, {Ctrl up}
			Sleep, % sleepAfter
			_buttonProgress[_buttonConst] := false
		}
	} else {
		Send, % _buttonDefaults[_buttonConst]
	}
}
;tolik ty niponil END