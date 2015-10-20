# SimpleKeys

An implementation of multiple keyboards using AutoHotKeys.

## Setup overview

* Download the SimpleKeys master.zip
* Unzip in a place tat suits you. I put my scripts in a AHK folder on my desktop.
* Open menusetup.ahk and edit to add your AHK menu names and scripts.
* Open each of your scripts and add the two essential lines at the top.
* Make sure you have a matching .ico for for each script.
* Add a shortcut to No_Keyboard.ahk and add to the Windows Startup folder.
* Start the No_Keyboard.ahk 

## Required files

* simplekeys.ahk
* menusetup.ahk
* your AHK scripts or mine if they help you
* your icon files to match your scripts

## Optional files

* No_Keyboard.ahk (Highly recommended as it means you can have everykey turned off but still have access to your other keyboards)

Within the menusetup.ahk file you need to specify a pair of variables for each script that you want to appear on the menu. 

````
script1menu := "HTML keyboard"
script1 := "My-HTML.ahk"
````

`script1menu` specifies the menu wording for the system tray left click icon menu.

`script1` specifies the script for the menu item with the same number. Icon files are not specified as the name is taken from the name of the AHK file.

My full menu looks like this:

````
script1menu := "HTML keyboard"
script1 := "My-HTML.ahk"

script2menu := "Ian's autoreplace keyboard"
script2 := "IanAutoReplace.ahk"

script3menu := "Javascript keyboard"
script3 := "javascript.ahk"

script4menu := "NoteTab"
script4 := "notetab.ahk"

script5menu := "My PLB keyboard"
script5 := "myPLBkeys.ahk"

script6menu := "PLB traditional keyboard"
script6 := "PLBkeys.ahk"

script7menu := "regex keyboard"
script7 := "paratextregex.ahk"

script8menu := "Transcriber keyboard"
script8 := "Transcriber-Timing-Assistant.ahk"

script9menu := "Unicode keyboard"
script9 := "Transcriber-Timing-Assistant.ahk"

script10menu := "xslt keyboard"
script10 := "xslt.ahk"

; the next value can be up to 30, but set to your maximum number of keyboards
max_keboards:=10

; Highly recommended optional variables below
; Place a link in your start up folder so that nothing is active but you have all your scripts available with a left mouse click of the icon.
nokeyboardmenu := "No Keyboard"
nokeyboardscript := "No_Keyboard.ahk"
````

* You need to specify the Menu wording for the AHK script
* You need to specify the name of the script. 

You must have a matching Icon for each script named
* unicode.ahk
* unicode.ico

You can have up to 30 scripts in your menu. If that is not enough it can be expanded in the simplekeys.ahk file. 

The `max_keyboards` variable is only there to limit the search for other menus.

Sample Scalable Vector Graphics (SVG)) files created in Inkscape are in the iconArt folder.

## Setup each script to work with SimpleKeys

At the top of each script you want to include in your SimpleKeys setup, you must have two lines of code.

````
#SingleInstance force   ; make sure ony one instance
#include simplekeys.ahk	; This line is required at the start of a simplekeys script file.

````

My scripts have other documnentation there like this.

````
; Suspend current SimpleKeys script
;
; Written by Ian McQuay
; 2007-Dec-16
; Revised by IM 16/8/2011
; Major revision:   2015-10-03
    ; Header revised to go with revisions of simplekeys.ahk
;

; DO not edit the following >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; The folloing three lines should be after icon file variable
#SingleInstance force   ; make sure ony one instance
#include simplekeys.ahk	; This line is required at the start of a simplekeys script file.
;
; >>>>>>>>>>>>>>>>>>>>>>>>>>> Edit what ever afer this line <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
````

Documentation is recommended but is not required.

## Scripts supplied

Most of the AHK scripts supplied are fairly minimal, and are used as examples. The XSLT one I use all the time.
