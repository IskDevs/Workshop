player_manager.AddValidModel( "627","models/627.mdl" )
player_manager.AddValidHands( "627", "models/627A.mdl", 0, "00000000" )

local Category = "Lilo and Stitch"

local NPC = { 	Name = "627", 
				Class = "npc_citizen",
				Model = "models/627R.mdl",
				Health = "900",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "npc_627v2", NPC )

local NPC = { 	Name = "627Bad", 
				Class = "npc_combine_s",
				Model = "models/627comb.mdl",
				Health = "900",
				KeyValues = { Squadname = "627", Numgrenades = 5 },
                                Category = Category    }

list.Set( "NPC", "npc_627v2Bad", NPC )
