; Paratext Reg Expression file test edition.
; for use with simplekeysheader.ahk and KeysOff.ahk
;
; Written by Ian McQuay
; 2014-Jun-26
; Revised by IM 2013-10-12
;
; Set the menu icon
;menu tray, Icon, p.ico

; The following two lines are essential.
startScript = %A_ScriptName%	; This line is required at the start of a simplekeys script file.
#include SimpleKeys.ahk	; This line is required at the start of a simplekeys script file.
#include unicode.ahk

; To create a new key combination you can edit the characters between the second and third colons. As indicated below.
; :c?*:.g::
;      ^^
; The mykey() function can take one to three characters as parameters separated by commas.
; The values are decimal values not hex values. I know unicode is expressed in hex.
; there must be a return to end a new key combination.
;
; Note: thie example keyboard avoids upper case first letters so to get â instead of typeing ^a we type 6a.
; Change it if you don't like it. 
:O:/r-1::(\\r .+)([\d\-]+) ([A-Z]){tab}\1\2; \3
:O:/r-2::(\\r .+)([\d\-]+) ([12] [A-Z]){tab}\1\2; \3