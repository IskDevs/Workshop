list.Set( "PlayerOptionsModel", "Plague Doktor", "models/player/plague_doktor/PLAYER_Plague_Doktor.mdl" )
player_manager.AddValidModel( "Haus: The Plague Doktor", "models/player/plague_doktor/PLAYER_Plague_Doktor.mdl" )
player_manager.AddValidHands( "Haus: The Plague Doktor", "models/player/plague_doktor/VIEWMODEL.mdl", 0, "00000000" )

local Category = "Plague Doktor haus NPCs"

local NPC = { 	Name = "Hostile Plague Doktor Haus", 
				Class = "npc_combine_s",
				Model = "models/player/plague_doktor/COMBINE_Plague_Doktor.mdl",
				Health = "150",
				Squadname = "PLAGUE",
				Numgrenades = "4",
                                Category = Category    }

list.Set( "NPC", "Hostile_PlagueDoktorHaus", NPC )

local NPC = { 	Name = "Friendly Plague Doktor Haus", 
				Class = "npc_citizen",
				Model = "models/player/plague_doktor/CITIZEN_Plague_Doktor.mdl",
				Health = "300",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "Friendly_PlagueDoktorHaus", NPC )