--Add Playermodel
player_manager.AddValidModel( "Gumi(LoveHunter)", "models/PM/Gumi_LoveHunter_PM.mdl" )
player_manager.AddValidHands( "Gumi(LoveHunter)", "models/arms/Gumi_LoveHunter_arms.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC = 
{
	Name = "Gumi(LoveHunter) (Friendly)", 
	Class = "npc_citizen", 
	Health = "100", 
	KeyValues = { citizentype = 4 }, 
	Model = "models/NPC/Gumi_LoveHunter_npc.mdl", 
	Weapons = { "weapon_ar2","weapon_smg1"}, 
	Category = Category
}

list.Set( "NPC", "Gumi_LoveHunter_friendly", NPC )

local NPC =
{
	Name = "Gumi(LoveHunter) (Enemy)", 
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/NPC/Gumi_LoveHunter_npc.mdl", 
	Weapons = { "weapon_ar2","weapon_smg1"},
	Category = Category
}

list.Set( "NPC", "Gumi_LoveHunter_enemy", NPC )
