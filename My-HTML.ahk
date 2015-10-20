; for use with simplekeysheader.ahk and KeysOff.ahk
;
; Written by Ian McQuay
; 2007-Dec-16
; Revised by IM 2013-10-12
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
#include unicode-inc.ahk

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
:c?*:t/::<table>{Enter 2}</table>{Left 9}

:c?*:tr/::<tr>{Enter 2}</tr>{Left 6}

:c?*:td/::<td></td>{Left 5}
:c?*:h1/::<h1></h1>{Left 5}
:c?*:h2/::<h2></h2>{Left 5}
:c?*:h3/::<h3></h3>{Left 5}
:c?*:h4/::<h4></h4>{Left 5}
:c?*:h5/::<h5></h5>{Left 5}

:c?*:p/::<p></p>{Left 4}
:c?*:br/::{Enter}<br />

:c?*:nb/::<nobr>{Enter}</nobr>{Left 7}

:c?*:c=::{Space}class=""{Left}

:c?*:w=::{Space}width=""{Left}


