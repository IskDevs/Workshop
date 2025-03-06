player_manager.AddValidModel( "Yunjin", "models/cyanblue/genshin_impact/yunjin/yunjin.mdl" );
player_manager.AddValidHands( "Yunjin", "models/cyanblue/genshin_impact/yunjin/arms/yunjin.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC = { 	Name = "Yunjin", 
				Class = "npc_citizen",
				Model = "models/cyanblue/genshin_impact/yunjin/npc/yunjin.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_yunjin_genshin_impact", NPC )