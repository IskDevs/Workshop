list.Set( "PlayerOptionsModel", "marisa", "models/egg/marisa/models/marisa.mdl" )
player_manager.AddValidModel( "marisa", "models/egg/marisa/models/marisa.mdl" )
player_manager.AddValidHands( "marisa", "models/egg/marisa/models/marisa_arms.mdl", 0, "00000000" )
--Add NPC
local Category = "Marisa NPC"

--Friendly NPC
local NPC = 
{
    Name = "Marisa - Friendly",
    Class = "npc_citizen",
	Model = "models/egg/marisa/models/marisa.mdl",
	Health = "250",
	KeyValues = { citizentype = 4 },
	Category = Category
}
list.Set( "NPC", "marisa_friendly", NPC )

--Hostile NPC
local NPC = 
{
    Name = "Marisa - Hostile",
	Class = "npc_combine_s",
	Model = "models/egg/marisa/models/marisa.mdl",
	Health = "250",
	Category = Category
}
list.Set( "NPC", "marisa", NPC )