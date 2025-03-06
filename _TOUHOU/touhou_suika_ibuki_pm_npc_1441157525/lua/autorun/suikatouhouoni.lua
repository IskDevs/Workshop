player_manager.AddValidModel( "Suika Ibuki", "models/touhou/suika_ibuki/suika_ibuki_player.mdl" );
player_manager.AddValidHands( "Suika Ibuki", "models/touhou/suika_ibuki/suika_ibuki_arms.mdl", 0, "00000000" )

local Category = "Touhou"

local NPC = { 	Name = "Suika Ibuki - Friendly", 
				Class = "npc_citizen",
				Model = "models/touhou/suika_ibuki/suika_ibuki_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_suika_ibu_f", NPC )

local Category = "Touhou"

local NPC = { 	Name = "Suika Ibuki - Hostile", 
				Class = "npc_combine_s",
				Model = "models/touhou/suika_ibuki/suika_ibuki_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_suika_ibu_h", NPC )