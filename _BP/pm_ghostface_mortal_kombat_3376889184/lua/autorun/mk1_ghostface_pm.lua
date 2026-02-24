// Ported by Maygik

local modelName = "Ghostface"
local modelPath = "mortal_kombat_1/ghostface/ghostface"

list.Set( "PlayerOptionsModel", modelName, 	"models/" .. modelPath .. ".mdl" )
player_manager.AddValidModel( 	modelName, 	"models/" .. modelPath .. ".mdl" )
player_manager.AddValidHands( 	modelName, 	"models/" .. modelPath .. "_arms.mdl", 0, "00000000" )