
local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end

list.Set( "PlayerOptionsModel", "Grigori Vsauce", "models/vs/vsauce_monk.mdl" )
player_manager.AddValidModel( "Grigori Vsauce", "models/vs/vsauce_monk.mdl" )
player_manager.AddValidHands( "Grigori Vsauce", "models/vs/weapon/vsoos_vm.mdl", 0, "00000000" )



