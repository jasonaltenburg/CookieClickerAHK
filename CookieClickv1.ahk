InputBox clickvar, How many clicks?

^+!c:: ; This Hotkey is to click cookies
Gui new, +AlwaysOnTop -SysMenu +owner -caption
Gui, add, text, x0 y+1, Time to click cookies
Gui, add, text, x0 y+1, Alt+Esc to pause
Gui, add, text, x0 y+1, Shift+Esc to abort
Gui, add, text, vVar w100,0
Gui Show, Center
Loop %clickvar% {
	GuiControl,,Var, %A_Index% / %clickvar%
	click
	Sleep 10
	
}
Gui Destroy
Return

!Escape::
Pause,Toggle
Return

+Escape::
Reload
