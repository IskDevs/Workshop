local Category = "Roblox Buff Noob NPC" --This is where the npc will show up
 
local NPC = {   Name = "Friendly Buff Noob", 
                Class = "npc_citizen",
                Model = "models/buffnoob/buffnoob.mdl", 
                Health = "100", 
                KeyValues = { citizentype = 4 }, 
                Weapons = { "weapon_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_buffnoob_ally", NPC )

local Category = "Roblox Buff Noob NPC" --This is where the npc will show up
 
local NPC = {   Name = "Hostile Buff Noob", 
                Class = "npc_combine",
                Model = "models/buffnoob/buffnoob.mdl", --Path to your model
                Health = "100", 
                Weapons = { "weapon_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_buffnoob_hostile", NPC )