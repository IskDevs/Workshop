player_manager.AddValidModel( "Shimotsuki Potofu", "models/player/dewobedil/shimotsuki_potofu/default_p.mdl" );
AddCSLuaFile()
player_manager.AddValidHands( "Shimotsuki Potofu", "models/player/dewobedil/shimotsuki_potofu/c_arms/default_p.mdl", 0, "00000000" )

--View hands code credits: https://steamcommunity.com/id/libertyforce/
if CLIENT then
    local function Viewmodel( vm, ply, weapon )
        if ply:GetModel() == "models/player/dewobedil/shimotsuki_potofu/default_p.mdl" then
            local skin = ply:GetSkin()
            local hands = ply:GetHands()
            if ( weapon.UseHands or !weapon:IsScripted() ) then
                if ( IsValid( hands ) ) then
                    hands:SetSkin( skin ) -- In case you want to change skin too
                end
            end
        end
    end
    hook.Add( "PostDrawViewModel", "shimotsuki_potofu_default", Viewmodel )
end

local Category = "Shimotsuki Potofu"

local NPC =
{
	Name = "Shimotsuki Potofu (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/shimotsuki_potofu/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_shimotsuki_potofu_default_f", NPC )

local NPC =
{
	Name = "Shimotsuki Potofu (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/shimotsuki_potofu/default_e.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "npc_shimotsuki_potofu_default_e", NPC )