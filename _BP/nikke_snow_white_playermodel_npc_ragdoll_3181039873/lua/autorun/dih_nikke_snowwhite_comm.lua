list.Set( "PlayerOptionsModel", "Nikke Snowwhite", "models/dih/commissions/nikke_snowwhite.mdl" )
player_manager.AddValidModel("Nikke Snowwhite", "models/dih/commissions/nikke_snowwhite.mdl")
player_manager.AddValidHands( "Nikke Snowwhite", "models/dih/commissions/arms/nikke_snowwhite.mdl", 0, "0000000" ) 

local Category = "Nikke: Goddess of Victory"

local NPC = { 	Name = "Snowwhite (Friendly)", 
				Class = "npc_citizen",
				Model = "models/dih/commissions/npc/nikke_snowwhite_f.mdl",
				Health = "450",
				SpawnFlags = SF_CITIZEN_MEDIC,
				KeyValues = { citizentype = 4 },
				Weapons = { "weapon_ar2", "weapon_smg1" },
                                Category = Category    }

list.Set( "NPC", "npc_dih_nikke_snowwhite_friend", NPC )

local NPC = { 	Name = "Snowwhite (Enemy)", 
				Class = "npc_combine_s",
				Model = "models/dih/commissions/npc/nikke_snowwhite_e.mdl",
				Health = "200",
				Squadname = "Killing",
				Numgrenades = "4",
				Weapons = { "weapon_ar2", "weapon_smg1" },
                                Category = Category    }

list.Set( "NPC", "npc_dih_nikke_snowwhite_enemy", NPC )
