player_manager.AddValidModel( "Nightmare Fredbear HW", "models/dravenjv01/fnafhw/nightmarefredbpm.mdl" )
list.Set( "PlayerOptionsModel", "Nightmare Fredbear HW", "models/dravenjv01/fnafhw/nightmarefredbpm.mdl" )
player_manager.AddValidHands( "Nightmare Fredbear HW", "models/dravenjv01/fnafhw/c_arms/nightmarefb_arms.mdl", 0, "main" )
local NPC = {	Name = "Friendly Nightmare Fredbear HW",
				Class = "npc_citizen",
				Model = "models/dravenjv01/fnafhw/nightmarefredbpm.mdl",
				Health = "200",
				KeyValues = { citizentype = 4 },
				Category = "FNAF : Help Wanted" }
list.Set( "NPC", "fnafhwnightmarefb_friendly", NPC )


local NPC = {	Name = "Hostile Nightmare Fredbear HW",
				Class = "npc_combine",
				Model = "models/dravenjv01/fnafhw/nightmarefredbpm.mdl",
				Health = "200",
				Category = "FNAF : Help Wanted" }
list.Set( "NPC", "fnafhwnightmarefb_hostile", NPC )
