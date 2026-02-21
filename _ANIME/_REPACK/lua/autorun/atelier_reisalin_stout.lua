player_manager.AddValidModel( "Reisalin Stout", "models/pacagma/atelier/reisalin_stout/reisalin_stout_player.mdl" );
player_manager.AddValidHands( "Reisalin Stout", "models/pacagma/atelier/reisalin_stout/reisalin_stout_arms.mdl", 0, "00000000" )

local Category = "Atelier"

local NPC = { 	Name = "Reisalin Stout - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/atelier/reisalin_stout/reisalin_stout_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_reisalin_stout_f", NPC )

local Category = "Atelier"

local NPC = { 	Name = "Reisalin Stout - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/atelier/reisalin_stout/reisalin_stout_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_reisalin_stout_h", NPC )