player_manager.AddValidModel( "Fall Guy", "models/fallguys/default.mdl" );
player_manager.AddValidHands( "Fall Guy", "models/fallguys/c_arms.mdl" , 0, "00000000" )
list.Set( "PlayerOptionsModel", "Fall Guy", "models/fallguys/default.mdl" );

if CLIENT then
 
    local function Viewmodel( vm, ply, weapon )
        if CLIENT then
            if ply:GetModel() == "models/fallguys/default.mdl" then
                local fallarms = ply:GetBodygroup( 1 ) -- Use the ID of the playermodel's bodygroup (and also if you want to change the name for the c_arms)
                local hands = ply:GetHands()
				local skin = ply:GetSkin()
                if ( weapon.UseHands or !weapon:IsScripted() ) then
					if ( IsValid( hands ) ) then
						hands:DrawModel()
						hands:SetBodygroup( 0 , fallarms ) -- Use the ID of the c_hands bodygroup ("clothes" You can use bodygroup for the c_arms)
						hands:SetSkin( skin ) -- Use the ID of the c_hands bodygroup ("clothes" You can use bodygroup for the c_arms)
					end
                end
            end
        end
    end
    hook.Add( "PostDrawViewModel", "fallguy_arms", Viewmodel )
end

local NPC = {
	Name = "Fall Guy",
	Class = "npc_citizen",
	Category = "The Boys NPCs",
	Model = "models/fallguys/default.mdl",
	KeyValues = { citizentype = CT_UNIQUE }
}
list.Set( "NPC", "npc_fallguy_citizen", NPC )