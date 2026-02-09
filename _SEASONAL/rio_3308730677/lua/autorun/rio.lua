--Add Playermodel
player_manager.AddValidModel( "RIO", "models/rio_pm.mdl" )                         
player_manager.AddValidHands( "RIO", "models/Rio_arms.mdl", 0, "00000000"  )      

local Category = "VRC"                                                                       

local NPC = 
{
	Name = "Rio Friendly",                                                           
	Class = "npc_citizen", 
	Health = "150",                                                                    
	KeyValues = { citizentype = 4 }, 
	Model = "models/rio_npcf.mdl",                                                 
	Weapons = { "weapon_ar2","weapon_smg1"},                                           
	Category = Category
}

list.Set( "NPC", "Rio Friendly", NPC )

local NPC =
{
	Name = "Rio Enemy",                                                                --敌人NPC名字
	Class = "npc_combine_s",
	Health = "150",
	Numgrenades = "4",
	Model = "models/rio_npce.mdl",                                                  --敌人NPC模型
	Weapons = { "weapon_ar2","weapon_smg1"},
	Category = Category
}

list.Set( "NPC", "Rio Enemy", NPC )
