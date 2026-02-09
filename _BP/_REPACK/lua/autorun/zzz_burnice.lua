--Add Playermodel
player_manager.AddValidModel( "Burnice", "models/reiko/zenlesszone/BurnicePM.mdl" )
player_manager.AddValidHands( "Burnice","models/reiko/zenlesszone/Burnice_carms.mdl", 0, "00000000")

--Add NPC
local Category = "Zenless Zone Zero"

--Friendly NPC
local NPC = 
{
    Name = "Burnice Friendly",
    Class = "npc_citizen",
	Model = "models/reiko/zenlesszone/BurniceNPC.mdl",
	Health = "250",
	KeyValues = { citizentype = 4 },
	Category = Category
}
list.Set( "NPC", "burnice_friendly", NPC )

local NPC = 
{
    Name = "Burnice Hostile",
    Class = "npc_citizen",
	Model = "models/reiko/zenlesszone/BurniceNPC.mdl",
	Health = "250",
	KeyValues = { citizentype = 4, Hostile = 1 },
	Category = Category
}
list.Set( "NPC", "burnice_hostile", NPC )
