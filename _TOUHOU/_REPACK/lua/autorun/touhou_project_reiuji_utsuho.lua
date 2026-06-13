--Add Playermodel
player_manager.AddValidModel( "Reiuji Utsuho", "models/okon/okon_pm.mdl" )
player_manager.AddValidHands( "Reiuji Utsuho", "models/okon/okon_arms.mdl", 0, "00000000" )

local Category = "Touhou"

local NPC =
{
	Name = "Reiuji Utsuho (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/okon/okon_npc.mdl",
	Category = Category
}

list.Set( "NPC", "okon_friendly", NPC )

local NPC =
{
	Name = "Reiuji Utsuho (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/okon/okon_npc.mdl",
	Category = Category
}

list.Set( "NPC", "okon_enemy", NPC )
