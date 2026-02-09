player_manager.AddValidModel( "XmasMs.Fowl", "models/XmasMissFowl/XmasMissFowl.mdl" )
list.Set( "PlayerOptionsModel",  "XmasMs.Fowl", "models/XmasMissFowl/XmasMissFowl.mdl" ) 
player_manager.AddValidHands( "XmasMs.Fowl", "models/weapons/XmasMissFowl_arms.mdl", 0, "00000000" )
--Add NPC
local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasMs.Fowl Ally", 
				Class = "npc_citizen",
				Model = "models/XmasMissFowl/XmasMissFowl.mdl",
				Health = "100",
                KeyValues = { citizentype = 4 }, 
                Weapons = { "weapon_shotgun" }, 
                Category = Category }

list.Set( "NPC", "xmasmsfowl ally", NPC )

local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasMs.Fowl Hostile", 
				Class = "npc_combine_s",
				Model = "models/XmasMissFowl/XmasMissFowl.mdl",
				Health = "150",
                KeyValues = { citizentype = 4 }, 
                Weapons = { "weapon_shotgun" }, 
                Category = Category }

list.Set( "NPC", "xmasmsfowl hostile", NPC )


