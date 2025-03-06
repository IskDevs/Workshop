player_manager.AddValidModel( "Genshin Impact Gorou", "models/gorou/genshin_impact/rstar/gorou/gorou.mdl" );
player_manager.AddValidHands( "Genshin Impact Gorou", "models/gorou/genshin_impact/rstar/gorou/arms/gorou_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"


local NPC =
{
	Name = "Gorou (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/gorou/genshin_impact/rstar/gorou/gorou_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_gorou_friendly", NPC )



local NPC =
{
	Name = "Gorou (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/gorou/genshin_impact/rstar/gorou/gorou_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "genshin_impact_gorou_enemy", NPC )