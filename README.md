## Multi-Keyboard Dvorak AHK
> An AutoHotkey script to change Dvorak hotkeys to QWERTY hotkeys without affecting different layouts

An AutoHotkey script that allows for the use of QWERTY hotkeys on a Dvorak layout without the need to disable the script when using a different keyboard layout. The script does this by detecting the current keyboard language and disabling itself depending on the language assigned to Dvorak (default US) when using Ctrl + Space to switch layouts.

## Requirements
[AutoHotkey](https://www.autohotkey.com/) ([DDL](https://www.autohotkey.com/download/ahk-install.exe))

## Setup
Go to Language settings (in Windows Settings) and set any one language's keyboard layouts to be Dvorak only.

(Optional) Set default layout by bringing a language to the top of list. Alternatively, search for "Override for default input methods" and change "Use langauge list" to desired language (this method prevents system language changes).

(Skip if using US for Dvorak) In dvorak.ahk, set "LANGUAGE_CODE" (line 7) to the corresponding language code in decimal ([Language codes](https://www.autohotkey.com/docs/misc/Languages.htm). Use hex to dec convertor).

(Optional) Set the script to run on startup by adding a shortcut to file to "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"

## Credit
[Original project](https://gist.github.com/troynt/205106) by [troynt](https://github.com/troynt).
Note that the project was indirectly forked from the original git gist 
to this git repo.

## Warning
May not function properly on pre-Windows 10 versions as the DLL call may be different.
