player_manager.AddValidModel( "Isla KOFXV", "models/cyanblue/kofxv/isla/isla.mdl" );
player_manager.AddValidHands( "Isla KOFXV", "models/cyanblue/kofxv/isla/arms/isla.mdl", 0, "00000000" )

local Category = "KOF"

local NPC =
{
	Name = "Isla KOFXV",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/kofxv/isla/npc/isla.mdl",
	Category = Category
}

list.Set( "NPC", "npc_isla_kofxv", NPC )

