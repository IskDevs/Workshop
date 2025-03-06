player_manager.AddValidModel( "Megurine Luka (Bikini)", "models/player/dewobedil/vocaloid/megurine_luka/bikini_p.mdl" );
player_manager.AddValidHands( "Megurine Luka (Bikini)", "models/player/dewobedil/vocaloid/megurine_luka/c_arms/bikini_p.mdl", 0, "00000000" )

--View hands code credits: https://steamcommunity.com/id/libertyforce/
if CLIENT then
 
    local function Viewmodel( vm, ply, weapon )
        if CLIENT then
            if ply:GetModel() == "models/player/dewobedil/vocaloid/megurine_luka/bikini_p.mdl" then
                local skin = ply:GetSkin()
                local tattoo = ply:GetBodygroup( 6 ) -- Use the ID of the playermodel's bodygroup
                local bracelet = ply:GetBodygroup( 10 ) -- Use the ID of the playermodel's bodygroup
                local hands = ply:GetHands()
                if ( weapon.UseHands or !weapon:IsScripted() ) then
                    if ( IsValid( hands ) ) then
                        hands:DrawModel()
                        hands:SetSkin( skin ) -- In case you want to change skin too
                        hands:SetBodygroup( 1 , tattoo ) -- Use the ID of the c_hands bodygroup
                        hands:SetBodygroup( 2 , bracelet ) -- Use the ID of the c_hands bodygroup
                    end
                end
            end
        end
    end
    hook.Add( "PostDrawViewModel", "megurine_luka_bikini", Viewmodel )
 
end

local Category = "Vocaloid"

local NPC =
{
	Name = "Megurine Luka (Bikini) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/vocaloid/megurine_luka/bikini_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_megurine_luka_bikini_f", NPC )

local NPC =
{
	Name = "Megurine Luka (Bikini) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/vocaloid/megurine_luka/bikini_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_megurine_luka_bikini_e", NPC )