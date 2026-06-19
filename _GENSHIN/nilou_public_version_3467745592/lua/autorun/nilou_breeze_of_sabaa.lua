--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Nilou Breeze of Sabaa", "models/sheepylord/genshin_impact/genshin_impact_nilou_breeze_of_sabaa.mdl" )
player_manager.AddValidHands( "Genshin Impact Nilou Breeze of Sabaa", "models/sheepylord/genshin_impact/genshin_impact_nilou_breeze_of_sabaa_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact Outfit Alternatives"

local NPC =
{
	Name = "Nilou Breeze of Sabaa (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/sheepylord/genshin_impact/genshin_impact_nilou_breeze_of_sabaa.mdl",
	Category = Category
}

list.Set( "NPC", "Nilou_breeze_of_sabaa_F", NPC )

local NPC =
{
	Name = "Nilou Breeze of Sabaa (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/sheepylord/genshin_impact/genshin_impact_nilou_breeze_of_sabaa.mdl",
	Category = Category
}

list.Set( "NPC", "Nilou_breeze_of_sabaa_E", NPC )
