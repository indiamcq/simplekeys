; Philippines Unicode AutoHotKey file test edition.
;
; Compiled by Ian McQuay
; 2007-Dec-16
; Revised by IM 1/01/2008
; Revised by IM 13/3/2011
; Revised by IM 7/9/2012
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




; Key substitutions go below in the following form
;	:c?*:/g::
;	unicodekey(0261)  ; LATIN_SMALL_LETTER_SCRIPT_G
;	return

:c?*:'&::
unicodekey(0251,0301)  ; d132 LATIN_SMALL_LETTER_ALPHA COMBINING_ACUTE_ACCENT
return

:c?*:'"::
unicodekey(0022)  ; d34 QUOTATION_MARK
return

:c?*:''::
unicodekey(2019)  ; 
return

:c?*:'<::
unicodekey(201C)  ; 
return

:c?*:'>::
unicodekey(201D)  ; 
return

:c?*:'=::
unicodekey(00B7)  ; MIDDLE_DOT (Replacing Word Separation Symbol (d183) in Phil Ansi SIL)
return

:c?*:!&::
unicodekey(0251,0300)  ; d133 LATIN_SMALL_LETTER_ALPHA COMBINING_GRAVE_ACCENT
return

:c?*:!'::
unicodekey(2018)  ; 
return

:c?*:^a::
unicodekey(0251,0302)  ; d134 LATIN_SMALL_LETTER_ALPHA COMBINING_CIRCUMFLEX_ACCENT
return

:c?*:^'::
unicodekey(00B4)  ; 
return

:c?*:^2::
unicodekey(00B2)  ; 
return

:c?*:^3::
unicodekey(00B3)  ; 
return

:c?*:^S::
unicodekey(0160)  ; 
return

:c?*:^s::
unicodekey(0161)  ; 
return

:c?*:%<::
unicodekey(2190)  ; LEFTWARDS_ARROW (Replacing Leftwards Bold Arrow (d143) in Phil Ansi SIL)
return

:c?*:%s::
unicodekey(00A5)  ; 
return

:c?*:%Y::
unicodekey(0178)  ; 
return

:c?*:~-::
unicodekey(00AD)  ; 
return

:c?*:~N::
unicodekey(00D1)  ; 
return

:c?*:~n::
unicodekey(00F1)  ; 
return

:c?*:~Y::
unicodekey(F244,d186)  ; F244 LATIN_CAPITAL_LETTER_Y_WITH_STROKE
return

:c?*:~y::
unicodekey(F243,d191)  ; F243 LATIN_SMALL_LETTER_Y_WITH_STROKE
return

:c?*:&!::
unicodekey(00A1)  ; 
return

:c?*:&$::
unicodekey(00A2)  ; 
return

:c?*:&%::
unicodekey(2030)  ; 
return

:c?*:&(::
unicodekey(00AB)  ; 
return

:c?*:&)::
unicodekey(00BB)  ; 
return

:c?*:&-::
unicodekey(2013)  ; 
return

:c?*:&_::
unicodekey(2014)  ; 
return

:c?*:&.::
unicodekey(00AA)  ; 
return

:c?*:&:::
unicodekey(00F7)  ; 
return

:c?*:&<::
unicodekey(2039)  ; 
return

:c?*:&>::
unicodekey(203A)  ; 
return

:c?*:&|::
unicodekey(00A6)  ; 
return

:c?*:&::
unicodekey(02DC)  ; 
return

:c?*:&a::
unicodekey(0251)  ; 
return

:c?*:&C::
unicodekey(00A9)  ; 
return

:c?*:&g::
unicodekey(0261)  ; 
return

:c?*:&i::
unicodekey(0268)  ; 
return

:c?*:&L::
unicodekey(00AC)  ; 
return

:c?*:&O::
unicodekey(2022)  ; 
return

:c?*:&o::
unicodekey(00B0)  ; 
return

:c?*:&P::
unicodekey(20B1)  ; 
return

:c?*:&p::
unicodekey(00B6)  ; 
return

:c?*:&R::
unicodekey(00AE)  ; 
return

:c?*:&s::
unicodekey(00DF)  ; 
return

:c?*:&x::
unicodekey(25CA)  ; LOZENGE (Replacing White Square (d135) in Phil Ansi SIL)
return

:c?*:O&E::
unicodekey(0152)  ; 
return

:c?*:o&e::
unicodekey(0153)  ; 
return

:c?*:S&S::
unicodekey(00A7)  ; 
return

:c?*:T&M::
unicodekey(2122)  ; 
return

:c?*:x&o::
unicodekey(00A4)  ; 
return

:c?*:_ ::
unicodekey(00A0)  ; 
return

:c?*:_%::
unicodekey(00A8)  ; 
return

:c?*:_0::
unicodekey(00D8)  ; 
return

