CreateConVar( "sv_viewheight", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } )

hook.Add("PlayerSpawn", "angel_Viewheight_Offeset", function(ply)
	if not ply or not ply:IsValid() then return end
	e = ents.Create("gmod_hands")
	e:SetOwner(ply)
	e:Spawn()
	e:SetOwner(ply)
	ply:SetHands( e )
	if (ply:GetModel() == "models/angel.mdl") || (ply:GetModel() == "models/angel.mdl") then
	timer.Simple(0.1, function()
	if GetConVarNumber( "sv_viewheight" ) == 1 then
	ply:SetViewOffset( Vector( 0, 0, 36 ) )
	ply:SetViewOffsetDucked( Vector( 0, 0, 24 ) )
	end
	end)
	else
	ply:SetViewOffset( Vector( 0, 0, 65 ) )
	ply:SetViewOffsetDucked( Vector( 0, 0, 29 ) )
	end
end)