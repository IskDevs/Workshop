--Add Playermodel
player_manager.AddValidModel( "Poyo", "models/jazzmcfly/poyo/poyo.mdl" )
player_manager.AddValidHands( "Poyo", "models/jazzmcfly/poyo/c_arms/poyo.mdl", 0, "0000000" )


--Add NPC
local NPC =
{
	Name = "Poyo",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/jazzmcfly/poyo/npc/poyo.mdl",
	Category = "Poyo"
}

list.Set( "NPC", "npc_mcfly_poyo", NPC )

-- Send this to clients automatically so server hosts don't have to
if SERVER then
	resource.AddWorkshop("1860072843")
end
