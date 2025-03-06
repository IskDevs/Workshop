--Add Playermodel
player_manager.AddValidModel( "Liliya Olenyeva", "models/survivors/liliya.mdl" )
player_manager.AddValidHands( "Liliya Olenyeva", "models/weapons/arms/liliya.mdl", 0, "0000000" )

--Add NPC
local Category = "Honkai Impact 3"

--Friendly NPC
local NPC = 
{
    Name = "Liliya Friendly",
    Class = "npc_citizen",
	Model = "models/survivors/npc/liliya_f.mdl",
	Health = "250",
	Weapons = { "weapon_smg1" },
	KeyValues = { citizentype = 3 },
	Category = Category
}
list.Set( "NPC", "liliya_Friendly", NPC )

--Hostile NPC
local NPC = 
{
    Name = "Liliya Hostile",
	Class = "npc_combine_s",
	Model = "models/survivors/npc/liliya_h.mdl",
    Weapons = { "weapon_shotgun" },
	Health = "50",
	Category = Category
}
list.Set( "NPC", "liliya_Hostile", NPC )