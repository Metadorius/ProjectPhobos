%include "macros/patch.inc"
%include "macros/datatypes.inc"

cextern MapClass_DamageArea_NewHardCodeLogics

hack 0x00489280 ;MapClass_DamageArea
    pushad
    mov ecx,esp
    call MapClass_DamageArea_NewHardCodeLogics
    popad
    push ebp
    mov  ebp,esp
    and  esp,0xFFFFFFF8
    jmp  0x489286
