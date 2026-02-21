--Add Playermodel
player_manager.AddValidModel( "FKG Nightshade", "models/player/nightshade.mdl" )
player_manager.AddValidHands( "FKG Nightshade", "models/arms/nightshade_arms.mdl", 0, "00000000" )

local Category = "Flower Knight Girl"

local NPC =
{
	Name = "Nightshade (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/nightshade_npc.mdl",
	Category = Category
}

list.Set( "NPC", "nightshade_friendly", NPC )

local NPC =
{
	Name = "Nightshade (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/nightshade_npc.mdl",
	Category = Category
}

list.Set( "NPC", "nightshade_enemy", NPC )
