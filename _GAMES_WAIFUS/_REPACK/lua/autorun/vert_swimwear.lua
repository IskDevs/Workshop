--Add Playermodel
player_manager.AddValidModel( "MDN VII Vert Swimwear", "models/player/vert_swimwear.mdl" )
player_manager.AddValidHands( "MDN VII Vert Swimwear", "models/arms/vert_swimwear_arms.mdl", 0, "00000000" )

local Category = "MEGADimension VII"

local NPC =
{
	Name = "Vert Swimwear VII (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/vert_swimwear_npc.mdl",
	Category = Category
}

list.Set( "NPC", "vert_swimwear_friendly", NPC )

local NPC =
{
	Name = "Vert Swimwear VII (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/vert_swimwear_npc.mdl",
	Category = Category
}

list.Set( "NPC", "vert_swimwear_enemy", NPC )
