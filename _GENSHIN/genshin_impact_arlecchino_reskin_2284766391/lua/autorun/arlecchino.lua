player_manager.AddValidModel( "Arlecchino", "models/cyanblue-r/genshin_impact/arlecchino/arlecchino.mdl" );
player_manager.AddValidHands( "Arlecchino", "models/cyanblue-r/genshin_impact/arlecchino/arms/arlecchino.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC = { 	Name = "Arlecchino", 
				Class = "npc_citizen",
				Model = "models/cyanblue/genshin_impact/arlecchino/npc/arlecchino.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_arlecchino_genshin_impact", NPC )