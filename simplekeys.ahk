; SimpleKeys
; 
; Written by: Ian McQuay
; 2007-Dec-16
; Revised by IM 2013-10-12
;
; Simple Keys is a simple way to define a basic keyboard or abitary text.
; Frist you need AutoHotKey installed on your computer.
; This file needs an initiating file (like myKeys.ahk) and KeysOff.ahk in the same folder.
; The initiating file needs two lines at the start (without preceding semicolon comment character):
; startScript = %A_ScriptName%
; #include SimpleKeys.ahk
;
; To create a new key combination you can edit the characters between the second and third colons. As indicated below.
; :c?*:.g::
;      ^^
; mykey(0609)  ; LATIN_SMALL_LETTER_SCRIPT_G
; return
; 
; The mykey() function can take one to three characters as parameters separated by commas.
; The values are decimal values not hex values. I know Unicode is expressed in hex.
; there must be a return to end a new key combination.
;
; get the menu variables
;#include menusetup.ahk

startscript := A_ScriptName             ; Define the name of the file for the tool tip and tray message
prevkeypickupspeed := 50

; remove the file extension from the script name.
StringTrimRight, OutputVar, startScript, 4
iconfile := OutputVar . ".ico"
menu, tray, Icon, %iconfile%
nokeyboardmenu := "No Keyboard"
nokeyboardscript := "No_Keyboard.ahk"

;
gosub, menusetup
gosub, tooltipsub



; set the key delay
SetKeyDelay, 0

; Keys for pause and exit defined below =====================================================

$pause::                               		; Suspend current script except for pauses un less no keyboard
	if (A_ScriptName = nokeyboardscript) 	; disable pause suspend when nokeyboardscript
	{
		send {Pause}						; sends actual pause key when in No_Keyboard.ahk script
	}
	else 
	{
		Suspend
		gosub, suspendTip
	}
return

:c?*:zx::                             ; Exit the current script
ExitApp

; gosub routines =================================================================================

; menu setup must match gosubs defined later <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
menusetup:
	; Left click menu items
	
	Loop, Read, menulist.txt ; menu loop to create each numbered menu item
	{
		line := A_LoopReadLine
		; MsgBox %line%
		cell1 := RegExReplace(line,"^(.+);.+","$1")
		;MsgBox %cell1%
		cell2 := RegExReplace(A_LoopReadLine,".+;(.+)$","$1")
		script := A_ScriptDir "\" cell1 ".ahk"
		script%A_index% := script	
		scriptmenu := cell2
		script%A_index%menu := cell2
		filename := cell1
		iconfile := A_ScriptDir "\" cell1 ".ico"
		IfNotExist, %iconfile%
			FileCopy, %A_ScriptDir%\Icon_04.ico, %iconfile%
		If FileExist(script)
		{
			Menu, leftclick, add, %scriptmenu%, startscript%A_index%, P1
			Menu, leftclick, Icon, %scriptmenu%, %iconfile%,
			if (script = A_ScriptName)
			{
				menu, leftclick, disable, %scriptmenu%
				menu, leftclick, check, %scriptmenu%
				TrayTip, %OutputVar%, Hot Keys active
			}
		}
	}




	; the following do not need to change
	Menu, leftclick, add
	IfExist, %nokeyboardscript%
	{
		Menu, leftclick, add, %nokeyboardmenu%, nokeyboardstartscript, P1
		StringSplit, filename, nokeyboardscript, .
		Menu, leftclick, Icon, %nokeyboardmenu%, %filename1%.ico,
		if (nokeyboardscript = A_ScriptName)
		{
			menu, leftclick, disable, %nokeyboardmenu%,
			menu, leftclick, check, %nokeyboardmenu%,
			TrayTip, %OutputVar%, No Hot Keys active
		}
		else
		{
			; if the nokeboardscript is not active show the suspend menu item
			Menu, leftclick, add, Suspend Hotkeys, SuspendHandler
			if (nokeyboardscript = A_ScriptName)
			{
				Menu, leftclick, add, Hide Tooltip, UnSuspendTooltip
				Menu, leftclick, Check, Hide Tooltip
			}
			else
			{	

				Menu, leftclick, add, Hide Tooltip, SuspendTooltip
			}
		}	
	}
	Menu, leftclick, Add, Exit,        ExitHandler     ; Add the exit item
return
; end of menu setup to match gosubs defined later <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

; menu setup must match gosubs defined here <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; Swap to other keyboards
; Code to run other keyboards
startscript1:
run %script1%
ExitApp

