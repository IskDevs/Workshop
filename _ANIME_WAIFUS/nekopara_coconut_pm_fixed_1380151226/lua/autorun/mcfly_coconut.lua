--Add Playermodel
player_manager.AddValidModel( "Coconut", "models/jazzmcfly/nekopara/coco/coco_player.mdl" )
player_manager.AddValidHands( "Coconut", "models/jazzmcfly/nekopara/coco/c_arms/coco.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "Coconut",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/jazzmcfly/nekopara/coco/coco_npc.mdl",
	Category = "Nekopara"
}

list.Set( "NPC", "npc_mcfly_coconut", NPC )


-- Send this to clients automatically so server hosts don't have to
if SERVER then
	resource.AddWorkshop("677688738")
end
