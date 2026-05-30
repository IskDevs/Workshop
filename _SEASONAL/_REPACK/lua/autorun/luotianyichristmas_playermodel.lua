player_manager.AddValidModel( "TDA Luotianyi Christmas", "models/tda/Luotianyi Christmas.mdl" )
player_manager.AddValidHands( "TDA Luotianyi Christmas", "models/weapons/luotianyi_christmas_arms_new.mdl", 0, "00000000" )


local Category = "TDA"

local NPC =
{
     Name = "Luotianyi Christmas (Friendly)",
	 Class = "npc_citizen",
	 Health = "100",
	 KeyValues = { citizentype = 4 },
	 Model = "models/tda/Luotianyi Christmas F.mdl",
	 Category = Category
}

list.Set( "NPC", "npc_LuotianyiChristmas_f", NPC )

local NPC =
{
     Name = "Luotianyi Christmas (Enemy)",
	 Class = "npc_combine_s",
	 Health = "100",
	 Numgrenades = "4",
	 Model = "models/tda/Luotianyi Christmas E.mdl",
	 Weapons = { "weapon_pistol" },
	 Category = Category
}

list.Set( "NPC", "npc_LuotianyiChristmas_e", NPC )