startscript2:
run %script2%
ExitApp

startscript3:
run %script3%
ExitApp

startscript4:
run %script4%
ExitApp

startscript5:
run %script5%
ExitApp

startscript6:
run %script6%
ExitApp

startscript7:
run %script7%
ExitApp

startscript8:
run %script8%
ExitApp

startscript9:
run %script9%
ExitApp

startscript10:
run %script10%
ExitApp

startscript11:
run %script11%
ExitApp

startscript12:
run %script12%
ExitApp

startscript13:
run %script13%
ExitApp

startscript14:
run %script14%
ExitApp

startscript15:
run %script15%
ExitApp

startscript16:
run %script16%
ExitApp

startscript17:
run %script17%
ExitApp

startscript18:
run %script18%
ExitApp

startscript19:
run %script19%
ExitApp

startscript20:
run %script20%
ExitApp

startscript21:
run %script21%
ExitApp

startscript22:
run %script22%
ExitApp

startscript23:
run %script23%
ExitApp

startscript24:
run %script24%
ExitApp

startscript25:
run %script25%
ExitApp

startscript26:
run %script26%
ExitApp

startscript27:
run %script27%
ExitApp

startscript28:
run %script28%
ExitApp

startscript29:
run %script29%
ExitApp

startscript30:
run %script30%
ExitApp

nokeyboardstartscript:
run %nokeyboardscript%
ExitApp

; end of gosub to match menu <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

tooltipsub:
	; Set the positioning for the tooltip. Change the tool tip offset to a larger value if it covers over your minmise button.
	tooltipoffset = 160
	; the tooltipletwidth is an approximation of how wide a letter is in pixels. Its purpose is to keep the tooltips right border the same as the Keys Off tooltip.
	tooltipletwidth = 6
	; Tooltip to indicate the keyboard is active
	CoordMode, ToolTip, Screen
	IfNotEqual, OutputVar, No_Keyboard
	{
		ToolTip , %OutputVar% , A_ScreenWidth -tooltipoffset -(StrLen(OutputVar) * tooltipletwidth), 0, 
	}
	OnMessage(0x404,"AHK_NotifyTrayIcon") 					; Check for left click on tray icon
return

ExitHandler:
  ExitApp
return

SuspendHandler: 
	suspend toggle
	gosub, suspendTip
return

SuspendTooltip:
	ToolTip ,
	Menu, leftclick, Check, Hide Tooltip
	Menu, leftclick, Add, Hide Tooltip, UnSuspendTooltip 
return

UnSuspendTooltip:
	gosub, tooltipsub
	Menu, leftclick, UnCheck, Hide Tooltip
	Menu, leftclick, Add, Hide Tooltip, SuspendTooltip 
return


