player_manager.AddValidModel( "Raphtalia (Default)", "models/player/dewobedil/the_rising_of_the_shield_hero/raphtalia/default_p.mdl" );
player_manager.AddValidHands( "Raphtalia (Default)", "models/player/dewobedil/the_rising_of_the_shield_hero/raphtalia/c_arms/default_p.mdl", 0, "00000000" )

--View hands code credits: https://steamcommunity.com/id/libertyforce/
if CLIENT then
 
    local function Viewmodel( vm, ply, weapon )
        if CLIENT then
            if ply:GetModel() == "models/player/dewobedil/the_rising_of_the_shield_hero/raphtalia/default_p.mdl" then
                local skin = ply:GetSkin()
                local handring = ply:GetBodygroup( 4 ) -- Use the ID of the playermodel's bodygroup
                local hands = ply:GetHands()
                if ( weapon.UseHands or !weapon:IsScripted() ) then
                    if ( IsValid( hands ) ) then
                        hands:DrawModel()
                        hands:SetSkin( skin ) -- In case you want to change skin too
                        hands:SetBodygroup( 1 , handring ) -- Use the ID of the c_hands bodygroup
                    end
                end
            end
        end
    end
    hook.Add( "PostDrawViewModel", "raphtalia_default", Viewmodel )
 
end

local Category = "The Rising Of The Shield Hero"

local NPC =
{
	Name = "Raphtalia (Default) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/the_rising_of_the_shield_hero/raphtalia/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_raphtalia_default_f", NPC )

local NPC =
{
	Name = "Raphtalia (Default) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/the_rising_of_the_shield_hero/raphtalia/default_e.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "npc_raphtalia_default_e", NPC )