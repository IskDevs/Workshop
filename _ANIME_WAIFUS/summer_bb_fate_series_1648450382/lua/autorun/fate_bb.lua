--Add Playermodel
player_manager.AddValidModel( "Summer BB", "models/jazzmcfly/fate/bb/bb.mdl" )
player_manager.AddValidHands( "Summer BB", "models/jazzmcfly/fate/bb/c_arms/bb.mdl", 0, "0000000" )


--Add NPC
local NPC =
{
	Name = "Summer BB",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/jazzmcfly/fate/bb/npc/bb.mdl",
	Category = "Fate"
}

list.Set( "NPC", "npc_mcfly_bb", NPC )