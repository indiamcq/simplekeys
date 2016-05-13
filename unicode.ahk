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
:?*:]\::\

:?*:\::
	; rota for many groups
    ; note sub-groups within each set must start and end with the same unaccented letter
	rota10("aāàáâãäåaeēèéêëeiīìíîïioōòóôõöouūùúûüu","AĀÀÁÂÃÄÅAEĒÈÉÊËEIĪÌÍÎÏIOŌÒÓÔÕÖOUŪÙÚÛÜU","nñŋn","NÑŊN","","","","","","")
return
