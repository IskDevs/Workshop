player_manager.AddValidModel( "Riamu", "models/cyanblue/im@s/riamu/riamu.mdl" );
player_manager.AddValidHands( "Riamu", "models/cyanblue/im@s/riamu/arms/riamu.mdl", 0, "00000000" )

local Category = "Deresute"

local NPC =
{
	Name = "Riamu Yumemi",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/im@s/riamu/npc/riamu.mdl",
	Category = Category
}

list.Set( "NPC", "npc_riamu", NPC )