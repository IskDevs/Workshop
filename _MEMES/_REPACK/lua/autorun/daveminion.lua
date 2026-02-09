if SERVER then
	AddCSLuaFile()
	resource.AddFile("models/eddy/player/miniondave/mc_001_df.vmt")
	resource.AddFile("models/eddy/player/miniondave/mc_hair_df.vmt")
	resource.AddFile("models/eddy/player/minionstuart/map_decominions_df.vmt")
	resource.AddFile("models/eddy/player/crominion/CroMinion1Tex.vmt")

end

local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end


AddPlayerModel( "daveminion", "models/eddy/player/miniondave/daveminion.mdl" )
AddPlayerModel( "stuartminion", "models/eddy/player/minionstuart/stuartminion.mdl" )
AddPlayerModel( "jerryminion", "models/eddy/player/minionjerry/jerryminion.mdl" )
AddPlayerModel( "kevinminion", "models/eddy/player/minionkevin/kevinminion.mdl" )
AddPlayerModel( "crominion", "models/eddy/player/crominion/crominion.mdl" )