list.Set( "PlayerOptionsModel", "N64 Mario", "models/rueven/n64/mario.mdl" )
player_manager.AddValidModel( "N64 Mario", "models/rueven/n64/mario.mdl" )
player_manager.AddValidHands( "N64 Mario", "models/rueven/n64/arms/marioarms.mdl", 0, "00000000" )

list.Set( "PlayerOptionsModel", "N64 Luigi", "models/rueven/n64/luigi.mdl" )
player_manager.AddValidModel( "N64 Luigi", "models/rueven/n64/luigi.mdl" )
player_manager.AddValidHands( "N64 Luigi", "models/rueven/n64/arms/luigiarms.mdl", 0, "00000000" )

list.Set( "PlayerOptionsModel", "N64 Mario (Metal)", "models/rueven/n64/metalmario.mdl" )
player_manager.AddValidModel( "N64 Mario (Metal)", "models/rueven/n64/metalmario.mdl" )
player_manager.AddValidHands( "N64 Mario (Metal)", "models/rueven/n64/arms/metalmarioarms.mdl", 0, "00000000" )

local Category = "N64 Mario Bros"

local NPC = 
{
    Name = "Mario (Friendly)",
    Class = "npc_citizen",
	Model = "models/rueven/n64/npc/mario.mdl",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Category = Category
}
list.Set( "NPC", "n64mario_friendly", NPC )

local NPC = 
{
    Name = "Mario (Hostile)",
	Class = "npc_combine_s",
	Model = "models/rueven/n64/npc/mario.mdl",
	Health = "100",
	Category = Category
}
list.Set( "NPC", "n64mario_hostile", NPC )

local NPC = 
{
    Name = "Luigi (Friendly)",
    Class = "npc_citizen",
	Model = "models/rueven/n64/npc/luigi.mdl",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Category = Category
}
list.Set( "NPC", "n64luigi_friendly", NPC )

local NPC = 
{
    Name = "Luigi (Hostile)",
	Class = "npc_combine_s",
	Model = "models/rueven/n64/npc/luigi.mdl",
	Health = "100",
	Category = Category
}
list.Set( "NPC", "n64luigi_hostile", NPC )

local NPC = 
{
    Name = "Metal Mario (Friendly)",
    Class = "npc_citizen",
	Model = "models/rueven/n64/npc/metalmario.mdl",
	Health = "250",
	KeyValues = { citizentype = 4 },
	Category = Category
}
list.Set( "NPC", "n64metalmario_friendly", NPC )

local NPC = 
{
    Name = "Metal Mario (Hostile)",
	Class = "npc_combine_s",
	Model = "models/rueven/n64/npc/metalmario.mdl",
	Health = "250",
	Category = Category
}
list.Set( "NPC", "n64metalmario_hostile", NPC )