; Philippines Unicode AutoHotKey file test edition.
; for use with simplekeysheader.ahk and KeysOff.ahk
;
; Written by Ian McQuay
; 2007-Dec-16
; Revised by IM 2013-10-12
; Major revision:   2015-10-03
    ; Header revised to go with revisions of simplekeys.ahk
;

; DO not edit the following >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; The folloing three lines should be after icon file variable
#SingleInstance force   ; make sure ony one instance
#include simplekeys.ahk	; This line is required at the start of a simplekeys script file.
;
; >>>>>>>>>>>>>>>>>>>>>>>>>>> Edit what ever afer this line <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; >>>>>>>>>>> Edit the following line other includes <<<<<<<<<<<<<<<<<<<<
#include unicode-inc.ahk

; To create a new key combination you can edit the characters between the second and third colons. As indicated below.
; :c?*:.g::
;      ^^

; Note: thie example keyboard avoids upper case first letters so to get â instead of typeing ^a we type 6a.
; Change it if you don't like it.

:c?*:bb//::{Del}+{Enter}{End} ; what is this for?
; Consonants ===============================================

:c?*:==i::
mykey(0299,0768)  ; LATIN_SMALL_LETTER_SCRIPT_G
return

:c?*:/'::
mykey(0712)  ; Modifier Letter Vertical Line
return

:c?*:g\::
mykey(0609)  ; LATIN_SMALL_LETTER_SCRIPT_G
return

:c?*:=L::
mykey(7738)  ; LATIN_CAPITAL_LETTER_L_WITH_ LINE_BELOW
return

:c?*:=l::
mykey(7739)  ; LATIN_SMALL_LETTER_L_WITH_LINE_BELOW
return

:c?*:=S::
mykey(0352)  ; LATIN_CAPITAL_LETTER_S_WITH_CARON
return

:c?*:=s::
mykey(0353)  ; LATIN_SMALL_LETTER_S_WITH_CARON
return

:c?*:=W::
mykey(0087,0817)  ; LATIN_CAPITAL_LETTER_W COMBINING_MACRON_BELOW
return

:c?*:;Y::
mykey(0376)  ; LATIN_CAPITAL_LETTER_Y_WITH_DIAERESIS
return

:c?*:=Y::
mykey(62020)  ; LATIN_CAPITAL_LETTER_Y_WITH_STROKE
return

:c?*:=y::
mykey(62019)  ; LATIN_SMALL_LETTER_Y_WITH_STROKE
return

:c?*:=N::
mykey(0209)  ; LATIN_CAPITAL_LETTER_N_WITH_TILDE
return

:c?*:=n::
mykey(0241)  ; LATIN_small_LETTER_N_WITH_TILDE
return


; Ligatures  and  combining diacritics   ===========================================
:c?*:=OE::
mykey(0338)  ; LATIN_CAPITAL_LIGATURE_OE
return

:c?*:=oe::
mykey(0339)  ; LATIN_SMALL_LIGATURE_OE
return

:c?*:=G::
mykey(0071,0817)  ; LATIN_CAPITAL_LETTER_G COMBINING_MACRON_BELOW
return

:c?*:=g::
mykey(0103,0817)  ; LATIN_SMALL_LETTER_g COMBINING_MACRON_BELOW
return

:c?*:=R::
mykey(7774)  ; LATIN_CAPITAL_LETTER_R_WITH_LINE_BELOW
return

:c?*:=r::
mykey(7775)  ; LATIN_SMALL_LETTER_R_WITH_LINE_BELOW
return




; Other symboles ==============================================
:c?*:=/::
mykey(9674)  ; LOZENGE (Used for Phil Ansi white square not available in Doulos SIL)
return

:c?*:='::
mykey(0712)  ; MODIFIER_LETTER_VERTICAL_LINE
return

:c?*:/0::
mykey(8240)  ; PER_MILLE_SIGN
return

:c?*:=,::
mykey(8249)  ; SINGLE_LEFT-POINTING_ANGLE_QUOTATION_MARK
return

:c?*:,--::
mykey(8592)  ; LEFTWARDS_ARROW (Used for Phil Ansi Leftwards Bold Arrow not available in Doulos SIL)
return

:c?*:,.::
mykey(8226)  ; BULLET
return

:c?*:=~::
mykey(0732)  ; SMALL_TILDE
return

:c?*:=tm::
mykey(8482)  ; TRADE_MARK_SIGN
return

:c?*:=>::
mykey(8250)  ; SINGLE_RIGHT-POINTING_ANGLE_QUOTATION_MARK
return

:?*:=P::
mykey(8369)  ; PESO_SIGN
return

:c?*:=w::
mykey(0119,0817)  ; LATIN_SMALL_LETTER_W COMBINING_MACRON_BELOW
return

:c?*:p|::
mykey(0182)  ; PILCROW_SIGN
return

:c?*:=.::
mykey(0183)  ; MIDDLE_DOT (Used for Phil Ansi Word Separation Symbol not available in Doulos SIL)
return



:c?*:pp2::gn9B4toZ

; Acute accent vowels ==================================
:c?*:,A::
mykey(0193)  ; LATIN_CAPITAL_LETTER_A_WITH_ACUTE Á
return

:c?*:,E::
mykey(0201)  ; LATIN_CAPITAL_LETTER_E_WITH_ACUTE É
return

