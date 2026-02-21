--Add Playermodel
player_manager.AddValidModel( "MDN VII Vert Nightwear", "models/player/vert_nightwear.mdl" )
player_manager.AddValidHands( "MDN VII Vert Nightwear", "models/arms/vert_nightwear_arms.mdl", 0, "00000000" )

local Category = "MEGADimension VII"

local NPC =
{
	Name = "Vert Nightwear VII (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/vert_nightwear_npc.mdl",
	Category = Category
}

list.Set( "NPC", "vert_nightwear_friendly", NPC )

local NPC =
{
	Name = "Vert Nightwear VII (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/vert_nightwear_npc.mdl",
	Category = Category
}

list.Set( "NPC", "vert_nightwear_enemy", NPC )
