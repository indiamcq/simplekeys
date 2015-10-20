;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Written by:   Ian McQuay
; Created:      2015-01-31
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
; script assumes editor will insert matching brace
; press enter or space after string to fire it.
:O:/ife::if ( {right}  {{}{enter}// true{enter 2}{right} else {{}{enter}//false {enter 2}{right}{enter}
:O:/if::if ( {right} {{} {enter}// true{enter 2} {right}{enter}
