--Add Playermodel
player_manager.AddValidModel( "FKG Setaria Green", "models/player/setaria_green.mdl" )
player_manager.AddValidHands( "FKG Setaria Green", "models/arms/setaria_green_arms.mdl", 0, "00000000" )

local Category = "Flower Knight Girl"

local NPC =
{
	Name = "Setaria Green (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/setaria_green_npc.mdl",
	Category = Category
}

list.Set( "NPC", "setaria_green_friendly", NPC )

local NPC =
{
	Name = "Setaria Green (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/setaria_green_npc.mdl",
	Category = Category
}

list.Set( "NPC", "setaria_green_enemy", NPC )
