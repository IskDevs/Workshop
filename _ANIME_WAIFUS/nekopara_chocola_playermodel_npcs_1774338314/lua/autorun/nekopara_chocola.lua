--Add Playermodel
player_manager.AddValidModel( "Nekopara Chocola", "models/player/nekopara_chocola.mdl" )
player_manager.AddValidHands( "Nekopara Chocola", "models/arms/nekopara_chocola_arms.mdl", 0, "00000000" )

local Category = "Nekopara"

local NPC =
{
	Name = "Chocola (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/nekopara_chocola_npc.mdl",
	Category = Category
}

list.Set( "NPC", "nekopara_chocola_friendly", NPC )

local NPC =
{
	Name = "Chocola (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/nekopara_chocola_npc.mdl",
	Category = Category
}

list.Set( "NPC", "nekopara_chocola_enemy", NPC )
