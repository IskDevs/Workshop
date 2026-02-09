--Add Playermodel
player_manager.AddValidModel( "Summer Casual Erisa - Fortnite", "models/player/erisa_pm.mdl")
player_manager.AddValidHands( "Summer Casual Erisa - Fortnite", "models/weapons/erisa_hands.mdl")
list.Set( "PlayerOptionsModel", "Summer Casual Erisa - Fortnite", "models/player/erisa_pm.mdl" )

--Add NPC
local Category = "Fortnite"

--Friendly NPC
local NPC = 
{
    Name = "Summer Casual Erisa - Friendly",
    Class = "npc_citizen",
	Model = "models/player/erisa_pm.mdl",
	Health = "100",
	KeyValues = { citizentype = 3 },
	Category = Category
}
list.Set( "NPC", "erisa_summer_fn_friendly", NPC )

local Category = "Fortnite"

--Hostile NPC
local NPC = 
{
    Name = "Summer Casual Erisa - Hostile",
	Class = "npc_combine_s",
	Model = "models/player/erisa_pm.mdl",
	Health = "100",
	Category = Category
}
list.Set( "NPC", "erisa_summer_fn_hostile", NPC )