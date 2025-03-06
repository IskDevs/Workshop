--Add Playermodel
player_manager.AddValidModel( "MDN VII Vert Default", "models/player/vert_default.mdl" )
player_manager.AddValidHands( "MDN VII Vert Default", "models/arms/vert_default_arms.mdl", 0, "00000000" )

local Category = "MEGADimension VII"

local NPC =
{
	Name = "Vert Default VII (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/vert_default_npc.mdl",
	Category = Category
}

list.Set( "NPC", "vert_default_friendly", NPC )

local NPC =
{
	Name = "Vert Default VII (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/vert_default_npc.mdl",
	Category = Category
}

list.Set( "NPC", "vert_default_enemy", NPC )
