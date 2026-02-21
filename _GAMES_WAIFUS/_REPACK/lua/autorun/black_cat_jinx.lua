player_manager.AddValidModel( "Black Cat Jinx", "models/player/dewobedil/black_cat_jinx/default_p.mdl" );
player_manager.AddValidHands( "Black Cat Jinx", "models/player/dewobedil/black_cat_jinx/c_arms/default_p.mdl", 0, "00000000" )

--View hands code credits: https://steamcommunity.com/id/libertyforce/
if CLIENT then
 
    local function Viewmodel( vm, ply, weapon )
        if CLIENT then
            if ply:GetModel() == "models/player/dewobedil/black_cat_jinx/default_p.mdl" then
                local skin = ply:GetSkin()
                local armband1 = ply:GetBodygroup( 6 ) -- Use the ID of the playermodel's bodygroup
                local armband2 = ply:GetBodygroup( 7 ) -- Use the ID of the playermodel's bodygroup
                local hands = ply:GetHands()
                if ( weapon.UseHands or !weapon:IsScripted() ) then
                    if ( IsValid( hands ) ) then
                        hands:DrawModel()
                        hands:SetSkin( skin ) -- In case you want to change skin too
                        hands:SetBodygroup( 1 , armband1 ) -- Use the ID of the c_hands bodygroup
                        hands:SetBodygroup( 2 , armband2 ) -- Use the ID of the c_hands bodygroup
                    end
                end
            end
        end
    end
    hook.Add( "PostDrawViewModel", "black_cat_jinx", Viewmodel )
 
end

local Category = "Black Cat Jinx"

local NPC =
{
	Name = "Black Cat Jinx (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/black_cat_jinx/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_black_cat_jinx_f", NPC )

local NPC =
{
	Name = "Black Cat Jinx (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/black_cat_jinx/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_black_cat_jinx_e", NPC )