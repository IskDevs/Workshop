player_manager.AddValidModel( "Genshin Impact Yae Miko", "models/yae_miko/genshin_impact/rstar/yae_miko/yae_miko.mdl" );
player_manager.AddValidHands( "Genshin Impact Yae Miko", "models/yae_miko/genshin_impact/rstar/yae_miko/arms/yae_miko_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"


local NPC =
{
	Name = "Yae Miko (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/yae_miko/genshin_impact/rstar/yae_miko/yae_miko_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_yae_miko_friendly", NPC )



local NPC =
{
	Name = "Yae Miko (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/yae_miko/genshin_impact/rstar/yae_miko/yae_miko_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "genshin_impact_yae_miko_enemy", NPC )