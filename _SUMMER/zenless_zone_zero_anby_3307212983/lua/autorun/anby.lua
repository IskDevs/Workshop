--Add Playermodel
player_manager.AddValidModel( "Anby", "models/anby/Anby.mdl" ) 
player_manager.AddValidHands( "Anby", "models/weapons/arms/AnbyArm.mdl", 0, "00000000" )

local Category = "ZZZ"

local NPC =
{
	Name = "Anby (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/anby/Anby.mdl",
	Category = Category
}

list.Set( "NPC", "npc_Anby_friendly", NPC )

local NPC =
{
	Name = "Anby (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/anby/Anby.mdl",
	Category = Category
}

list.Set( "NPC", "npc_Anby_enemy", NPC )
