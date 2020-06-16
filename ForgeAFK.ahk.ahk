#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;-------------------------------------------------------------------------
; F5 = start AFK loop, make sure to have your cursor in the middle of the screen
; Hit F5 again to stop
;-------------------------------------------------------------------------

F5::
toggle := !toggle


XPos = 0
YPos = 0
; script just loops 10,000 times and stops

loop, 1000
{

	if !toggle
		break

	MouseMove 1000, 500

	send, {tab}
	sleep 1700
	Click
	
	MouseMove 0, 1000
	sleep 3000
	MouseMove 920, 270
	sleep 1700
	Click

	MouseMove 1500, 890
	sleep 1700
	Click

	; for about 300 seconds
	sleep, 300000
}

;-------------------------------------------
; Left Control + Escape Kills script
;-------------------------------------------

LCtrl & ESC::ExitApp
Ctrl & Esc::ExitApp