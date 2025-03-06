player_manager.AddValidModel( "Hecatia Lapislazuli", "models/pacagma/touhou/hecatia_lapislazuli/hecatia_lapislazuli_player.mdl" );
player_manager.AddValidHands( "Hecatia Lapislazuli", "models/pacagma/touhou/hecatia_lapislazuli/hecatia_lapislazuli_arms.mdl", 0, "00000000" )

local Category = "Touhou"

local NPC = { 	Name = "Hecatia Lapislazuli - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/touhou/hecatia_lapislazuli/hecatia_lapislazuli_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_hecatia_lapislazuli_f", NPC )

local Category = "Touhou"

local NPC = { 	Name = "Hecatia Lapislazuli - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/touhou/hecatia_lapislazuli/hecatia_lapislazuli_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_hecatia_lapislazuli_h", NPC )




