player_manager.AddValidModel( "Creeper V2", 					"models/player/creeper.mdl" )
list.Set( "PlayerOptionsModel",  "Creeper V2", 					"models/player/creeper.mdl" )

local Category = "Minecraft"

local NPC =
{
	Name = "Creeper(Friendly)",
	Class = "npc_citizen",
	Health = "200",
	KeyValues = { citizentype = 4 },
	Model = "models/player/creeper.mdl",
	Category = Category
}

list.Set( "NPC", "npc_creeper_happy", NPC )

local NPC =
{
	Name = "Creeper (Enemy)",
	Class = "npc_combine_s",
	Health = "200",
	Numgrenades = "4",
	Model = "models/player/creeper.mdl",
	Category = Category
}

list.Set( "NPC", "npc_creeper_angry", NPC )