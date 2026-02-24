--Add Playermodel
player_manager.AddValidModel( "Mobius", "models/Honkai Impact 3rd/mobius.mdl" )
player_manager.AddValidHands( "Mobius", "models/Honkai Impact 3rd/mobius hand.mdl", 0, "00000000" )

local Category = "Honkai Impact 3rd"

local NPC =
{
	Name = "Mobius (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/Honkai Impact 3rd/npc/mobius friendly.mdl",
	Weapons = { "weapon_pistol,weapon_357,weapon_smg1" },
	Category = Category
}

list.Set( "NPC", "Mobius_friendly", NPC )

local NPC =
{
	Name = "Mobius (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/Honkai Impact 3rd/npc/mobius hostile.mdl",
	Weapons = { "weapon_ar2,weapon_shotgun,weapon_smg1" },
	Category = Category
}

list.Set( "NPC", "Mobius_hostile", NPC )
