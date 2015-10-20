; Ian's Auto Replace
;
; Compiled by Ian McQuay
; 2007-Dec-16
; Revised by IM 16/8/2011
; Major revision:   2015-10-03
    ; Header revised to go with revisions of simplekeys.ahk
;

; DO not edit the following >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; The folloing three lines should be after icon file variable
#SingleInstance force   ; make sure ony one instance
#include simplekeys.ahk	; This line is required at the start of a simplekeys script file.
; >>>>>>>>>>> Edit the following line other includes  <<<<<<<<<<<<<<<<<<<<
#include unicode-inc.ahk
;
; >>>>>>>>>>>>>>>>>>>>>>>>>>> Edit what ever afer this line <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

:c?*:^%::{^}%%{left}
:c?*:{{ ::{^}?{{}{}}{left}
:c?*:set ::{^}{!}set %%={left 2}
:c?*:setarray ::{^}{!}setarray %%={left 2}
:c?*:setlistd ::{^}{!}setlistdelimiter 
:c?*:setlistda ::{^}{!}setlistdelimiter {enter}{^}{!}setarray %%={up}{end}
:c?*:if ::{^}{!}if "" = ""  ELSE {left 13}
:c?*:goto ::{^}{!}goto{Space}
:c?*:info ::{^}{!}info{Space} 
:c?*:clip ::{^}{!}clip{Space} 
:c?*:fclip ::{^}{!}farclip{Space} 
:c?*:loopa ::{^}{!}farclip "call:loopA" ^$GetLibraryName$:
:c?*:loopb ::{^}{!}farclip "call:loopB" ^$GetLibraryName$:
:c?*:getct ::{^}$getcliptext()${left 2}
:c?*:getft ::{^}$getfiletext()${left 2}
:c?*:strrep ::{^}$StrReplace("";"";"";FALSE;FALSE)${enter}{ASC 59}           {^}$StrReplace("SubStr";"ReplaceStr";"Str";CaseSensitive;WholeWord)$ {up}{left 21}
:c?*:t=l ::(T=L;H=40)
:c?*:t=c ::(T=C)
:c?*:t=o ::(T=O;F="Text Files (*.txt;*.tasks)|*.txt;*.tasks")Open file

