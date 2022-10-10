
^+!x::InputBox clickvar, How many clicks?

^+!c:: ; This Hotkey is to click cookies
/*
Gui new, +AlwaysOnTop -SysMenu +owner -caption
Gui, add, text, x0 y+1, Time to click cookies
Gui, add, text, x0 y+1, Alt+Esc to pause
Gui, add, text, x0 y+1, Shift+Esc to abort
Gui, add, text, vVar w100,0
Gui Show, Center
*/
Loop %clickvar% {
	; GuiControl,,Var, %A_Index% / %clickvar%
	Tooltip, %A_Index% / %clickvar% This is the count of cookieclicking
	click
	Sleep 10

}
Tooltip
;Gui Destroy
Return

!Escape::
Pause,Toggle
Return

+Escape::
Reload


!1::
MouseGetPos, MouseX, MouseY
ImageSearch,ix,iy,0,0,a_screenWidth,a_screenHeight,C:\Users\jason\Desktop\cursor.png
MouseClick, left,  ix+20, iy+20
MouseMove, %MouseX%, %MouseY%
return

!2::
MouseGetPos, MouseX, MouseY
ImageSearch,ix,iy,0,0,a_screenWidth,a_screenHeight,C:\Users\jason\Desktop\Grandma.png
MouseClick, left,  ix+20, iy+20
MouseMove, %MouseX%, %MouseY%
return