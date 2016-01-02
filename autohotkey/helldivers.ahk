#Include helldivers_common.ahk
setup()

reinforcement := [up,down,right,left,up]
dive_bomb := [right,right,right]

sequences[MBUTTON] := dive_bomb
sequences[XBUTTON1] := nothing
sequences[XBUTTON2] := reinforcement
return

MButton::
	doSequence(MBUTTON, sequences)
	return

XButton1::
	doSequence(XBUTTON1, sequences)
	return

XButton2::
	doSequence(XBUTTON2, sequences)
	return

setup() {
	global nothing := "nothing"

	global MBUTTON := "{MButton}"
	global XBUTTON1 := "{XButton1}"
	global XBUTTON2 := "{XButton2}"

	global up := "w"
	global right := "d"
	global down := "s"
	global left := "a"

	global sequences = Object()
}
