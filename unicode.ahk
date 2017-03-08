; Unicode keyboard SimpleKeys script
;
; Written by Ian McQuay
; 2011-08-16
; Major revision:   2015-10-03
    ; Header revised to go with revisions of simplekeys.ahk
;

; DO not edit the following >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; The folloing three lines should be after icon file variable
#SingleInstance force   ; make sure ony one instance
#include simplekeys.ahk	; This line is required at the start of a simplekeys script file.
;
; >>>>>>>>>>>>>>>>>>>>>>>>>>> Edit what ever afer this line <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
#include unicode-inc.ahk
:c?*:\=::= ; get = after letter any rota letter
:c?*:=::
	; Vowel  and consonant rota that can be used for composed characters only
	rota20("aàáâãäåa","eèéêëe","iìíîïi","oòóôõöo","uùúûüu","AÀÁÂÃÄÅA","EÈÉÊËE","IÌÍÎÏI","OÒÓÔÕÖO","UÙÚÛÜU","nñ?n","NÑ?N","","","","","","","","","=")
return
