player_manager.AddValidModel( "Koakuma [Ponytail Ver]", "models/pacagma/touhou/koakuma/koakuma_pony_player.mdl" );
player_manager.AddValidHands( "Koakuma [Ponytail Ver]", "models/pacagma/touhou/koakuma/koakuma_pony_arms.mdl", 0, "00000000" )

local Category = "Touhou"

local NPC = { 	Name = "Koakuma [Ponytail Ver] - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/touhou/koakuma/koakuma_pony_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_koakuma_pony_f", NPC )

local Category = "Touhou"

local NPC = { 	Name = "Koakuma [Ponytail Ver] - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/touhou/koakuma/koakuma_pony_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_koakuma_pony_h", NPC )

