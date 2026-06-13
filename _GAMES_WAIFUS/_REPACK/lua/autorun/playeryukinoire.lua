player_manager.AddValidModel( "Noire","models/player_noire.mdl" )
player_manager.AddValidHands( "Noire", "models/noire_arms.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "Noire",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "Models/npc_noire.mdl",
	Category = "Neptunia NPCs"
}

list.Set( "NPC", "npc_noire", NPC )


