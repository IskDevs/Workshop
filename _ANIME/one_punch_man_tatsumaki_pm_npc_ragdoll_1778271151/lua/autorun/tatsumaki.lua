player_manager.AddValidModel( "Tatsumaki", "models/cyanblue/opm/tatsumaki/tatsumaki.mdl" );
player_manager.AddValidHands( "Tatsumaki", "models/cyanblue/opm/tatsumaki/arms/tatsumaki.mdl", 0, "00000000" )


local Category = "OPM"

local NPC =
{
	Name = "Tatsumaki",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/opm/tatsumaki/npc/tatsumaki.mdl",
	Category = Category
}

list.Set( "NPC", "npc_tatsumaki", NPC )

---------------------------------------------------
