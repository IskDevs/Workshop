player_manager.AddValidModel( "Luna Child", "models/touhou/luna_child.mdl" );
list.Set("PlayerOptionsModel", "LunaChild", "models/touhou/luna_child.mdl")
player_manager.AddValidHands( "Luna Child", "models/weapons/arms/v_arms_mechanic_new.mdl", 0, "00000000" )
--[[
	They're BrOkEn!!!
	local Category = "Touhou"
	local NPC = { 	Name = "Luna Child - Friendly", 
				Class = "npc_citizen",
				Model = "models/touhou/luna_child.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_luna_f", NPC )

local Category = "Touhou"

local NPC = { 	Name = "Luna Child - Hostile", 
				Class = "npc_combine_s",
				Model = "models/touhou/luna_child.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_luna_h", NPC )]]





