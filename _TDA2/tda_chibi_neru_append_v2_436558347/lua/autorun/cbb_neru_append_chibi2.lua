--Add Playermodel
player_manager.AddValidModel( "Tda Chibi Neru Append (v2)", "models/captainbigbutt/vocaloid/chibi_neru_ap.mdl" )
--Sorry, custom chibi hands didn't really work out so well
--http://i.imgur.com/y4ANpsr.jpg
player_manager.AddValidHands( "Tda Chibi Neru Append (v2)", "models/captainbigbutt/vocaloid/c_arms/neru_append.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "Tda Chibi Neru Append(v2)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/captainbigbutt/vocaloid/npc/chibi_neru_ap.mdl",
	Category = "Vocaloid"
}

list.Set( "NPC", "npc_cbb_cneruappend2", NPC )


-- Send this to clients automatically so server hosts don't have to
if SERVER then
	resource.AddWorkshop(" ")
end