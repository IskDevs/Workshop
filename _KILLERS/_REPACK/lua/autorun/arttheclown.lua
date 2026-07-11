local function AddPlayerModel( name, model )

    list.Set( "PlayerOptionsModel", name, model )
    player_manager.AddValidModel( name, model )
	
end

AddPlayerModel( "Art The Clown", "models/player/ndord/cod/arttheclown.mdl" )
