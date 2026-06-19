player_manager.AddValidModel("Kokona Space Engineer", "models/sheepylord/wxp/Kokona___Space_Engineer_pm.mdl");
player_manager.AddValidHands("Kokona Space Engineer", "models/sheepylord/wxp/Kokona___Space_Engineer_arms.mdl" , 0, "000000")

local Category = "wxp"

local NPC = {
    Name = "Kokona Space Engineer (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/wxp/Kokona___Space_Engineer.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "Kokona___Space_Engineer_sheepylord_F", NPC)

local NPC = {
    Name = "Kokona Space Engineer (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/wxp/Kokona___Space_Engineer.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "Kokona___Space_Engineer_sheepylord_E", NPC)
