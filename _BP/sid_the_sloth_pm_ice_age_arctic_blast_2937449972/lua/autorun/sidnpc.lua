local Category = "Sid The Sloth NPC" --This is where the npc will show up
 
local NPC = {   Name = "Friendly Sid", 
                Class = "npc_citizen",
                Model = "models/player/sidthesloth.mdl", 
                Health = "100", 
                KeyValues = { citizentype = 4 }, 
                Weapons = { "weapon_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_sidthesloth_ally", NPC )

local Category = "Sid The Sloth NPC" --This is where the npc will show up
 
local NPC = {   Name = "Hostile Sid", 
                Class = "npc_combine",
                Model = "models/player/sidthesloth.mdl", --Path to your model
                Health = "100", 
                Weapons = { "weapon_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_sidthesloth_hostile", NPC )