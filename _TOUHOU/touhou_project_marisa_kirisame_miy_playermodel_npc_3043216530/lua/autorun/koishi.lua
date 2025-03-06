list.Set( "PlayerOptionsModel", "koishi", "models/egg/koishi/models/koishi.mdl" )
player_manager.AddValidModel( "koishi", "models/egg/koishi/models/koishi.mdl" )
player_manager.AddValidHands( "koishi", "models/egg/koishi/models/koishi_arms.mdl", 0, "00000000" )
--Add NPC
local Category = "Koishi NPC"

--Friendly NPC
local NPC = 
{
    Name = "Koishi - Friendly",
    Class = "npc_citizen",
	Model = "models/egg/koishi/models/koishi.mdl",
	Health = "250",
	KeyValues = { citizentype = 4 },
	Category = Category
}
list.Set( "NPC", "koishi_friendly", NPC )

--Hostile NPC
local NPC = 
{
    Name = "Koishi - Hostile",
	Class = "npc_combine_s",
	Model = "models/egg/koishi/models/koishi.mdl",
	Health = "250",
	Category = Category
}
list.Set( "NPC", "koishi", NPC )