suspendTip:
  if (A_IsSuspended)
	{
		TrayTip, %OutputVar%, Hot Keys suspended`nPress [pause] to resume
		ToolTip,,
		Menu, leftclick, Check, Suspend Hotkeys
	} else {
		TrayTip, %OutputVar%, Hot Keys active
		ToolTip , %OutputVar% , A_ScreenWidth -tooltipoffset -(StrLen(OutputVar) * tooltipletwidth), 0, 
		Menu, leftclick, UnCheck, Suspend Hotkeys
	}
return



; functions ================================================================================

; depreciate unicodekey() function better to use much simplier form
; :c?*:em/::{u+2014}  ; em dash

unicodekey(codea,codeb=0000)     ; unicodekey Unicode function using sendinput
{
SendInput {U+%codea%}{U+%codeb%}
}

; depreciated mykey() function see note above
; The mykey() function can take one to three characters as parameters separated by commas.
; The values are decimal values not hex values. I know unicode is expressed in hex.
; there must be a return to end a new key combination.
;
mykey(codea,codeb=0000,codec=0000)     ; mykey function using sendinput
{
	SendInput {ASC %codea%}{ASC %codeb%}{ASC %codec%}
}

; left click menu handling
AHK_NotifyTrayIcon(wParam, lParam) ;handles left click on tray icon
{
 global 
 If lParam = 0x201
  ShowTrayPopup()
 return
}

ShowTrayPopup()
{
  Menu, leftclick, Show  
}

rota20(rota1,rota2,rota3,rota4,rota5,rota6,rota7,rota8,rota9,rota10,rota11,rota12,rota13,rota14,rota15,rota16,rota17,rota18,rota19,rota20,rota21)
{
	OldClipboard := Clipboard
	;OldClipboard := 
	SetKeyDelay, 5
	Send, +{Left}^c{Right}
	ClipWait
	SetKeyDelay, 0
	;if (Strlen(clipboard) = 0)
	;{
	;	Clipboard :=
	;}
	prevchar := Clipboard
	Clipboard := OldClipboard
	;MsgBox %prevchar%
	rp1 := InStr(rota1, prevchar, true)
	rp2 := InStr(rota2, prevchar, true)
	rp3 := InStr(rota3, prevchar, true)
	rp4 := InStr(rota4, prevchar, true)
	rp5 := InStr(rota5, prevchar, true)
	rp6 := InStr(rota6, prevchar, true)
	rp7 := InStr(rota7, prevchar, true)
	rp8 := InStr(rota8, prevchar, true)
	rp9 := InStr(rota9, prevchar, true)
	rp10 := InStr(rota10, prevchar, true)
	rp11 := InStr(rota11, prevchar, true)
	rp12 := InStr(rota12, prevchar, true)
	rp13 := InStr(rota13, prevchar, true)
	rp14 := InStr(rota14, prevchar, true)
	rp15 := InStr(rota15, prevchar, true)
	rp16 := InStr(rota16, prevchar, true)
	rp17 := InStr(rota17, prevchar, true)
	rp18 := InStr(rota18, prevchar, true)
	rp19 := InStr(rota19, prevchar, true)
	rp20 := InStr(rota20, prevchar, true)

	

	if (rp1 >= 1 )
	{
		;outchar := SubStr(rota1, rp1 + 1, 1)
		StringMid, outchar, rota1, rp1 + 1 , 1
		; MsgBox %lastchar% %outchar%
		
		SendInput, {bs}%outchar%
	} else if (rp2 >= 1) 
	{
		StringMid, outchar, rota2, rp2 + 1 , 1
		;outchar := SubStr(rota2, rp2 + 1, 1)
		SendInput, {bs}%outchar%	
	} else if (rp3 >= 1) 
	{
		StringMid, outchar, rota3, rp3 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp4 >= 1) 
	{
		StringMid, outchar, rota4, rp4 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp5 >= 1) 
	{
		StringMid, outchar, rota5, rp5 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp6 >= 1) 
	{
		StringMid, outchar, rota6, rp6 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp7 >= 1) 
	{
		StringMid, outchar, rota7, rp7 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp8 >= 1) 
	{
		StringMid, outchar, rota8, rp8 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp9 >= 1) 
	{
		StringMid, outchar, rota9, rp9 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp10 >= 1) 
	{
		StringMid, outchar, rota10, rp10 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp11 >= 1) 
	{
		StringMid, outchar, rota11, rp11 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp12 >= 1) 
	{
		StringMid, outchar, rota12, rp12 + 1 , 1
		SendInput, {bs}%outchar%	
	} else if (rp13 >= 1) 
	{
		StringMid, outchar, rota13, rp13 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp14 >= 1) 
	{
		StringMid, outchar, rota14, rp14 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp15 >= 1) 
	{
		StringMid, outchar, rota15, rp15 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp16 >= 1) 
	{
		StringMid, outchar, rota16, rp16 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp17 >= 1) 
	{
		StringMid, outchar, rota17, rp17 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp18 >= 1) 
	{
		StringMid, outchar, rota18, rp18 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp19 >= 1) 
	{
		StringMid, outchar, rota19, rp19 + 1 , 1
		SendInput, {bs}%outchar%
	} else if (rp20 >= 1) 
	{
		StringMid, outchar, rota20, rp20 + 1 , 1
		SendInput, {bs}%outchar%
	} else {
		SendInput, %rota21%
	}
}

rota2(rota1,rota2)
{
	OldClipboard := Clipboard
	OldClipboard := 
	SetKeyDelay, 50
	Send, {Shift down}{Left}{Shift up}^c{Right}
	ClipWait
	SetKeyDelay, 0
	prevchar := Clipboard
	;MsgBox %prevchar%
	rp1 := InStr(rota1, prevchar, true)
	rp2 := InStr(rota2, prevchar, true)
	if rp1 >= 1 
	{
		;outchar := SubStr(rota1, rp1 + 1, 1)
		StringMid, outchar, rota1, rp1 + 1 , 1
		; MsgBox %lastchar% %outchar%
		
		SendInput, {bs}%outchar%
	} else if (rp2 >= 1) 
	{
		StringMid, outchar, rota2, rp2 + 1 , 1
		;outchar := SubStr(rota2, rp2 + 1, 1)
		SendInput, {bs}%outchar%	
	} else {
		; does nothing
	}
}

