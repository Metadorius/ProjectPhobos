%include "macros/patch.inc"

@LJMP    0x423358, ReplaceShpShadowCheck
ReplaceShpShadowCheck:        ; Replace checking of HasExtras with checking of HasExtras && Shadow
     mov  edi, [esp+114h]     ; Restore original code

     push edx                 ; Store previously used register value
     mov  edx, [esi+0C8h]     ; AnimClass->AnimType
     mov  al, [edx+372h]      ; AnimType->Shadow
     pop  edx                 ; Restore previously used register value
     test al, al              ; if (AnimClass->AnimType->Shadow)...
     jz   0x4233EE            ; else don't check next condition

     mov  al, [esi+194h]      ; AnimClass->HasExtras
     test al, al              ; if (AnimClass->HasExtras) ...
     jz   0x4233EE            ; else skip shadow drawing block
