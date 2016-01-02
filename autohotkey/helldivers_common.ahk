test := ["this", "is", "a", "test"]

doSequence(_buttonConst, _sequences) {
	sequence := _sequences[_buttonConst]
	_doSequence(_buttonConst, sequence)
}

_doSequence(_buttonConst, _sequence) {
	sleepTime := 20
	WinGetTitle, title, A

	if (_sequence != "nothing" And title = "Helldivers") {
		Send, {Ctrl down}
		for index, element in _sequence {
			Sleep, % sleepTime
			Send, % element
		}
		Sleep, % sleepTime
		Send, {Ctrl up}
	} else {
		Send, % _buttonConst
	}
}
