player_manager.AddValidModel("Iuno", "models/sheepylord/wuthering_waves/iuno.mdl");
player_manager.AddValidHands("Iuno", "models/sheepylord/wuthering_waves/iuno_arms.mdl" , 0, "000000")

local Category = "Wuthering Waves"

local NPC = {
    Name = "Iuno (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/wuthering_waves/iuno.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "iuno_sheepylord_F", NPC)

local NPC = {
    Name = "Iuno (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/wuthering_waves/iuno.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "iuno_sheepylord_E", NPC)

