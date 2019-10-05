#NoEnv
; #Warn
;	=Dvorak Hot Key Fixes ( Autohotkey )
;--------------------------------------
;----------------- LANG CONTROL

LANGUAGE_CODE := 1033
; Language code for Dvorak
; 4105 = CA, 1033 = US, 2057 = UK
; See README for more details

LWin::
	Suspend, Permit
	Send {LWin down}
	keyWait, LWin
	Send {LWin up}
	Sleep, 1 ; Allow DLL reference to update
	klCode := getActiveKL()
	if (klCode = LANGUAGE_CODE) {
		Suspend, Off
	} else {
		Suspend, On
	}
	
getActiveKL() {
	active_hwnd := WinExist("A")
	threadID := dllCall("GetWindowThreadProcessId", "uint", active_hwnd, "uint", 0)
	klCode := dllCall("GetKeyboardLayout", "uint", threadID, "uint") & 0xFFFF
	return klCode
}


;----------------- CTRL KEY

*^[::Send ^-
*^]::Send ^=

*^'::Send ^q
*^,::Send ^w
*^.::Send ^e
*^p::Send ^r
*^y::Send ^t
*^f::Send ^y
*^g::Send ^u
*^c::Send ^i
*^r::Send ^o
*^l::Send ^p
*^/::Send ^[
*^=::Send ^]

*^o::Send ^s
*^e::Send ^d
*^u::Send ^f
*^i::Send ^g
*^d::Send ^h
*^h::Send ^j
*^t::Send ^k
*^n::Send ^l
*^s::Send ^`;
*^-::Send ^'

*^`;::Send ^z
*^q::Send ^x
*^j::Send ^c
*^k::Send ^v
*^x::Send ^b
*^b::Send ^n
*^m::Send ^m
*^w::Send ^,
*^v::Send ^.
*^z::Send ^/

;----------------- ALT KEY

*![::Send !-
*!]::Send !=

*!'::Send !q
*!,::Send !w
*!.::Send !e
*!p::Send !r
*!y::Send !t
*!f::Send !y
*!g::Send !u
*!c::Send !i
*!r::Send !o
*!l::Send !p
*!/::Send ![
*!=::Send !]

*!o::Send !s
*!e::Send !d
*!u::Send !f
*!i::Send !g
*!d::Send !h
*!h::Send !j
*!t::Send !k
*!n::Send !l
*!s::Send !`;
*!-::Send !'

*!`;::Send !z
*!q::Send !x
*!j::Send !c
*!k::Send !v
*!x::Send !b
*!b::Send !n
*!m::Send !m
*!w::Send !,
*!v::Send !.
*!z::Send !/

;----------------- WINDOWS KEY

*#[::Send #-
*#]::Send #=

*#'::Send #q
*#,::Send #w
*#.::Send #e
*#p::Send #r
*#y::Send #t
*#f::Send #y
*#g::Send #u
*#c::Send #i
*#r::Send #o
*#l::Send #p
*#/::Send #[
*#=::Send #]

*#o::Send #s
*#e::Send #d
*#u::Send #f
*#i::Send #g
*#d::Send #h
*#h::Send #j
*#t::Send #k
*#n::Send #l
*#s::Send #`;
*#-::Send #'

*#`;::Send #z
*#q::Send #x
*#j::Send #c
*#k::Send #v
*#x::Send #b
*#b::Send #n
*#m::Send #m
*#w::Send #,
*#v::Send #.
*#z::Send #/
;END Dvorak Hot Key Fixes