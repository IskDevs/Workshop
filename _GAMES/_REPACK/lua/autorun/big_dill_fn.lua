--Add Playermodel
player_manager.AddValidModel( "Big Dill - Fortnite", "models/player/big_dill_pm.mdl")
player_manager.AddValidHands( "Big Dill - Fortnite", "models/weapons/big_dill_hands.mdl")
list.Set( "PlayerOptionsModel", "Big Dill - Fortnite", "models/player/big_dill_pm.mdl" )

--Add NPC
local Category = "Fortnite"

--Friendly NPC
local NPC = 
{
    Name = "Big Dill - Friendly",
    Class = "npc_citizen",
	Model = "models/player/big_dill_pm.mdl",
	Health = "100",
	KeyValues = { citizentype = 3 },
	Category = Category
}
list.Set( "NPC", "big_dill_friendly", NPC )

local Category = "Fortnite"

--Hostile NPC
local NPC = 
{
    Name = "Big Dill - Hostile",
	Class = "npc_combine_s",
	Model = "models/player/big_dill_pm.mdl",
	Health = "100",
	Category = Category
}
list.Set( "NPC", "big_dill_hostile", NPC )