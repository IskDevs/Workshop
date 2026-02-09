player_manager.AddValidModel( "Yae Sakura", "models/pacagma/honkai_impact/yae_sakura/yae_sakura_player.mdl" );
player_manager.AddValidHands( "Yae Sakura", "models/pacagma/honkai_impact/yae_sakura/yae_sakura_arms.mdl", 0, "00000000" )

local Category = "Honkai Impact 3rd"

local NPC = { 	Name = "Yae Sakura - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/honkai_impact/yae_sakura/yae_sakura_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_yae_sakura_f", NPC )

local Category = "Honkai Impact 3rd"

local NPC = { 	Name = "Yae Sakura - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/honkai_impact/yae_sakura/yae_sakura_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_yae_sakura_h", NPC )