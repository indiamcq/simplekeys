; Common Unicode character
; em and en stuff
:c?*:em/::{u+2014} ; em dash
:c?*:msp/::{u+2003} ;em space

:c?*:en/::{u+2013} ; en dash
:c?*:nsp/::{u+2002} ; en space
; quotations
;:c?*:<<::{u+201C}{u+2018} ; Left double quote and left single quote
:c?*:<<::{u+201C} ; Left double quote
:c?*:/,,::{u+201C} ; Left double quote
:c?*:<"::{u+201C} ; Left double quote
:c?*:>>::{u+201D} ; Right double quote
:c?*:>"::{u+201D} ; Right double quote
:c?*:<'::{u+2018} ; left single quote
:c?*:>'::{u+2019} ; right single quote
:c?*:,/::{u+2018} ; Left single quote
:c?*:./::{u+2019} ; Right single quote

; Acute and grave vowels with [] as preceding char
:c?*:]a::{U+00E0} ; à
:c?*:a\::{U+00E0} ; à
:c?*:[a::{U+00E1} ; á
:c?*:e\::{U+00E8} ; è
:c?*:e/::{U+00E9} ; é
:c?*:]i::{U+00EC} ; ì
:c?*:[i::{U+00ED} ; í
:c?*:]u::{U+00F9} ; ù
:c?*:[u::{U+00FA} ; ú
:c?*:]o::{U+00F2} ; ò
:c?*:o/::{U+00F3} ; ò
:c?*:o\::{U+00F2} ; ò
:c?*:[o::{U+00F3} ; ó
:c?*:\'::{U+0300} ; `
:c?*:...::{U+2026} ; ellipis