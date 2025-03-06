--Add Playermodel
player_manager.AddValidModel( "Nekopara Vanilla", "models/player/nekopara_vanilla.mdl" )
player_manager.AddValidHands( "Nekopara Vanilla", "models/arms/nekopara_vanilla_arms.mdl", 0, "00000000" )

local Category = "Nekopara"

local NPC =
{
	Name = "Vanilla (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/nekopara_vanilla_npc.mdl",
	Category = Category
}

list.Set( "NPC", "nekopara_vanilla_friendly", NPC )

local NPC =
{
	Name = "Vanilla (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/nekopara_vanilla_npc.mdl",
	Category = Category
}

list.Set( "NPC", "nekopara_vanilla_enemy", NPC )
