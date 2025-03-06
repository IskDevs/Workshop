local NAME = "Miss Hina"
local ID = "miss_hina"
local CATEGORY = "Genshin Impact"
local PREFIX = "models/debiddo/"..ID
local Health = "100"
local Weapons = {
	--"weapon_crowbar",
	"weapon_stunstick",
	"weapon_pistol",
	"weapon_357",
	"weapon_smg1",
	"weapon_ar2",
	--"weapon_rpg",
	"weapon_shotgun"
}

list.Set( "PlayerOptionsModel", NAME, PREFIX.."/pm.mdl" )
player_manager.AddValidModel( NAME, PREFIX.."/pm.mdl" )
player_manager.AddValidHands( NAME, PREFIX.."/c_arms.mdl", 0, 0 )

local function AddNPC( t, class )
	list.Set( "NPC", class or t.Class, t )
end

AddNPC( {
	Name = NAME.." (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = CT_REBEL, SquadName = CATEGORY },
	Model = PREFIX.."/npc.mdl",
	Weapons = Weapons,
	Health = Health,
	Category = CATEGORY
}, "npc_"..ID.."_f" )
AddNPC( {
	Name = NAME.." (Hostile)",
	Class = "npc_combine_s",
	KeyValues = { SquadName = "overwatch"},
	SpawnFlags = SF_NPC_NO_PLAYER_PUSHAWAY,
	Model = PREFIX.."/npc_c.mdl",
	Weapons = Weapons,
	Health = Health,
	Numgrenades = "4",
	Category = CATEGORY
}, "npc_"..ID.."_h" )
--[[
hoo--[[k.Add( "PreDrawPlayerHands", "FirstPersonViewModelHands"..ID, function( hands, vm, ply, wpn )
	if IsValid( hands ) and hands:GetModel() == player_manager.TranslatePlayerHands( NAME ).model then
	hands:SetBodygroup( 1, ply:GetBodygroup( 2 ) )
end end)

local NPC = { PREFIX.."/npc.mdl" || PREFIX.."/npc_c.mdl" }
hook.Add( "PlayerSpawnedNPC", "RandomizeNPC"..ID, function( ply, npc )
	if table.HasValue( NPC, npc:GetModel() ) then
	npc:SetBodygroup( 2, math.random( 0, 1 ) )
	npc:SetBodygroup( 3, math.random( 0, 1 ) )
end end)
]]