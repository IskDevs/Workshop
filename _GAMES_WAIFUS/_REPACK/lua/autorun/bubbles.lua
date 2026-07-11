local function AddPlayerModel( Identifier, Model, Hands )
	player_manager.AddValidModel( Identifier, Model )
	if Hands and type( Hands ) == "string" then
		player_manager.AddValidHands( Identifier, Hands, 0, "0000000" )
	end
end

AddPlayerModel( "bubbles", "models/bubbles_playermodel.mdl", "models/bubbles_playerarms.mdl" )

