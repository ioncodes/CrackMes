;-- -[UnicornAppDelegate validateSerial:forName:]:
0x00002a41      55             push ebp
0x00002a42      89e5           mov ebp, esp
0x00002a44      83ec18         sub esp, 0x18
0x00002a47      c74424084430.  mov dword [esp + 8], reloc.__CFConstantStringClassReference_68 ; [0x3044:4]=0
0x00002a4f      a110400000     mov eax, dword [0x4010]     ; [0x4010:4]=0x2eeb "stringByAppendingString:"
0x00002a54      89442404       mov dword [esp + 4], eax
0x00002a58      8b4514         mov eax, dword [ebp + 0x14] ; [0x14:4]=0x4470000
0x00002a5b      890424         mov dword [esp], eax
0x00002a5e      e86f020000     call sym.imp.objc_msgSend
0x00002a63      8b150c400000   mov edx, dword [0x400c]     ; [0x400c:4]=0x2ee0 "md5HexHash"
0x00002a69      89542404       mov dword [esp + 4], edx
0x00002a6d      890424         mov dword [esp], eax
0x00002a70      e85d020000     call sym.imp.objc_msgSend
0x00002a75      8b1508400000   mov edx, dword [0x4008]     ; [0x4008:4]=0x2ed0 "uppercaseString"
0x00002a7b      89542404       mov dword [esp + 4], edx
0x00002a7f      890424         mov dword [esp], eax
0x00002a82      e84b020000     call sym.imp.objc_msgSend
0x00002a87      c74424081400.  mov dword [esp + 8], 0x14   ; [0x14:4]=0x4470000
0x00002a8f      8b1504400000   mov edx, dword [0x4004]     ; [0x4004:4]=0x2ebe "substringToIndex:"
0x00002a95      89542404       mov dword [esp + 4], edx
0x00002a99      890424         mov dword [esp], eax
0x00002a9c      e831020000     call sym.imp.objc_msgSend
0x00002aa1      8b5510         mov edx, dword [ebp + 0x10] ; [0x10:4]=0x100000
0x00002aa4      89542408       mov dword [esp + 8], edx
0x00002aa8      8b1500400000   mov edx, dword [0x4000]     ; section.10.__OBJC.__message_refs ; [0x4000:4]=0x2ead "isEqualToString:"
0x00002aae      89542404       mov dword [esp + 4], edx
0x00002ab2      890424         mov dword [esp], eax
0x00002ab5      e818020000     call sym.imp.objc_msgSend
0x00002aba      84c0           test al, al
0x00002abc      0f95c0         setne al
0x00002abf      c9             leave
0x00002ac0      c3             ret
