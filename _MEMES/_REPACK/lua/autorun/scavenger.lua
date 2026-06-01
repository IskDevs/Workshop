player_manager.AddValidModel( "Lethal Company - Employee", "models/arty/bini/lethal company/employee/employee_pm.mdl" )
player_manager.AddValidModel( "Lethal Company - Employee - ARC9", "models/arty/bini/lethal company/employee/employee - arc9_pm.mdl" )

player_manager.AddValidHands( "Lethal Company - Employee", "models/arty/bini/lethal company/employee/employee_vm.mdl", 0, "00" )
player_manager.AddValidHands( "Lethal Company - Employee - ARC9", "models/arty/bini/lethal company/employee/employee_vm.mdl", 0, "00" )

hook.Add("PreDrawPlayerHands", "Lethal_hands", function(hands, vm, ply, wpn)
    if IsValid(hands) 
	and hands:GetModel() == "models/arty/bini/lethal company/employee/employee_vm.mdl" 
	or hands:GetModel() == "models/arty/bini/lethal company/employee/employee_vm.mdl" 
	then
		hands:SetSkin(ply:GetSkin())
        hands:SetBodygroup(1, (ply:GetBodygroup(2)) )
        hands:SetBodygroup(2, (ply:GetBodygroup(3)) )
    end
end)


local Category = "Lethal Company" 

local NPC = {   Name = "Employee Hostile", 
                Class = "npc_combine_s",
                Model = "models/arty/bini/lethal company/employee/employee_hostile.mdl", 
                Health = "200", 
                Weapons = {"weapon_shotgun","weapon_smg1","weapon_ar2"}, 
                Category = Category }
                               
list.Set( "NPC", "lcemployee_hostile", NPC )

local NPC = {   Name = "Employee Friendly", 
                Class = "npc_citizen",
                Model = "models/arty/bini/lethal company/employee/employee_friendly.mdl", 
                Health = "200", 
                KeyValues = { citizentype = 4 }, 
                Weapons = {"weapon_shotgun","weapon_smg1","weapon_ar2"}, 
                Category = Category }
                               
list.Set( "NPC", "lcemployee_friendly", NPC )

