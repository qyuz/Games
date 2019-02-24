#if (WinActive("ahk_exe HeroesOfTheStorm_x64.exe"))
,::LAlt
#if (WinActive("ahk_exe r5apex.exe"))
w::
Send {w down}
Send {LCtrl down} ; this holds the space key down
KeyWait, w ; waits for you to release z
Send {w up}
Send {LCtrl up}
return