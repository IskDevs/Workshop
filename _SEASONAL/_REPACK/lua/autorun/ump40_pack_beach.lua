player_manager.AddValidModel( "UMP40 PACK BEACH", "models/player/donj/ump40_pack_beach.mdl" )
player_manager.AddValidHands( "UMP40 PACK BEACH", "models/player/donj/hands/ump40_pack_beach_hands.mdl", 0, "00000000" )

--Add NPC
local Category = "UMP'S"

--Friendly NPC
local NPC = {
    Name = "UMP40_Beach_Friend",
    Class = "npc_citizen",
	Model = "models/player/donj/ump40_pack_beach_friendly.mdl",
	Health = "250",
	KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1", "weapon_ar2", "weapon_shotgun" },
	Category = Category
}
list.Set( "NPC", "UMP40_Beach_Friend", NPC )

--Hostile NPC
local NPC = {
    Name = "UMP40_Beach_Enemy",
    Class = "npc_combine_s",
	Model = "models/player/donj/ump40_pack_beach_hostile.mdl",
	Health = "250",
	KeyValues = { SquadName = "404", Numgrenades = 5 },
	Category = Category,
    Weapons = { "weapon_smg1", "weapon_ar2", "weapon_shotgun" }
}
list.Set( "NPC", "UMP40_Beach_Enemy", NPC )