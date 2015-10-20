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
#include menusetup.ahk

startscript := A_ScriptName             ; Define the name of the file for the tool tip and tray message


; remove the file extension from the script name.
StringTrimRight, OutputVar, startScript, 4
iconfile := OutputVar . ".ico"
menu, tray, Icon, %iconfile%

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

	Loop, %max_keboards% ; menu loop to create each numbered menu item
	{
		script := script%A_index%
		scriptmenu := script%A_index%menu
		StringSplit, filename, script, .	
		
		IfExist, %script%
		{
			Menu, leftclick, add, %scriptmenu%, startscript%A_index%, P1
			Menu, leftclick, Icon, %scriptmenu%, %filename1%.ico,
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
tooltipoffset = 150
; the tooltipletwidth is an approximation of how wide a letter is in pixels. Its purpose is to keep the tooltips right border the same as the Keys Off tooltip.
tooltipletwidth = 7
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

; depreciate unicodekey() function better to use form, much simplier from
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