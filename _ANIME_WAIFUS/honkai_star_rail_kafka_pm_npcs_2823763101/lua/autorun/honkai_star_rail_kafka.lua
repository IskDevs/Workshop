player_manager.AddValidModel( "Honkai: Star Rail Kafka", "models/Kafka/honkai_star_rail/rstar/Kafka/Kafka.mdl" );
player_manager.AddValidHands( "Honkai: Star Rail Kafka", "models/Kafka/honkai_star_rail/rstar/Kafka/arms/Kafka_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai: Star Rail Kafka (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Kafka/honkai_star_rail/rstar/Kafka/Kafka_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_star_rail_Kafka_friendly", NPC )



local NPC =
{
	Name = "Honkai: Star Rail Kafka (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Kafka/honkai_star_rail/rstar/Kafka/Kafka_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_star_rail_Kafka_enemy", NPC )