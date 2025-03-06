player_manager.AddValidModel( "Stitch","models/stitch_player.mdl" )
player_manager.AddValidHands( "Stitch", "models/stitch_arms.mdl", 0, "00000000" )

local Category = "Lilo and Stitch"

local NPC = { 	Name = "Stitch", 
				Class = "npc_citizen",
				Model = "models/stitch_rebel.mdl",
				Health = "700",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "npc_stitch", NPC )