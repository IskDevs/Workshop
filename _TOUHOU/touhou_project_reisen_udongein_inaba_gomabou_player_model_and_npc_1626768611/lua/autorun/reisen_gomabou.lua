list.Set( "PlayerOptionsModel", "Reisen", "models/IKanadeA/Reisen_pm.mdl" )
player_manager.AddValidModel( "Reisen", "models/IKanadeA/Reisen_pm.mdl" )
player_manager.AddValidHands( "Reisen", "models/IKanadeA/Reisen_arms.mdl", 0, "0000000" )

local t = {
	Name = "Reisen(Friendly)",
	Class = "npc_citizen",
	Category = "Touhou",
	Weapons = { "weapon_pistol", "weapon_smg1", "weapon_shotgun", "weapon_annabelle", "weapon_ar2", "weapon_crossbow", "weapon_rpg" },
	Model = "models/IKanadeA/Reisen_npc.mdl",
	KeyValues = { citizentype = 4, Numgrenades = 5 }
}
list.Set( "NPC", "IKanadeA/Reisen", t )

local t = {
	Name = "Reisen(Enemy)",
	Class = "npc_combine_s",
	Category = "Touhou",
	Weapons = { "weapon_pistol", "weapon_smg1", "weapon_shotgun", "weapon_annabelle", "weapon_ar2", "weapon_crossbow", "weapon_rpg" },
	Model = "models/IKanadeA/Reisen_npc.mdl",
	KeyValues = { citizentype = 4, Numgrenades = 5 }
}
list.Set( "NPC", "IKanadeA/Reisen_enemy", t )
