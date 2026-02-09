player_manager.AddValidModel( "Nahida", "models/cyanblue/genshin_impact/nahida/nahida.mdl" );
player_manager.AddValidHands( "Nahida", "models/cyanblue/genshin_impact/nahida/arms/nahida.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC = { 	Name = "Nahida", 
				Class = "npc_citizen",
				Model = "models/cyanblue/genshin_impact/nahida/npc/nahida.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_nahida_genshin_impact", NPC )