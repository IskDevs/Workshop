player_manager.AddValidModel( "TDA Haku Floral", "models/l4d2/TDA Haku Floral.mdl" )
AddCSLuaFile{}
player_manager.AddValidHands( "TDA Haku Floral", "models/weapons/haku_floral_arms_new.mdl", 0, "00000000" )


local Category = "TDA"

local NPC =
{
     Name = "Haku Floral (Friendly)",
	 Class = "npc_citizen",
	 Health = "100",
	 KeyValues = { citizentype = 4 },
	 Model = "models/l4d2/TDA Haku Floral F.mdl",
	 Category = Category
}

list.Set( "NPC", "npc_HakuFloral_f", NPC )

local NPC =
{
     Name = "Haku Floral (Enemy)",
	 Class = "npc_combine_s",
	 Health = "100",
	 Numgrenades = "4",
	 Model = "models/l4d2/TDA Haku Floral E.mdl",
	 Weapons = { "weapon_pistol" },
	 Category = Category
}

list.Set( "NPC", "npc_HakuFloral_e", NPC )
