player_manager.AddValidModel("Aomori Mine (Idol)", "models/sheepylord/blue_archive/aomori_mine_idol.mdl");
player_manager.AddValidHands("Aomori Mine (Idol)", "models/sheepylord/blue_archive/aomori_mine_idol_arms.mdl" , 0, "000000")

local Category = "Blue Archive"

local NPC = {
    Name = "Aomori Mine (Idol) (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/blue_archive/aomori_mine_idol.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "aomori_mine_idol_sheepylord_F", NPC)

local NPC = {
    Name = "Aomori Mine (Idol) (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/blue_archive/aomori_mine_idol.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "aomori_mine_idol_sheepylord_E", NPC)

