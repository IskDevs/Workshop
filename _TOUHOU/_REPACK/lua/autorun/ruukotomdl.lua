local function AddPlayerModel( Identifier, Model, Hands )
	player_manager.AddValidModel( Identifier, Model )
	if Hands and type( Hands ) == "string" then
		player_manager.AddValidHands( Identifier, Hands, 0, "0000000" )
	end
end

AddPlayerModel( "ruukoto", "models/sinful/ruukoto.mdl", "models/weapons/c_arms_ruukoto.mdl" )
