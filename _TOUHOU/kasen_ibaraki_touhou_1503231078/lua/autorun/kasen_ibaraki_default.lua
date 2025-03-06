player_manager.AddValidModel( "Kasen Ibaraki (Default)", "models/player/dewobedil/touhou/kasen_ibaraki/default_p.mdl" );
player_manager.AddValidHands( "Kasen Ibaraki (Default)", "models/player/dewobedil/touhou/kasen_ibaraki/c_arms/default_p.mdl", 0, "00000000" )

--View hands code credits: https://steamcommunity.com/id/libertyforce/
if CLIENT then
 
    local function Viewmodel( vm, ply, weapon )
        if CLIENT then
            if ply:GetModel() == "models/player/dewobedil/touhou/kasen_ibaraki/default_p.mdl" then
                local skin = ply:GetSkin()
                local chain = ply:GetBodygroup( 5 ) -- Use the ID of the playermodel's bodygroup
                local hands = ply:GetHands()
                if ( weapon.UseHands or !weapon:IsScripted() ) then
                    if ( IsValid( hands ) ) then
                        hands:DrawModel()
                        hands:SetSkin( skin ) -- In case you want to change skin too
                        hands:SetBodygroup( 1 , chain ) -- Use the ID of the c_hands bodygroup
                    end
                end
            end
        end
    end
    hook.Add( "PostDrawViewModel", "ken_amada", Viewmodel )
 
end

local Category = "Touhou"

local NPC =
{
	Name = "Kasen Ibaraki (Default) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/touhou/kasen_ibaraki/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_kasen_ibaraki_f", NPC )

local NPC =
{
	Name = "Kasen Ibaraki (Default) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/touhou/kasen_ibaraki/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_kasen_ibaraki_e", NPC )

if SERVER then
	resource.AddWorkshop("1503231078")
end