:c?*:,I::
mykey(0205)  ; LATIN_CAPITAL_LETTER_I_WITH_ACUTE Í
return

:c?*:,O::
mykey(0211)  ; LATIN_CAPITAL_LETTER_O_WITH_ACUTE Ó
return

:c?*:,U::
mykey(0218)  ; LATIN_CAPITAL_LETTER_U_WITH_ACUTE Ú
return

:c?*:,a::
mykey(0225)  ; LATIN_SMALL_LETTER_a_WITH_ACUTE_ACCENT á
return



:c?*:,i::
mykey(0237)  ; LATIN_SMALL_LETTER_i_WITH_ACUTE í
return




:c?*:<a::
mykey(0593,0769)  ; LATIN_SMALL_LETTER_ALPHA COMBINING_ACUTE_ACCENT
return



; Grave accent vowels ===============================

:c?*:A\::
mykey(0192)  ; LATIN_CAPITAL_LETTER_A_WITH_GRAVE À
return

:c?*:E\::
mykey(0200)  ; LATIN_CAPITAL_LETTER_E_WITH_GRAVE È
return

:c?*:I\::
mykey(0204)  ; LATIN_CAPITAL_LETTER_I_WITH_GRAVE Ì
return

:c?*:O\::
mykey(0210)  ; LATIN_CAPITAL_LETTER_O_WITH_GRAVE Ò
return

:c?*:U\::
mykey(0217)  ; LATIN_CAPITAL_LETTER_U_WITH_GRAVE Ù
return

:c?*:a\::
mykey(0224)  ; LATIN_SMALL_LETTER_A_WITH_GRAVE_ACCENT à
return


:c?*:e\::
mykey(0232)  ; LATIN_SMALL_LETTER_E_WITH_GRAVE_ACCENT è
return

:c?*:i\::
mykey(0236)  ; LATIN_SMALL_LETTER_I_WITH_GRAVE_ACCENT ì
return

:c?*:o\::
mykey(0242)  ; LATIN_SMALL_LETTER_E_WITH_GRAVE_ACCENT ò
return

:c?*:u\::
mykey(0249)  ; LATIN_SMALL_LETTER_E_WITH_GRAVE_ACCENT ù
return

:c?*:>a::
mykey(0593,0768)  ; LATIN_SMALL_LETTER_ALPHA COMBINING_GRAVE_ACCENT
return


; Circumflex vowels ===============================================
:*:^A::
mykey(0194)  ; LATIN_CAPITAL_LETTER_A_WITH_CIRCUMFLEX_ACCENT Â
return


:c?*:6a::
mykey(0226)  ; LATIN_SMALL_LETTER_a_with circumflex â
return

:c?*:6e::
mykey(0234)  ; LATIN_SMALL_LETTER_e_with circumflex ê
return

:c?*:6i::
mykey(0238)  ; LATIN_SMALL_LETTER_i_with circumflex î
return

:c?*:6o::
mykey(0244)  ; LATIN_SMALL_LETTER_o_with circumflex ô
return

:c?*:6u::
mykey(0251)  ; LATIN_SMALL_LETTER_u_with circumflex û
return

:c?*:^a::
mykey(0593,0770)  ; LATIN_SMALL_LETTER_ALPHA COMBINING_CIRCUMFLEX_ACCENT Â
return

:c?*:^O::
mykey(0212)  ; LATIN_CAPITAL_LETTER_O_WITH_CIRCUMFLEX Ô
return

; macron vowels ============================================================

:c?*:=A::{u+0100}
; LATIN_CAPITAL_LETTER_A_WITH_MACRON


:c?*:=E::{u+0112}
; LATIN_CAPITAL_LETTER_E_WITH_MACRON


:c?*:=I::
mykey(0298)  ; LATIN_CAPITAL_LETTER_I_WITH_MACRON
return

:c?*:=O::
mykey(0332)  ; LATIN_CAPITAL_LETTER_O_WITH_MACRON
return

:c?*:=U::
mykey(0362)  ; LATIN_CAPITAL_LETTER_U_WITH_MACRON
return

:c?*:=a::{u+0101} ; LATIN_SMALL_LETTER_a_WITH_MACRON


:c?*:=e::{u+0113} ; LATIN_SMALL_LETTER_E_WITH_MACRON


:c?*:=i::{u+012B} ; LATIN_SMALL_LETTER_I_WITH_MACRON
return

:c?*:=o::{u+014D} ; LATIN_SMALL_LETTER_o_WITH_MACRON
return

:c?*:=u::{u+016B} ; LATIN_SMALL_LETTER_u_WITH_MACRON
return

; Other vowels ============================================================
:c?*:/a::
mykey(0593)  ; LATIN_SMALL_LETTER_ALPHA
return

:c?*:-i::
mykey(0616)  ; LATIN_SMALL_LETTER_I_WITH_STROKE
return

:c?*:0a::
mykey(0229)  ; LATIN_SMALL_LETTER_a_WITH_RING_above
return

:c?*:;O::
mykey(0214)  ; LATIN_CAPITAL_LETTER_O_WITH_DIAERESIS
return


:c?*:/wyc::© Wycliffe Bible Translators Inc.
:c?*:--::{u+2013} ; en dash
:c?*:-=::{u+2014} ; em dash
:O:/nt::New Testament
:?*:;;:::


; Export Ventura text
:c?*://::{enter}^+t
; $NumpadAdd::send, {`%}{down}