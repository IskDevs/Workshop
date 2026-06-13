player_manager.AddValidModel( "LLENN V2", "models/pacagma/sao/llenn_v2/llenn_v2_player.mdl" );
player_manager.AddValidHands( "LLENN V2", "models/pacagma/sao/llenn_v2/llenn_v2_arms.mdl", 0, "00000000" )

local Category = "Sao Fatal Bullet"

local NPC = { 	Name = "LLENN V2 - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/sao/llenn_v2/llenn_v2_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_llenn_v2_f", NPC )

local Category = "Sao Fatal Bullet"

local NPC = { 	Name = "LLENN V2 - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/sao/llenn_v2/llenn_v2_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_llenn_v2_h", NPC )




