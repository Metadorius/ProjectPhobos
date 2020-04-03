%include "macros/patch.inc"

@LJMP    0x423358, ReplaceShpShadowCheck
ReplaceShpShadowCheck:        ; Replace checking of unknown field with checking of Shadow flag
     push edx                 ; Store previously used register value
     mov  edx, [esi+0C8h]     ; AnimClass->AnimType
     mov  al, [edx+372h]      ; AnimType->Shadow
     pop  edx                 ; Restore previously used register value
     jmp  0x42335E            ; Return to next instruction
