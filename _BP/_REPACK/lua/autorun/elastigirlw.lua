player_manager.AddValidModel( "Elastigirl", "models/elastigirlw/elastigirl.mdl" )
player_manager.AddValidHands( "Elastigirl", "models/elastigirlw/elastigirl_arms.mdl", 0, "00000000" )

local Category = "Incredibles"

local NPC =
{
	Name = "Elastigirl (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/elastigirlw/elastigirl.mdl",
	Category = Category
}

list.Set( "NPC", "elastigirlw_friendly", NPC )

local NPC =
{
	Name = "Elastigirl (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/elastigirlw/elastigirl.mdl",
	Category = Category
}

list.Set( "NPC", "elastigirlw_enemy", NPC )