:c?*:_1::
unicodekey(00BC)  ; 
return

:c?*:_2::
unicodekey(00BD)  ; 
return

:c?*:_3::
unicodekey(00BE)  ; 
return

:c?*:_A::
unicodekey(00C5)  ; 
return

:c?*:_a::
unicodekey(00E5)  ; 
return

:c?*:_C::
unicodekey(00C7)  ; 
return

:c?*:_c::
unicodekey(00E7)  ; 
return

:c?*:_G::
unicodekey(0047,0331)  ; d248 LATIN_CAPITAL_LETTER_G COMBINING_MACRON_BELOW
return

:c?*:_g::
unicodekey(0067,0331)  ; d215 LATIN_SMALL_LETTER_G COMBINING_MACRON_BELOW
return

:c?*:_i::
unicodekey(00AF)  ; 
return

:c?*:_L::
unicodekey(1E3A)  ; 
return

:c?*:_l::
unicodekey(1E3B)  ; 
return

:c?*:_n::
unicodekey(00B1)  ; 
return

:c?*:_R::
unicodekey(1E5E)  ; 
return

:c?*:_r::
unicodekey(1E5F)  ; 
return

:c?*:_W::
unicodekey(0057,0331)  ; d144 LATIN_CAPITAL_LETTER_W COMBINING_MACRON_BELOW
return

:c?*:_w::
unicodekey(0077,0331)  ; d181 LATIN_SMALL_LETTER_W COMBINING_MACRON_BELOW
return

:c?*:||::
unicodekey(02C8)  ; 
return

:c?*:'R::
unicodekey(0154)  ; LATIN_CAPITAL_LETTER_R_WITH_ACUTE
return

:c?*:'r::
unicodekey(0155)  ; LATIN_SMALL_LETTER_R_WITH_ACUTE
return

:c?*:'W::
unicodekey(1E82)  ; LATIN_CAPITAL_LETTER_W_WITH_ACUTE
return

:c?*:'w::
unicodekey(1E83)  ; LATIN_SMALL_LETTER_W_WITH_ACUTE
return

:c?*:!'::
unicodekey(02B9 )  ; MODIFIER_LETTER_PRIME (Used for syllable primary stress)
return

:c?*:!,::
unicodekey(02CC )  ; MODIFIER_LETTER_LOW_VERTICAL_LINE (Used for syllable secondary stress)
return

