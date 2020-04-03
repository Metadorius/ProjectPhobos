%include "macros/patch.inc"

@LJMP    0x423358, ReplaceShpShadowCheck
ReplaceShpShadowCheck:        ; Replace checking of HasExtras with checking of HasExtras && Shadow
     push edx                 ; Store previously used register value
     mov  edx, [esi+0C8h]     ; AnimClass->AnimType
     mov  al, [edx+372h]      ; AnimType->Shadow
     pop  edx                 ; Restore previously used register value
     test al, al              ; if (AnimClass->AnimType->Shadow)...
     jz   0x4233EE            ; else don't check next condition

     mov  al, [esi+194h]      ; AnimClass->HasExtras
     jmp  0x42335E            ; Return to next instruction
