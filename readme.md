# SimpleKeys

An implementation of modular multiple keyboards using AutoHotKeys.

## Setup overview

* Download and install a Unicode version of Autohotkey from (https://autohotkey.com/download/)[https://autohotkey.com/download/]
* Download the SimpleKeys master.zip
* Unzip in a place tat suits you. I put my scripts in a AHK folder on my desktop.
* Open menuslist.txt and edit to add your AHK menu names and scripts.
* Open each of your scripts and add the two essential lines at the top.
* Make sure you have a matching .ico for for each script. (will be created if you foget)
* Add a shortcut to No_Keyboard.ahk and add to the Windows Startup folder.
* Start the No_Keyboard.ahk 

## Required files

* simplekeys.ahk
* menuslist.txt (new from 2016-05-13)
* your AHK scripts or mine if they help you
* your icon files to match your scripts (new an icon will be copied from an existing one, if noe exists)

## Optional files

* No_Keyboard.ahk (Highly recommended as it means you can have everykey turned off but still have access to your other keyboards)

Within the menulist.txt file you need to specify a pair of fields separated by a semicolon. Each line will be a menu item.


````
My-HTML;HTML keyboard
anotherfile;Another AHK script
````

The part before teh semicolon is the file name with out the period or extension. The part after the semicolon is the wording to go in the menu.


My full menulist.txt looks like this:

````
My-HTML;HTML shortcuts
ipa;IPA keyboard
javascript;Javascript
notetab;NoteTab
myPLBkeys;My PLB keyboard
PLBkeys;PLB traditional keyboard
paratextregex;regex keyboard
Transcriber-Timing-Assistant;Transcriber Timing Assistant
Unicode;Unicode keyboard
xslt;xslt shortcuts
IanAutoReplace;Ian's autoreplace
````

* You need to specify the Menu wording for the AHK script
* You need to specify the name part used by the script. 

You must have a matching Icon for each script named, If you don't one will be created for the new script. A white H on a red background.

* unicode.ahk
* unicode.ico

You can have up to 30 scripts in your menu. If that is not enough, it can be expanded in the simplekeys.ahk file. Goto Line 248.

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

## New Rota function supported (2016-05-13)

See unicode.ahk for a working example.

Rotas provide a way of changing the last typed letter to the same base letter but with a diacritic or some other variation.

### Very Important, take note

If you are using Unicode characters you must encode both your script and the simplekeys.ahk in UTF-8 with a Byte Order Mark (BOM). Failure to do that will cause the scripts to not work as expected. Editors that know about UTF-8 and BOM are: Notepad++, Scite4Autohotkey and other Scite variants.

If the hot key does not change with out repeatedly pressing the hot key you may need to adjust the key `SetKeyDelay, 50` to a higher value. They 100 and increment up by 50 until it works each key press. Goto line 335 or simplekeys.ahk.

The rotas are not too hard to define.

```
:Z?*:]\::\

:?*:\::
	; rota for many groups
    ; note sub-groups within each set must start and end with the same unaccented letter
	rota10("aāàáâãäåaeēèéêëeiīìíîïioōòóôõöouūùúûüu","AĀÀÁÂÃÄÅAEĒÈÉÊËEIĪÌÍÎÏIOŌÒÓÔÕÖOUŪÙÚÛÜU","nñŋn","NÑŊN","","","","","","")
return
```

The above uses the \ as the trigger key. In order to write that character we need to define keyboard shorcut so we can write it if needed. `:Z?*:]\::\`  the first line from above.

The you need to define your rota sub-groups. A sub-group starts and ends with the same letter. Between those two letters place each character variant starting with the most commonly used. You can have as many sub-groups added to gether inside of one pair of double quotes. I have chosen to put all my lower case vowels together with ā first as that is my highest use then à next as that is my next use variant. Then I have all my Uppercase vowels. Then my n lowercase variants followed by my N variants. I have 6 more spare places I could define other sets. In theory they could all go together but this seems more managable.

Again your files like unicode.ahk and simplekeys.ahk must be UTF-8 and have a BOM.
