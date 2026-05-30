player_manager.AddValidModel("Tsukiyuki Miyako (Swimsuit)", "models/sheepylord/blue_archive/tsukiyuki_miyako_swimsuit.mdl");
player_manager.AddValidHands("Tsukiyuki Miyako (Swimsuit)", "models/sheepylord/blue_archive/tsukiyuki_miyako_swimsuit_arms.mdl" , 0, "000000")

local Category = "Blue Archive"

local NPC = {
    Name = "Tsukiyuki Miyako (Swimsuit) (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/blue_archive/tsukiyuki_miyako_swimsuit.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "tsukiyuki_miyako_swimsuit_sheepylord_F", NPC)

local NPC = {
    Name = "Tsukiyuki Miyako (Swimsuit) (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/blue_archive/tsukiyuki_miyako_swimsuit.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "tsukiyuki_miyako_swimsuit_sheepylord_E", NPC)

