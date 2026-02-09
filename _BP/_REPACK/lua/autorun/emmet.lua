player_manager.AddValidModel( "Emmet", 							"models/eddy/legomovie/emmet.mdl" )

list.Set( "PlayerOptionsModel",  "Emmet", 							"models/eddy/legomovie/emmet.mdl" )

player_manager.AddValidHands( "Emmet", "models/eddy/legohands/emmetarms.mdl", 0, "00000000" )


local Category = "Lego Movie" --This is where the npc will show up
 
local NPC = {   Name = "Emmet Friendly", 
                Class = "npc_citizen",
                Model = "models/eddy/legomovie/npc/friendly/emmet_friendly.mdl", 
                Health = "100", 
                KeyValues = { citizentype = 4 }, 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_emmet_ally", NPC )

local Category = "Lego Movie" --This is where the npc will show up
 
local NPC = {   Name = "Emmet Hostile", 
                Class = "npc_combine",
                Model = "models/eddy/legomovie/npc/hostile/emmet_hostile.mdl", --Path to your model
                Health = "100", 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_emmet_hostile", NPC )

