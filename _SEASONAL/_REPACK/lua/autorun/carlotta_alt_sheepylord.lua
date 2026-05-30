player_manager.AddValidModel("Carlotta - Splashing Summer", "models/sheepylord/wuthering_waves/carlotta_alt.mdl");
player_manager.AddValidHands("Carlotta - Splashing Summer", "models/sheepylord/wuthering_waves/carlotta_alt_arms.mdl" , 0, "000000")

local Category = "Wuthering Waves"

local NPC = {
    Name = "Carlotta - Splashing Summer (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/wuthering_waves/carlotta_alt.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "carlotta_alt_sheepylord_F", NPC)

local NPC = {
    Name = "Carlotta - Splashing Summer (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/wuthering_waves/carlotta_alt.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "carlotta_alt_sheepylord_E", NPC)

