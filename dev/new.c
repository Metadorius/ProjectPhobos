#include "YurisRevenge.h"

//WarheadTypeClass
typedef struct WarheadTypeClass {} WarheadTypeClass;
extern bool __thiscall 
WarheadTypeClass_CompareByID(WarheadTypeClass* this, char* pID);
//WarheadTypeClass


//MapClass
extern void __thiscall MapClass_Reveal  (MapClass* this, HouseClass* thisHouse);
extern void __thiscall MapClass_Reshroud(MapClass* this, HouseClass* thisHouse);
//MapClass

//HouseClass
extern bool __fastcall
HouseClass_ControlledByPlayer(HouseClass* this);

extern bool __fastcall
HouseClass_ControlledByHuman(HouseClass* this);

extern HouseClass* __fastcall
HouseClass_FindByIndex(int idxHouse);

extern bool __thiscall
HouseClass_IsAlliedWith(HouseClass* HouseA, HouseClass* HouseB);

extern bool __thiscall
HouseClass_Fire_SW(HouseClass* this, int idx, CoordStruct* coords);

extern void __fastcall 
HouseClass_RevealMap(HouseClass* thisHouse){
	MapClass_Reveal(&MapClass_Instance, thisHouse);
};

extern void __fastcall 
HouseClass_ReshroudMap(HouseClass* thisHouse);

extern void __fastcall
HouseClass_ReshroudMapForOpponents(HouseClass* thisHouse){
	for(int i = 4475; i<4483; i++){
		HouseClass* targetHouse = HouseClass_FindByIndex(i);
		if(!targetHouse) continue;
		if(!HouseClass_ControlledByHuman(targetHouse)) continue;
		if(targetHouse->Defeated) continue;
		//if(targetHouse->Observer) continue;
		if(HouseClass_IsAlliedWith(thisHouse, targetHouse)) continue;
		HouseClass_ReshroudMap(targetHouse);
	}
};
//HouseClass

typedef struct MapClass_DamageArea {
	DWORD EDI;
	DWORD ESI;
	DWORD EBP;
	DWORD ESP;
	DWORD EBX;
	int32_t Damage;      //EDX
	CoordStruct* Coords; //ECX
	DWORD EAX;
	DWORD ReturnAddress;
	TechnoClass* SourceObject;
	WarheadTypeClass* Warhead;
	bool AffectsTiberium;
	HouseClass* SourceHouse;
} MapClass_DamageArea;

extern void __fastcall
MapClass_DamageArea_NewHardCodeLogics(MapClass_DamageArea* args)
{
	if(args->Warhead){
		WarheadTypeClass* WH = args->Warhead;
		HouseClass* thisHouse = args->SourceHouse;
		
		if(WarheadTypeClass_CompareByID(WH, "SpySatSW_WH")){
			HouseClass_RevealMap(thisHouse);
			return;
		}
		
		if(WarheadTypeClass_CompareByID(WH, "BigGapSW_WH")){
			HouseClass_ReshroudMapForOpponents(thisHouse);
			return;
		}
	}
}