:c?*:^(::
unicodekey(0361)  ; COMBINING_DOUBLE_INVERTED_BREVE (Used for tie bar)
return

:c?*:~G::
unicodekey(01E4 )  ; LATIN_CAPITAL_LETTER_G_WITH_STROKE
return

:c?*:~g::
unicodekey(01E5)  ; LATIN_SMALL_LETTER_G_WITH_STROKE
return

:c?*:'e::
unicodekey(1E17 )  ; LATIN_SMALL_LETTER_E_WITH_MACRON_AND_ACUTE
return

:c?*:!A::
unicodekey(0100,0300)  ; LATIN_CAPITAL_LETTER_A COMBINING_GRAVE_ACCENT
return

:c?*:!a::
unicodekey(0101,0300)  ; LATIN_SMALL_LETTER_A COMBINING_GRAVE_ACCENT
return

:c?*:!E::
unicodekey(1E14      )  ; 
return

:c?*:!e::
unicodekey(1E15      )  ; 
return

:c?*:!I::
unicodekey(012A,0300)  ; LATIN_CAPITAL_LETTER_I COMBINING_GRAVE_ACCENT
return

:c?*:!i::
unicodekey(012B,0300)  ; LATIN_SMALL_LETTER_I COMBINING_GRAVE_ACCENT
return

:c?*:!O::
unicodekey(1E50      )  ; 
return

:c?*:!o::
unicodekey(1E51      )  ; 
return

:c?*:!U::
unicodekey(016A,0300)  ; LATIN_CAPITAL_LETTER_U COMBINING_GRAVE_ACCENT
return

:c?*:!u::
unicodekey(016B,0300)  ; LATIN_SMALL_LETTER_U COMBINING_GRAVE_ACCENT
return

:c?*:& ::
unicodekey(2009 )  ; THIN_SPACE
return

:c?*:&?::
unicodekey(0294 )  ; LATIN_LETTER_GLOTTAL_STOP
return

:c?*:&0::
unicodekey(00F8 )  ; LATIN_SMALL_LETTER_O_WITH_STROKE
return

:c?*:&A::
unicodekey(00C3 )  ; LATIN_CAPITAL_LETTER_A_WITH_TILDE
return

:c?*:&e::
unicodekey(0259 )  ; LATIN_SMALL_LETTER_SCHWA
return

:c?*:&n::
unicodekey(014B )  ; LATIN_SMALL_LETTER_ENG
return

:c?*:&u::
unicodekey(00B5 )  ; MICRO_SIGN
return

:c?*:&X::
unicodekey(00D7 )  ; MULTIPLICATION_SIGN
return

:c?*:_-::
unicodekey(2011)  ; NON-BREAKING_HYPHEN
return

:c?*:_.::
unicodekey(2026)  ; HORIZONTAL_ELLIPSIS
return

:c?*:_O::
unicodekey(00D5)  ; LATIN_CAPITAL_LETTER_O_WITH_TILDE
return

:c?*:_o::
unicodekey(00F5)  ; LATIN_SMALL_LETTER_O_WITH_TILDE
return

:c?*:_u::
unicodekey(F23F)  ; LATIN_SMALL_LETTER_U_WITH_STROKE
return

:c?*:'a::
unicodekey(00E1)  ; 
return

:c?*:'e::
unicodekey(00E9)  ; 
return

:c?*:'i::
unicodekey(00ED)  ; 
return

:c?*:'o::
unicodekey(00F3)  ; 
return

:c?*:'u::
unicodekey(00FA)  ; 
return

:c?*:'A::
unicodekey(00C1)  ; 
return

:c?*:'E::
unicodekey(00C9)  ; 
return

:c?*:'I::
unicodekey(00CD)  ; 
return

:c?*:'O::
unicodekey(00D3)  ; 
return

:c?*:'U::
unicodekey(00DA)  ; 
return

:c?*:!a::
unicodekey(00E0)  ; 
return

:c?*:!e::
unicodekey(00E8)  ; 
return

:c?*:!i::
unicodekey(00EC)  ; 
return

:c?*:!o::
unicodekey(00F2)  ; 
return

:c?*:!u::
unicodekey(00F9)  ; 
return

:c?*:!A::
unicodekey(00C0)  ; 
return

:c?*:!E::
unicodekey(00C8)  ; 
return

:c?*:!I::
unicodekey(00CC)  ; 
return

:c?*:!O::
unicodekey(00D2)  ; 
return

:c?*:!U::
unicodekey(00D9)  ; 
return

:c?*:^a::
unicodekey(00E2)  ; 
return

:c?*:^e::
unicodekey(00EA)  ; 
return

:c?*:^i::
unicodekey(00EE)  ; 
return

:c?*:^o::
unicodekey(00F4)  ; 
return

:c?*:^u::
unicodekey(00FB)  ; 
return

:c?*:^A::
unicodekey(00C2)  ; 
return

:c?*:^E::
unicodekey(00CA)  ; 
return

:c?*:^I::
unicodekey(00CE)  ; 
return

:c?*:^O::
unicodekey(00D4)  ; 
return

:c?*:^U::
unicodekey(00DB)  ; 
return

:c?*:%a::
unicodekey(00E4)  ; 
return

:c?*:%e::
unicodekey(00EB)  ; 
return

:c?*:%i::
unicodekey(00EF)  ; 
return

:c?*:%o::
unicodekey(00F6)  ; 
return

:c?*:%u::
unicodekey(00FC)  ; 
return

:c?*:%A::
unicodekey(00C4)  ; 
return

:c?*:%E::
unicodekey(00CB)  ; 
return

:c?*:%I::
unicodekey(00CF)  ; 
return

:c?*:%O::
unicodekey(00D6)  ; 
return

:c?*:%U::
unicodekey(00DC)  ; 
return

:c?*:~a::
unicodekey(0101)  ; 
return

:c?*:~e::
unicodekey(0113)  ; 
return

:c?*:~i::
unicodekey(012B)  ; 
return

:c?*:~o::
unicodekey(014D)  ; 
return

:c?*:~u::
unicodekey(016B)  ; 
return

:c?*:~A::
unicodekey(0100)  ; 
return

:c?*:~E::
unicodekey(0112)  ; 
return

:c?*:~I::
unicodekey(012A)  ; 
return

:c?*:~O::
unicodekey(014C)  ; 
return

:c?*:~U::
unicodekey(016A)  ; 
return




; U+0100  LATIN_CAPITAL_LETTER_A_WITH_MACRON
:c?*:=A::
unicodekey(A)
return

; U+0101  LATIN_SMALL_LETTER_A_WITH_MACRON
:c?*:=a::
unicodekey(a)
return


; U+014C  LATIN_CAPITAL_LETTER_O_WITH_MACRON
:c?*:=O::
unicodekey(014C)
return

; U+014D  LATIN_SMALL_LETTER_O_WITH_MACRON
:c?*:6o::
unicodekey(014D)
return

; U+0113  e LATIN_SMALL_LETTER_E_WITH_MACRON
:c?*:=e::
unicodekey(0113)
return

; U+00EA  ê LATIN_SMALL_LETTER_E_WITH_CIRCUMFLEX
:c?*:^e::
unicodekey(00EA)
return