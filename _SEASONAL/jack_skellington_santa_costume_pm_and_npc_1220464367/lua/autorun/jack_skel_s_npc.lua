local Category = "Vinrax NPCS"
local NPC = {
		 		Name = "Jack Skellington Santa", 
				Class = "npc_citizen",
				KeyValues = { citizentype = 4 },
				Model = "models/vinrax/player/jack_santa_player.mdl",
				Health = "250",
				Category = Category	
		}
list.Set( "NPC", "npc_jack_santa", NPC )