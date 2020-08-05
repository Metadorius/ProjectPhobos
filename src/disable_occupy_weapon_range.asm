%include "macros/patch.inc"
%include "macros/setsym.inc"

@LJMP    0x6F7288, OccupyWeaponRange_skip
OccupyWeaponRange_skip:
     jmp 0x6F72C8

;авто поиск цели
@LJMP    0x6F9187, OccupyWeaponRange_SearchTarget
OccupyWeaponRange_SearchTarget:
     jmp 0x6F91A7

setcglob 0x4581F0, BuildingClass_GetOccupantCount
setcglob 0x5F6440, ObjectClass_DistanceFrom
setcglob 0x750010, Veterancy_IsElite

@CLEAR   0x6FF065, 0x90, 0x6FF085
@LJMP    0x6FF065, ReplaceNextOccupantIndex


;    mov  ecx, edi
ReplaceNextOccupantIndex:
     ; don't need to store any register values

     mov  edx, [ebp+8] ; dest
     call GetNextOccupantIndex ; eax
     mov  edx, eax

     jmp  0x6FF085
;     
;    mov [edi+BuildingClass.FiringOccupantIndex], edx