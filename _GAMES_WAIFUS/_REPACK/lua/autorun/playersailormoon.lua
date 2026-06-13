player_manager.AddValidModel( "Usagi Tsukino- Sailor Moon","models/custom/sailor_moon.mdl" )
player_manager.AddValidHands( "Usagi Tsukino- Sailor Moon", "models/custom/sailor_moon_viewarms.mdl", 0, "00000000" )


--Add NPC
local NPC =
{
	Name = "Sailor Moon- Friendly",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/custom/sailor_moon_senshi.mdl",
	Category = "Pretty Guardian Sailor Moon",
}

list.Set( "NPC", "sailor_moon_senshi", NPC )

--Add NPC
local NPC =
{	
	Name = "Sailor Moon- Hostile",
	Class = "npc_combine_s",
	Model = "models/custom/sailor_moon_dark.mdl",
	Category = "Pretty Guardian Sailor Moon",
}

list.Set( "NPC", "sailor_moon_dark", NPC )