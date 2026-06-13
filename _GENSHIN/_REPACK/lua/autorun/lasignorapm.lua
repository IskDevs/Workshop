player_manager.AddValidModel( "La Signora", "models/alejenus/genshinimpact/la_signora/la_signora.mdl" )
list.Set( "La Signora", "models/alejenus/genshinimpact/la_signora/la_signora.mdl" )
player_manager.AddValidHands( "La Signora", "models/alejenus/genshinimpact/la_signora/c_arms/c_arms.mdl", (0), "00000000" )
local NPC = {	Name = "Friendly La Signora",
				Class = "npc_citizen",
				Model = "models/alejenus/genshinimpact/la_signora/la_signora.mdl",
				Health = "100",
				KeyValues = { citizentype = 2},
				Category = "Genshin Impact" }
list.Set( "NPC", "la_signora_friendly", NPC )


local NPC = {	Name = "Hostile La Signora",
				Class = "npc_combine",
				Model = "models/alejenus/genshinimpact/la_signora/la_signora.mdl",
				Health = "100",
				Category = "Genshin Impact" }
list.Set( "NPC", "la_signora_hostile", NPC )



