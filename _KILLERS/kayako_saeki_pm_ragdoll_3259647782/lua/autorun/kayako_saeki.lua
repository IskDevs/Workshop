player_manager.AddValidModel( "Kayako Saeki", 				"models/players/kayako_saeki.mdl" )
list.Set( "PlayerOptionsModel",  "Kayako Saeki",				"models/players/kayako_saeki.mdl" )
player_manager.AddValidHands(	"Kayako Saeki", "models/players/kayako_saeki_pm_arms.mdl", 0, "00000000" )

player_manager.AddValidModel( "Kayako Saeki - Nightmare Version", 	"models/players/kayako_saeki_nightmare.mdl" )
list.Set( "PlayerOptionsModel",  "Kayako Saeki - Nightmare Version", "models/players/kayako_saeki_nightmare.mdl" )
player_manager.AddValidHands(	"Kayako Saeki - Nightmare Version", "models/players/kayako_saeki_nightmare_pm_arms.mdl", 0, "00000000" )

local Category = "Kayako Saeki" 

local NPC =
{
	Name = "Kayako Saeki",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/players/kayako_saeki.mdl",
	Category = Category
}

list.Set( "NPC", "kayako_saeki_a_ally", NPC )

local NPC =
{
	Name = "Kayako Saeki (Hostile)",
	Class = "npc_combine_s",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/players/kayako_saeki.mdl",
	Category = Category
}

list.Set( "NPC", "kayako_saeki_a_hostile", NPC )

local NPC =
{
	Name = "Kayako Saeki - Nightmare",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/players/kayako_saeki_nightmare.mdl",
	Category = Category
}

list.Set( "NPC", "kayako_saeki_nightmare_a_ally", NPC )

local NPC =
{
	Name = "Kayako Saeki - Nightmare (Hostile)",
	Class = "npc_combine_s",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/players/kayako_saeki_nightmare.mdl",
	Category = Category
}

list.Set( "NPC", "kayako_saeki_nightmare_a_hostile", NPC )

