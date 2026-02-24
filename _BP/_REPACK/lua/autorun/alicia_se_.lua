--Add Playermodel
player_manager.AddValidModel( "Alicia_se", "models/PM/Alicia_sePM.mdl" )                         --PM模型
player_manager.AddValidHands( "Alicia_se", "models/arms/Alicia_searms.mdl", 0, "00000000" )      --PM手模

local Category = "3rd(se)"                                                                        --NPC MOD分类

local NPC = 
{
	Name = "Alicia(Friendly)",                                                            --友好NPC名字
	Class = "npc_citizen", 
	Health = "150",                                                                    --NPC血量
	KeyValues = { citizentype = 4 }, 
	Model = "models/NPC/Alicia_senpc.mdl",                                                  --友好NPC模型
	Weapons = { "weapon_ar2","weapon_smg1"},                                           --NPC出生自带武器
	Category = Category
}

list.Set( "NPC", "Alicia_se_friendly", NPC )

local NPC =
{
	Name = "Alicia(Enemy)",                                                                --敌人NPC名字
	Class = "npc_combine_s",
	Health = "150",
	Numgrenades = "4",
	Model = "models/NPC/Alicia_senpc.mdl",                                                  --敌人NPC模型
	Weapons = { "weapon_ar2","weapon_smg1"},
	Category = Category
}

list.Set( "NPC", "Alicia_se_enemy", NPC )
