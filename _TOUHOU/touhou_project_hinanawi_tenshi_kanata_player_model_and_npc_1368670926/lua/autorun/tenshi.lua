list.Set( "PlayerOptionsModel", "Hinanawi Tenshi", "models/Tenshi/Tenshi_pm.mdl" )
player_manager.AddValidModel( "Hinanawi Tenshi", "models/Tenshi/Tenshi_pm.mdl" )
player_manager.AddValidHands( "Hinanawi Tenshi", "models/Tenshi/Tenshi_arm.mdl", 0, "0000000" )

local NPC = { 	Name = "Hinanawi Tenshi", 
				Class = "npc_citizen",
				Weapons = { "weapon_smg1" },
				Model = "models/Tenshi/Tenshi_npc.mdl",
				Health = "200",
				KeyValues = { citizentype = 4 },
                                Category = "Touhou"    }

list.Set( "NPC", "Tenshi", NPC )

local NPC = { 	Name = "Hinanawi Tenshi Enemy", 
				Class = "npc_combine_s",
				Weapons = { "weapon_smg1" },
				Model = "models/Tenshi/Tenshi_npc.mdl",
				Health = "200",
				KeyValues = { citizentype = 4 },
                                Category = "Touhou"    }

list.Set( "NPC", "Tenshi_enemy", NPC )