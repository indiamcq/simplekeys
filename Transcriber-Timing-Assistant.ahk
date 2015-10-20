; Transcriber hotkeys f
; segmenting Scripture for Scripture App Builder
; for use with simplekeysheader.ahk and KeysOff.ahk
;
; Written by Ian McQuay
; 2015-Jun-04
; Revised by IM 2015-Jun-05
; Major revision:   2015-10-03
    ; Header revised to go with revisions of simplekeys.ahk
;
; >>>>>>>>>>> Edit the following line other includes  <<<<<<<<<<<<<<<<<<<<

; DO not edit the following >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; The folloing three lines should be after icon file variable
#SingleInstance force   ; make sure ony one instance
#include simplekeys.ahk	; This line is required at the start of a simplekeys script file.
;
; >>>>>>>>>>>>>>>>>>>>>>>>>>> Edit what ever afer this line <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; if not compiled (i.e. used as a script), Set the menu icon and use 
if (A_IsCompiled <> 1) {
	iconfile := "Transcriber-Timing-Assistant.ico"
	simplekeys := "SimpleKeys.ahk"
	menu tray, Icon, %iconfile%
	if(fileexist(simplekeys))	{
		#include SimpleKeys.ahk	; This line is required at the start of a simplekeys script file.
	}
}
 ----------------------------------------------------------------------------------------


; preparation

window=Transcriber
SetTitleMatchMode, 1

; Hotkeys start with a $ so they don't fire themselves when not on Transcriber.
$RButton::
	SetKeyDelay, 200 
	IfWinActive, Transcriber
	{
		send, {LButton}{enter}{del}{End}
	} else {
		send, {RButton}
	}
	return
$NumpadAdd::
	SetKeyDelay, 200 
	IfWinActive, Transcriber
	{
		send, {enter}{del}{End}
	} else {
		send, {NumpadAdd}
	}
	return
$Space::
	SetKeyDelay, 200 
	IfWinActive, Transcriber 
	{
		send, {tab}
	} else {
		send, {space}
	}
	return
;