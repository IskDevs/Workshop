// Codename:flandre
// Seq:5
list.Set( "PlayerOptionsModel", "Flandre Scarlet", "models/loyalists/mmd/flandre/flandre_mp_pm.mdl" )
player_manager.AddValidModel( "Flandre Scarlet", "models/loyalists/mmd/flandre/flandre_mp_pm.mdl" )
player_manager.AddValidHands( "Flandre Scarlet", "models/loyalists/mmd/flandre/flandre_vm_mp.mdl", 0, "0000000" )

local NPC = { 	Name = "Flandre Scarlet", 
				Class = "npc_citizen",
				Weapons = { "weapon_smg1" },
				Model = "models/loyalists/mmd/flandre/flandre_mp_npc.mdl",
				Health = "300",
				KeyValues = { citizentype = 4 },
                                Category = "Touhou"    }

list.Set( "NPC", "npc_l5_flandre", NPC )

-- http://steamcommunity.com/sharedfiles/filedetails/?id=1115666310
if SERVER then
	resource.AddWorkshop("1115666310")
end