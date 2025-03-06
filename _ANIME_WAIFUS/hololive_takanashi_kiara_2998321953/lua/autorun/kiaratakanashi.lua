player_manager.AddValidModel( "Takanashi_Kiara", 	"models/hololive/Takanashi_Kiara-PM.mdl" );
list.Set( "PlayerOptionsModel", "Takanashi_Kiara", 	"models/hololive/Takanashi_Kiara-PM.mdl" );
player_manager.AddValidHands( "Takanashi_Kiara", "models/hololive/Takanashi_Kiara-arms.mdl", 0, "00000000" )

local NPC = { 	Name = "Takanashi_Kiara(friendly)", 
				Class = "npc_citizen",
				Weapons = { "weapon_smg1" },
				Model = "models/hololive/Takanashi_Kiara-f.mdl",
				Health = "400",
				KeyValues = { citizentype = 4 },
                Category = "Hololive"    }

list.Set( "NPC", "npc_Tkiara-f", NPC )

local NPC = { 	Name = "Takanashi_Kiara(Hostile)", 
				Class = "npc_combine_s",
				Weapons = { "weapon_smg1" },
				Model = "models/hololive/Takanashi_Kiara-e.mdl",
				Health = "150",
				Numgrenades = "4",
                Category = "Hololive"    }

list.Set( "NPC", "npc_TKiara-e", NPC )

