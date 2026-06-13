player_manager.AddValidModel( "Seele Vollerei", "models/pacagma/houkai_impact_3rd/seele_vollerei/seele_vollerei_player.mdl" );
player_manager.AddValidHands( "Seele Vollerei", "models/pacagma/houkai_impact_3rd/seele_vollerei/seele_vollerei_arms.mdl", 0, "00000000" )

local Category = "Houkai Impact 3rd"

local NPC = { 	Name = "Seele Vollerei - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/houkai_impact_3rd/seele_vollerei/seele_vollerei_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_seele_f", NPC )

local Category = "Houkai Impact 3rd"

local NPC = { 	Name = "Seele Vollerei - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/houkai_impact_3rd/seele_vollerei/seele_vollerei_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_seele_h", NPC )

