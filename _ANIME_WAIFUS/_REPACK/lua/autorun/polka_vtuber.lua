player_manager.AddValidModel( "Omaru Polka", "models/pacagma/vtuber/polka/polka_player.mdl" );
player_manager.AddValidHands( "Omaru Polka", "models/pacagma/vtuber/polka/polka_arms.mdl", 0, "00000000" )

local Category = "Virtual Youtuber"

local NPC = { 	Name = "Omaru Polka - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/vtuber/polka/polka_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_polka_f", NPC )

local Category = "Virtual Youtuber"

local NPC = { 	Name = "Omaru Polka - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/vtuber/polka/polka_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_polka_h", NPC )