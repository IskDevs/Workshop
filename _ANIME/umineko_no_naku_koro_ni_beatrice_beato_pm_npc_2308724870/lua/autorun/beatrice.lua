player_manager.AddValidModel( "Beatrice", "models/cyanblue/umineko/beatrice/beatrice.mdl" );
player_manager.AddValidHands( "Beatrice", "models/cyanblue/umineko/beatrice/arms/beatrice.mdl", 0, "00000000" )

local Category = "Umineko"

local NPC =
{
	Name = "Beatrice",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/umineko/beatrice/npc/beatrice.mdl",
	Category = Category
}

list.Set( "NPC", "npc_umineko_beatrice", NPC )

