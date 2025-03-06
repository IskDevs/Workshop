--copied from tda hatsune miku v2

--Add Playermodel
list.Set( "PlayerOptionsModel", "Luo Tianyi", "models/player/lty/lty_player.mdl" )
player_manager.AddValidModel( "Luo Tianyi", "models/player/lty/lty_player.mdl" )
player_manager.AddValidHands( "Luo Tianyi", "models/weapons/c_arms_lty.mdl", 0, "0000000" )

--Add NPC
local NPC = { 	Name = "Luo Tianyi", 
				Class = "npc_citizen",
				Weapons = { "weapon_shotgun" },
				Model = "models/player/lty/lty_npc.mdl",
				Health = "300",
				KeyValues = { citizentype = 4 },
                                Category = "Vocaloid"    }

list.Set( "NPC", "npc_lts_lty", NPC )