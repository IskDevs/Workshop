player_manager.AddValidModel("Jump Force - Naruto", "models/konnie/jumpforce/naruto.mdl")
player_manager.AddValidHands( "Jump Force - Naruto", "models/weapons/arms/v_arms_naruto.mdl", 0, "00000000" )

local Category = "Jump Force"

local function AddNPC( t, class )
list.Set( "NPC", class or t.Class, t )
end

AddNPC( {
Name = "Naruto Uzumaki",
Class = "npc_citizen",
Category = Category,
Model = "models/konnie/jumpforce/naruto_f.mdl",
KeyValues = { citizentype = CT_UNIQUE, SquadName = "jumpforcenaruto_f" }
}, "npc_jumpforcenaruto_f" )