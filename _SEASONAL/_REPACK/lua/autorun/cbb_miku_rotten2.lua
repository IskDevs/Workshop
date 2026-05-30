--Add Playermodel
player_manager.AddValidModel( "Tda Rotten Miku (v2)", "models/captainbigbutt/vocaloid/miku_rotten.mdl" )
player_manager.AddValidHands( "Tda Rotten Miku (v2)", "models/captainbigbutt/vocaloid/c_arms/miku_rotten.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "Tda Rotten Miku (v2)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/captainbigbutt/vocaloid/npc/miku_rotten.mdl",
	Category = "Vocaloid"
}

list.Set( "NPC", "npc_cbb_mikurotten2", NPC )

local CBB = {}
function CBB.DrawRottenHands( vm, ply, weapon )
	if CLIENT then
		hskin = LocalPlayer():GetSkin()
		local hands = LocalPlayer():GetHands()
		if ( weapon.UseHands || !weapon:IsScripted() ) then
			if ( IsValid( hands ) ) then
				hands:DrawModel()
				hands:SetSkin(hskin)
			end
		end
	end
end
hook.Add("PostDrawViewModel", "Set player hand skin", CBB.DrawRottenHands)
