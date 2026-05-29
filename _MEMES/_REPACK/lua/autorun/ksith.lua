local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end

AddPlayerModel( "Knuckles-Sith", 				"models/player/artel/sithuganda/sithknucles.mdl" )

