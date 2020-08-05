extern int32_t __thiscall BuildingClass_GetOccupantCount(BuildingClass *this);
//004581F0

extern int32_t __thiscall ObjectClass_DistanceFrom(BuildingClass *this, AbstractClass *tgt);
//005F6440

//this...Veterancy = (float)(*(this + 336))
extern byte __fastcall Veterancy_IsElite(float *this);
//00750010

extern int32_t __fastcall
int32_t GetNextOccupantIndex(BuildingClass* bld, AbstractClass* tgt)
{
    int32_t prev = bld->FiringOccupantIndex;
    int32_t cnt = BuildingClass_GetOccupantCount(bld);
    int32_t next = (prev + 1) % cnt;

    while (next != prev)
    {
        InfantryClass* inf = bld->Occupants[next];
        int32_t range;

        if (Veterancy_IsElite((float*)(inf + 336))) //this...Veterancy = (float)(*(this + 336))
            range = inf->InfantryType->EliteOccupyWeapon->WeaponType->Range;
        else
            range = inf->InfantryType->OccupyWeapon->WeaponType->Range;

        if (range <= ObjectClass_DistanceFrom(bld, tgt))
            return next;

        next = (prev + 1) % cnt;
    }

    return next;
}