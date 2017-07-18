sub_401000:
00401000         push       ebp                                                 ; CODE XREF=sub_4010d0+461
00401001         mov        ebp, esp
00401003         mov        al, byte [ecx]
00401005         sub        esp, 0x20
00401008         push       esi
00401009         xor        esi, esi ; esi == 0x0 ?
0040100b         test       al, al
0040100d         je         loc_4010c6

00401013         lea        edx, dword [ebp+var_20] ; magic starts here
00401016         sub        edx, ecx ; edx -= ecx

loc_401018:
00401018         cmp        al, 0x61; a                                         ; CODE XREF=sub_401000+50
0040101a         jl         loc_4010c6 ; die

00401020         cmp        al, 0x7a ; z
00401022         jg         loc_4010c6 ; die

; checks either if the first char is a or z or between a-z.
; al = serial[ecx+1]
; EDIT: After working through the whole code I know that it checks if all chars are between a-z.
; EDIT: It loops back at 00401032, and ecx keeps getting incremented.
; EDIT: Now it's obvious that it loops until the NullByte (\0)

00401028         mov        byte [edx+ecx], al ; copy al to edx+ecx

; edx+ecx == ebp+var_20

0040102b         mov        al, byte [ecx+1] ; load string[1]
0040102e         inc        ecx ; ecx++ => byte [ecx+1] == ecx
0040102f         inc        esi ; esi++
00401030         test       al, al ; this is the NullByte
00401032         jne        loc_401018 ; do again, for next char.

; I just realised that esi get's incremented which means esi == serial.length()

00401034         cmp        esi, 0x1a ; compares if esi == 26
00401037         jne        loc_4010c6 ; die, if esi is not 26

; Now we know that it dies if esi is not 26 which means that the length of our serial must be 26!

0040103d         xor        eax, eax
0040103f         nop

loc_401040:
00401040         mov        cl, byte [eax+0x403010]                             ; CODE XREF=sub_401000+79
00401046         mov        byte [eax+0x403140], cl

; copy byte 0x403010 to 0x403140

0040104c         inc        eax
0040104d         test       cl, cl ; starts with \0 e.g. if serial == ""
0040104f         jne        loc_401040 ; wut?

00401051         xor        ecx, ecx
00401053         cmp        byte [0x403140], cl                                 ; 0x403140
00401059         je         loc_401088

0040105b         jmp        loc_401060 ; end of routine
