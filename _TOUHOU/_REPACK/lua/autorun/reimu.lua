list.Set( "PlayerOptionsModel", "reimu", "models/egg/reimu/models/reimu_pm.mdl" )
player_manager.AddValidModel( "reimu", "models/egg/reimu/models/reimu_pm.mdl" )
player_manager.AddValidHands( "reimu", "models/egg/reimu/models/reimu_arms.mdl", 0, "00000000" )

--Add NPC
local Category = "Reimu NPC"

--Friendly NPC
local NPC = 
{
    Name = "Reimu - Friendly",
    Class = "npc_citizen",
	Model = "models/egg/reimu/models/reimu_pm.mdl",
	Health = "250",
	KeyValues = { citizentype = 4 },
	Category = Category
}
list.Set( "NPC", "reimu_pm_friendly", NPC )

--Hostile NPC
local NPC = 
{
    Name = "Reimu - Hostile",
	Class = "npc_combine_s",
	Model = "models/egg/reimu/models/reimu_pm.mdl",
	Health = "250",
	Category = Category
}
list.Set( "NPC", "reimu_pm", NPC )