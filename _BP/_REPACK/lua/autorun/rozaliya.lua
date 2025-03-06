--Add Playermodel
player_manager.AddValidModel( "Rozaliya Olenyeva", "models/survivors/rozaliya.mdl" )
player_manager.AddValidHands( "Rozaliya Olenyeva", "models/weapons/arms/rozaliya.mdl", 0, "0000000" )

--Add NPC
local Category = "Honkai Impact 3"

--Friendly NPC
local NPC = 
{
    Name = "Rozaliya Friendly",
    Class = "npc_citizen",
	Model = "models/survivors/npc/rozaliya_f.mdl",
	Health = "250",
	Weapons = { "weapon_shotgun" },
	KeyValues = { citizentype = 3 },
	Category = Category
}
list.Set( "NPC", "rozaliya_Friendly", NPC )

--Hostile NPC
local NPC = 
{
    Name = "Rozaliya Hostile",
	Class = "npc_combine_s",
	Model = "models/survivors/npc/rozaliya_h.mdl",
    Weapons = { "weapon_smg1" },
	Health = "50",
	Category = Category
}
list.Set( "NPC", "rozaliya_Hostile", NPC )