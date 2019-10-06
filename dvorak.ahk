#NoEnv
#MenuMaskKey vk07
;# Warn
;	=Dvorak Hot Key Fixes ( Autohotkey )
;--------------------------------------

;------------------ ENTRY POINT
LANGUAGE_CODE := 1033 ; SET THIS VALUE IF NEEDED
; Language code for Dvorak
; 4105 = CA, 1033 = US, 2057 = UK
; See README for more details

; Set initial state
klCode := getActiveKL()
if (klCode = LANGUAGE_CODE) {
	Suspend, Off
} else {
	Suspend, On
}

;----------------- LANG CONTROL
LWin::
	Suspend, Permit
	Send {LWin down}
	KeyWait LWin
	Send {LWin up}
	Sleep, 1 ; Allow DLL reference to update
	klCode := getActiveKL()
	if (klCode = LANGUAGE_CODE) {
		Suspend, Off
	} else {
		Suspend, On
	}
return

suspendCheck() {
	
}

getActiveKL() {
	active_hwnd := WinExist("A")
	threadID := dllCall("GetWindowThreadProcessId", "uint", active_hwnd, "uint", 0)
	klCode := dllCall("GetKeyboardLayout", "uint", threadID, "uint") & 0xFFFF
	return klCode
}

;----------------- CTRL+SHIFT KEY

*^+[::Send ^+-
*^+]::Send ^+=

*^+'::Send ^+q
*^+,::Send ^+w
*^+.::Send ^+e
*^+p::Send ^+r
*^+y::Send ^+t
*^+f::Send ^+y
*^+g::Send ^+u
*^+c::Send ^+i
*^+r::Send ^+o
*^+l::Send ^+p
*^+/::Send ^+[
*^+=::Send ^+]

*^+o::Send ^+s
*^+e::Send ^+d
*^+u::Send ^+f
*^+i::Send ^+g
*^+d::Send ^+h
*^+h::Send ^+j
*^+t::Send ^+k
*^+n::Send ^+l
*^+s::Send ^+`;
*^+-::Send ^+'

*^+`;::Send ^+z
*^+q::Send ^+x
*^+j::Send ^+c
*^+k::Send ^+v
*^+x::Send ^+b
*^+b::Send ^+n
*^+m::Send ^+m
*^+w::Send ^+,
*^+v::Send ^+.
*^+z::Send ^+/

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

;----------------- ALT+SHIFT KEY

*!+[::Send !+-
*!+]::Send !+=

*!+'::Send !+q
*!+,::Send !+w
*!+.::Send !+e
*!+p::Send !+r
*!+y::Send !+t
*!+f::Send !+y
*!+g::Send !+u
*!+c::Send !+i
*!+r::Send !+o
*!+l::Send !+p
*!+/::Send !+[
*!+=::Send !+]

*!+o::Send !+s
*!+e::Send !+d
*!+u::Send !+f
*!+i::Send !+g
*!+d::Send !+h
*!+h::Send !+j
*!+t::Send !+k
*!+n::Send !+l
*!+s::Send !+`;
*!+-::Send !+'

*!+`;::Send !+z
*!+q::Send !+x
*!+j::Send !+c
*!+k::Send !+v
*!+x::Send !+b
*!+b::Send !+n
*!+m::Send !+m
*!+w::Send !+,
*!+v::Send !+.
*!+z::Send !+/

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

#[::Send #-
#]::Send #=

#'::Send #q
#,::Send #w
#.::Send #e
#p::Send #r
#y::Send #t
#f::Send #y
#g::Send #u
#c::Send #i
#r::Send #o
#l::Send #p
#/::Send #[
#=::Send #]

#o::Send #s
#e::Send #d
#u::Send #f
#i::Send #g
#d::Send #h
#h::Send #j
#t::Send #k
#n::Send #l
#s::Send #`;
#-::Send #'

#`;::Send #z
#q::Send #x
#j::Send #c
#k::Send #v
#x::Send #b
#b::Send #n
#m::Send #m
#w::Send #,
#v::Send #.
#z::Send #/
;END Dvorak Hot Key Fixes