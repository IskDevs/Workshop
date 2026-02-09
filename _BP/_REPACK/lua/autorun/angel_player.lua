player_manager.AddValidModel( "Angel","models/Angel.mdl" )
player_manager.AddValidHands( "Angel", "models/AngelA.mdl", 0, "00000000" )

local Category = "Lilo and Stitch"

local NPC = { 	Name = "Angel", 
				Class = "npc_citizen",
				Model = "models/AngelR.mdl",
				Health = "900",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "npc_Angel", NPC )

local NPC = { 	Name = "AngelBad", 
				Class = "npc_combine_s",
				Model = "models/AngelC.mdl",
				Health = "900",
				KeyValues = { Squadname = "Angel", Numgrenades = 5 },
                                Category = Category    }

list.Set( "NPC", "npc_AngelBad", NPC )
