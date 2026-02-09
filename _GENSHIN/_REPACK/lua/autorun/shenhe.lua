player_manager.AddValidModel( "Shenhe", "models/cyanblue/genshin_impact/shenhe/shenhe.mdl" );
player_manager.AddValidHands( "Shenhe", "models/cyanblue/genshin_impact/shenhe/arms/shenhe.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC = { 	Name = "Shenhe", 
				Class = "npc_citizen",
				Model = "models/cyanblue/genshin_impact/shenhe/npc/shenhe.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_Shenhe_genshin_impact", NPC )