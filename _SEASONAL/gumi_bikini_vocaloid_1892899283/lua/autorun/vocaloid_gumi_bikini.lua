player_manager.AddValidModel( "Gumi (Bikini)", "models/player/dewobedil/vocaloid/gumi/bikini_p.mdl" );
player_manager.AddValidHands( "Gumi (Bikini)", "models/player/dewobedil/vocaloid/gumi/c_arms/bikini_p.mdl", 0, "00000000" )

--View hands code credits: https://steamcommunity.com/id/libertyforce/
if CLIENT then
 
    local function Viewmodel( vm, ply, weapon )
        if CLIENT then
            if ply:GetModel() == "models/player/dewobedil/vocaloid/gumi/bikini_p.mdl" then
                local skin = ply:GetSkin()
                local ring = ply:GetBodygroup( 4 ) -- Use the ID of the playermodel's bodygroup
                local hands = ply:GetHands()
                if ( weapon.UseHands or !weapon:IsScripted() ) then
                    if ( IsValid( hands ) ) then
                        hands:DrawModel()
                        hands:SetSkin( skin ) -- In case you want to change skin too
                        hands:SetBodygroup( 1 , ring ) -- Use the ID of the c_hands bodygroup
                    end
                end
            end
        end
    end
    hook.Add( "PostDrawViewModel", "vocaloid_gumi_bikini", Viewmodel )
end

local Category = "Vocaloid"

local NPC =
{
	Name = "Gumi (Bikini) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/vocaloid/gumi/bikini_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_vocaloid_gumi_bikini_f", NPC )

local NPC =
{
	Name = "Gumi (Bikini) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/vocaloid/gumi/bikini_e.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "npc_vocaloid_gumi_bikini_e", NPC )