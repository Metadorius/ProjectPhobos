%include "macros/patch.inc"

@CLEAR   0x423358, 0x90, 0x42336D
@LJMP    0x423358, replace_shp_shadow_check

replace_shp_shadow_check:     ; Replace: checking of HasExtras => checking of HasExtras && Shadow
     mov  edi, [esp+114h]     ; Restore original code

     push edx                 ; Store previously used register value
     mov  edx, [esi+0C8h]     ; AnimClass->AnimType
     mov  al, [edx+372h]      ; AnimType->Shadow
     pop  edx                 ; Restore previously used register value
     test al, al              ; if (AnimClass->AnimType->Shadow)...
     jz   .lct_skip_shadow    ; else skip

     mov  al, [esi+194h]      ; AnimClass->HasExtras
     test al, al              ; if (AnimClass->HasExtras) ...
     jz   .lct_skip_shadow    ; else skip

     jmp  .lct_return             


.lct_skip_shadow:
     jmp 0x4233EE

.lct_return:
     jmp 0x42336D