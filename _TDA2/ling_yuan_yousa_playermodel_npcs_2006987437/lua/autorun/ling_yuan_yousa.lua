--Add Playermodel
player_manager.AddValidModel( "Ling Yuan yousa", "models/player/ling_yuan_yousa.mdl" )
player_manager.AddValidHands( "Ling Yuan yousa", "models/arms/ling_yuan_yousa_arms.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC =
{
	Name = "Ling Yuan yousa (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/ling_yuan_yousa_npc.mdl",
	Category = Category
}

list.Set( "NPC", "ling_yuan_yousa_friendly", NPC )

local NPC =
{
	Name = "Ling Yuan yousa (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/ling_yuan_yousa_npc.mdl",
	Category = Category
}

list.Set( "NPC", "ling_yuan_yousa_enemy", NPC )
