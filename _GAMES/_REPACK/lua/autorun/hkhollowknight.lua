player_manager.AddValidModel( "The Hollow Knight", "models/hollowknight/hollowknight/hollowknight.mdl" );
player_manager.AddValidHands( "The Hollow Knight", "models/hollowknight/hollowknight/c_arms.mdl" , 0, "00000000" )
list.Set( "PlayerOptionsModel", "The Hollow Knight", "models/hollowknight/hollowknight/hollowknight.mdl" );

if CLIENT then
 
    local function Viewmodel( vm, ply, weapon )
        if CLIENT then
            if ply:GetModel() == "models/hollowknight/hollowknight/hollowknight.mdl" then
                local leftarm = ply:GetBodygroup( 3 ) -- Use the ID of the playermodel's bodygroup (and also if you want to change the name for the c_arms)
                local hands = ply:GetHands()
                if ( weapon.UseHands or !weapon:IsScripted() ) then
					if ( IsValid( hands ) ) then
						hands:DrawModel()
						hands:SetBodygroup( 1 , leftarm ) -- Use the ID of the c_hands bodygroup ("clothes" You can use bodygroup for the c_arms)
					end
                end
            end
        end
    end
    hook.Add( "PostDrawViewModel", "hollowknight_arms", Viewmodel )
end

local NPC = {
	Name = "The Hollow Knight",
	Class = "npc_citizen",
	Category = "The Boys NPCs",
	Model = "models/hollowknight/hollowknight/hollowknight.mdl",
	KeyValues = { citizentype = CT_UNIQUE }
}
list.Set( "NPC", "npc_hkhollowknight_citizen", NPC )