--Add Playermodel
player_manager.AddValidModel( "埃克什瓦·热带蓝调", "models/pm/yzaksw_pm.mdl" )  
player_manager.AddValidHands( "埃克什瓦·热带蓝调", "models/arms/akswyz_arms.mdl", 0, "00000000" ) 

local Category = "埃克什瓦·热带蓝调"                                                                       

local NPC = 
{
	Name = "埃克什瓦·热带蓝调(Friendly)",                                                            
	Class = "npc_citizen", 
	Health = "150",                                                                    
	KeyValues = { citizentype = 4 }, 
	Model = "models/NPC/yzaksw_npc.mdl",                                                 
	Weapons = { "weapon_ar2","weapon_smg1"},                                          
	Category = Category
}

list.Set( "NPC", "埃克什瓦·热带蓝调_friendly", NPC )

local NPC =
{
	Name = "埃克什瓦·热带蓝调(Enemy)",                                                               
	Class = "npc_combine_s",
	Health = "150",
	Numgrenades = "4",
	Model = "models/NPC/yzaksw_npc.mdl",                                                
	Weapons = { "weapon_ar2","weapon_smg1"},
	Category = Category
}

list.Set( "NPC", "埃克什瓦·热带蓝调_enemy", NPC )
