local function spawn( ply )
	ply:SetNW2Bool( "ActiveThermal", false)
	ply:SetNW2Bool( "CanGivePickaxe", true)
	ply:SetNW2Bool( "CanDrinkFortniteSlurpJuiceYet", true )
end
hook.Add( "PlayerSpawn", "SetSettings", spawn )

local function DisableDmgForImpulseNade( ply, speed )
if ply:GetNW2Bool( "FortniteImpulseEffects" ) == true then
ply:SetNW2Bool( "FortniteImpulseEffects" , false )
return 0
end

end
hook.Add( "GetFallDamage", "DisableFallDamageIfImpulseGrenade", DisableDmgForImpulseNade )

local function ammo()
game.AddAmmoType( {
	name = "fortnite_shields",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE,
	plydmg = 0,
	npcdmg = 0,
	force = 2000,
	minsplash = 10,
	maxsplash = 5
} )

game.AddAmmoType( {
	name = "fortnite_smallshields",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE,
	plydmg = 0,
	npcdmg = 0,
	force = 2000,
	minsplash = 10,
	maxsplash = 5
} )

game.AddAmmoType( {
	name = "fortnite_bandages",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE,
	plydmg = 0,
	npcdmg = 0,
	force = 2000,
	minsplash = 10,
	maxsplash = 5
} )

game.AddAmmoType( {
	name = "fortnite_medkits",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE,
	plydmg = 0,
	npcdmg = 0,
	force = 2000,
	minsplash = 10,
	maxsplash = 5
} )

game.AddParticles("particles/fortnite_effects.pcf")
PrecacheParticleSystem("fortnite_smoke_common")
PrecacheParticleSystem("fortnite_smoke_uncommon")
PrecacheParticleSystem("fortnite_smoke_rare")
PrecacheParticleSystem("fortnite_smoke_epic")
PrecacheParticleSystem("fortnite_smoke_legendary")
PrecacheParticleSystem("Tracer")
CreateConVar("fortnite_drawrarity","1",{FCVAR_ARCHIVE,FCVAR_REPLICATED,FCVAR_CHEAT,FCVAR_NOTIFY})

if CLIENT then
	language.Add("fortnite_shields_ammo", "Shield Potions")
	language.Add("fortnite_smallshields_ammo", "Small Shield Potions")
	language.Add("fortnite_bandages_ammo", "Bandages")
	language.Add("fortnite_medkits_ammo", "Med Kits")
end

end
hook.Add( "Initialize", "AddAmmo", ammo )

hook.Add( "PlayerPostThink", "SwitchToLastWeaponUsedFortnite", function( ply )

	if IsValid(ply) and ply:Alive() and ply.DroppedFortniteWeapon == true and IsFirstTimePredicted() then
	ply.DroppedFortniteWeapon = false
	timer.Simple( 0.0001, function() if IsValid(ply) and IsValid(ply:GetPreviousWeapon()) and ply:GetPreviousWeapon():IsWeapon() and IsFirstTimePredicted() then ply:SelectWeapon( ply:GetPreviousWeapon() ) end end )
	end

end )

hook.Add( "PlayerGiveSWEP", "StopAxerciseSpam", function( ply, class, swep )
	if IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and class == "fortnite_pickaxe" then
		return false
	end
end )

hook.Add( "PlayerGiveSWEP", "StopCleanCutSpam", function( ply, class, swep )
	if IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and class == "fortnite_pickaxe" then
		return false
	end
end )

hook.Add( "PlayerGiveSWEP", "StopDiscoSpam", function( ply, class, swep )
	if IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and class == "fortnite_pickaxe" then
		return false
	end
end )

hook.Add( "PlayerGiveSWEP", "StopLlamaSpam", function( ply, class, swep )
	if IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and class == "fortnite_pickaxe" then
		return false
	end
end )

hook.Add( "PlayerGiveSWEP", "StopNoPickSpam", function( ply, class, swep )
	if !ply:GetNW2Bool( "CanGivePickaxe", true) and class == "fortnite_pickaxe" then
		return false
	end
end )

hook.Add( "PlayerGiveSWEP", "StopAbominableAxeSpam", function( ply, class, swep )
	if IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and class == "fortnite_pickaxe" then
		return false
	end
end )

hook.Add( "PlayerGiveSWEP", "StopAxeroniSpam", function( ply, class, swep )
	if IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and class == "fortnite_pickaxe" then
		return false
	end
end )

hook.Add( "PlayerGiveSWEP", "StopDirectorsCutSpam", function( ply, class, swep )
	if IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and class == "fortnite_pickaxe" then
		return false
	end
end )

hook.Add( "ScaleNPCDamage", "HeadShot75FortniteNPC", function( ply, hitgroup, dmginfo )

local Fortnite75Weapons = {
	fortnite_pistol = true,
	fortnite_pistol_uncommon = true,
	fortnite_pistol_rare = true,
	fortnite_smg = true,
	fortnite_smg_uncommon = true,
	fortnite_smg_rare = true,
	fortnite_specopssmg = true,
	fortnite_specopssmg_uncommon = true,
	fortnite_specopssmg_rare = true,
	fortnite_smg = true,
	fortnite_smg_uncommon = true,
	fortnite_smg_rare = true,
	fortnite_tacsmg_epic = true,
	fortnite_tacsmg_uncommon = true,
	fortnite_tacsmg_rare = true,
	fortnite_p90_epic = true,
	fortnite_p90_legendary = true,
	fortnite_minigun_epic = true,
	fortnite_specopspistol_epic = true,
	fortnite_specopspistol_legendary = true,
	fortnite_drumgun_rare = true,
	fortnite_drumgun_uncommon = true,
	fortnite_minigun_legendary = true
}

	 if IsValid(dmginfo:GetAttacker()) and dmginfo:GetAttacker():IsPlayer() and IsValid(dmginfo:GetAttacker():GetActiveWeapon()) and dmginfo:IsBulletDamage() and Fortnite75Weapons[dmginfo:GetAttacker():GetActiveWeapon():GetClass()] and hitgroup == HITGROUP_HEAD then
		dmginfo:ScaleDamage( 0.75 )
	 end
end )

hook.Add( "ScalePlayerDamage", "HeadShot75FortnitePlayer", function( ply, hitgroup, dmginfo )

local Fortnite75Weapons = {
	fortnite_pistol = true,
	fortnite_pistol_uncommon = true,
	fortnite_pistol_rare = true,
	fortnite_smg = true,
	fortnite_smg_uncommon = true,
	fortnite_smg_rare = true,
	fortnite_specopssmg = true,
	fortnite_specopssmg_uncommon = true,
	fortnite_specopssmg_rare = true,
	fortnite_smg = true,
	fortnite_smg_uncommon = true,
	fortnite_smg_rare = true,
	fortnite_tacsmg_epic = true,
	fortnite_tacsmg_uncommon = true,
	fortnite_tacsmg_rare = true,
	fortnite_p90_epic = true,
	fortnite_p90_legendary = true,
	fortnite_minigun_epic = true,
	fortnite_specopspistol_epic = true,
	fortnite_specopspistol_legendary = true,
	fortnite_drumgun_rare = true,
	fortnite_drumgun_uncommon = true,
	fortnite_minigun_legendary = true
}

	 if IsValid(dmginfo:GetAttacker()) and dmginfo:GetAttacker():IsPlayer() and IsValid(dmginfo:GetAttacker():GetActiveWeapon()) and dmginfo:IsBulletDamage() and Fortnite75Weapons[dmginfo:GetAttacker():GetActiveWeapon():GetClass()] and hitgroup == HITGROUP_HEAD then
		dmginfo:ScaleDamage( 0.75 )
	 end
end )

hook.Add( "EntityTakeDamage", "ReduceFortniteProjDmgSimphys", function( target, dmginfo )
	if ( target:GetClass() == "gmod_sent_vehicle_fphysics_base" and dmginfo:GetAttacker():IsWorld() and dmginfo:GetBaseDamage() > 599 and dmginfo:GetBaseDamage() < 610 or target:GetClass() == "gmod_sent_vehicle_fphysics_base" and dmginfo:GetAttacker():IsWorld() and dmginfo:GetBaseDamage() > 689 and dmginfo:GetBaseDamage() < 700 ) then
		dmginfo:ScaleDamage(0.01)
	end
end )


hook.Add( "PreDrawHalos", "MythicRarityHalosForSWEPS", function()

if GetConVar( "fortnite_drawrarity" ):GetInt() == 0 then return end

	local mythicweaps = {}
	local i = 0

	for _, mythic in ipairs( ents.GetAll() ) do
		if ( mythic:GetClass() == "fortnite_infinityblade" and mythic:IsWeapon() and !IsValid(mythic.Owner) ) then
			i = i + 1
			mythicweaps[i] = mythic
		end
	end

	halo.Add( mythicweaps, Color( 255, 216, 0 ), 5, 5, 2, true, false )
end )

hook.Add( "PreDrawHalos", "LegendaryRarityHalosForSWEPS", function()

if GetConVar( "fortnite_drawrarity" ):GetInt() == 0 then return end

local FortniteLegendaryWeapons = {
	fortnite_chugjug = true,
	fortnite_ak47_legendary = true,
	fortnite_automaticsniper_legendary = true,
	fortnite_boltsniper_legendary = true,
	fortnite_assaultrifle_legendary = true,
	fortnite_assaultriflesilenced_legendary = true,
	fortnite_boltsnipersilenced_legendary = true,
	fortnite_burstrifle_legendary = true,
	fortnite_combatshotgun_legendary = true,
	fortnite_p90_legendary = true,
	fortnite_dublshotgun_legendary = true,
	fortnite_dualpistol_legendary = true,
	fortnite_gl180_legendary = true,
	fortnite_deagle_legendary = true,
	fortnite_heavyshotgun_legendary = true,
	fortnite_heavysniper_legendary = true,
	fortnite_infantryrifle_legendary = true,
	fortnite_minigun_legendary = true,
	fortnite_revolver_legendary = true,
	fortnite_pgl_legendary = true,
	fortnite_pumpshotgun_legendary = true,
	fortnite_m202_legendary = true,
	fortnite_rpg7_legendary = true,
	fortnite_scopedrevolver_legendary = true,
	fortnite_stormscoutsniper_legendary = true,
	fortnite_autosniper_legendary = true,
	fortnite_specopspistol_legendary = true,
	fortnite_tacticalar_legendary = true,
	fortnite_thermalscopedar_legendary = true
}

	local legendaryweaps = {}
	local i = 0

	for _, legend in ipairs( ents.GetAll() ) do
		if ( FortniteLegendaryWeapons[legend:GetClass()] and legend:IsWeapon() and !IsValid(legend.Owner) ) then
			i = i + 1
			legendaryweaps[i] = legend
		end
	end

	halo.Add( legendaryweaps, Color( 255, 106, 0 ), 5, 5, 1, true, false )
end )

hook.Add( "PreDrawHalos", "EpicRarityHalosForSWEPS", function()

if GetConVar( "fortnite_drawrarity" ):GetInt() == 0 then return end

local FortniteEpicWeapons = {
	fortnite_pickaxe_globalaxe = true,
	fortnite_pickaxe_deathvalley = true,
	fortnite_pickaxe_partyanimal = true,
	fortnite_pickaxe_disco = true,
	fortnite_pickaxe_acdc = true,
	fortnite_pickaxe_marshmello = true,
	fortnite_stinkbomb = true,
	fortnite_slurpjuice = true,
	fortnite_ak47_epic = true,
	fortnite_automaticsniper_epic = true,
	fortnite_crossbow_epic = true,
	fortnite_boltsniper_epic = true,
	fortnite_assaultrifle_epic = true,
	fortnite_assaultriflesilenced_epic = true,
	fortnite_boltsnipersilenced_epic = true,
	fortnite_burstrifle_epic = true,
	fortnite_combatshotgun_epic = true,
	fortnite_p90_epic = true,
	fortnite_m249_epic = true,
	fortnite_6shooter_epic = true,
	fortnite_tacsmg_epic = true,
	fortnite_tacticalshotgun_epic = true,
	fortnite_dublshotgun_epic = true,
	fortnite_dualpistol_epic = true,
	fortnite_gl180_epic = true,
	fortnite_deagle_epic = true,
	fortnite_heavyshotgun_epic = true,
	fortnite_heavysniper_epic = true,
	fortnite_infantryrifle_epic = true,
	fortnite_minigun_epic = true,
	fortnite_revolver_epic = true,
	fortnite_pgl_epic = true,
	fortnite_pumpshotgun_epic = true,
	fortnite_scopedrifle_epic = true,
	fortnite_m202_epic = true,
	fortnite_rpg7_epic = true,
	fortnite_scopedrevolver_epic = true,
	fortnite_stormscoutsniper_epic = true,
	fortnite_autosniper_epic = true,
	fortnite_specopspistol_epic = true,
	fortnite_tacticalar_epic = true,
	fortnite_thermalscopedar_epic = true
}

	local epicweaps = {}
	local i = 0

	for _, epic in ipairs( ents.GetAll() ) do
		if ( FortniteEpicWeapons[epic:GetClass()] and epic:IsWeapon() and !IsValid(epic.Owner) ) then
			i = i + 1
			epicweaps[i] = epic
		end
	end

	halo.Add( epicweaps, Color( 178, 0, 255 ), 5, 5, 1, true, false )
end )

hook.Add( "PreDrawHalos", "RareRarityHalosForSWEPS", function()

if GetConVar( "fortnite_drawrarity" ):GetInt() == 0 then return end

local FortniteRareWeapons = {
	fortnite_pickaxe_axeroni = true,
	fortnite_pickaxe_abominableaxe = true,
	fortnite_pickaxe_directorscut = true,
	fortnite_pickaxe_reaper = true,
	fortnite_shieldpotion = true,
	fortnite_chugsplash = true,
	fortnite_ak47_rare = true,
	fortnite_automaticsniper_rare = true,
	fortnite_crossbow_rare = true,
	fortnite_boltsniper_rare = true,
	fortnite_assaultrifle_rare = true,
	fortnite_burstrifle_rare = true,
	fortnite_combatshotgun_rare = true,
	fortnite_m249_rare = true,
	fortnite_6shooter_rare = true,
	fortnite_tacsmg_rare = true,
	fortnite_tacticalshotgun_rare = true,
	fortnite_gl180_rare = true,
	fortnite_infantryrifle_rare = true,
	fortnite_revolver_rare = true,
	fortnite_pumpshotgun_rare = true,
	fortnite_scopedrifle_rare = true,
	fortnite_rpg7_rare = true,
	fortnite_tacticalar_rare = true,
	fortnite_burstsmg_rare = true,
	fortnite_drumgun_rare = true,
	fortnite_drumshotgun_rare = true,
	fortnite_huntingrifle_rare = true,
	fortnite_pistol_rare = true,
	fortnite_smg_rare = true,
	fortnite_specopssmg_rare = true
}

	local rareweaps = {}
	local i = 0

	for _, rare in ipairs( ents.GetAll() ) do
		if ( FortniteRareWeapons[rare:GetClass()] and rare:IsWeapon() and !IsValid(rare.Owner) ) then
			i = i + 1
			rareweaps[i] = rare
		end
	end

	halo.Add( rareweaps, Color( 0, 148, 255 ), 5, 5, 1, true, false )
end )

hook.Add( "PreDrawHalos", "UncommonRarityHalosForSWEPS", function()

if GetConVar( "fortnite_drawrarity" ):GetInt() == 0 then return end

local FortniteUncommonWeapons = {
	fortnite_pickaxe_cleancut = true,
	fortnite_pickaxe_axercise = true,
	fortnite_pickaxe_llama = true,
	fortnite_pickaxe_forkknife = true,
	fortnite_smallshieldpotion = true,
	fortnite_medkit = true,
	fortnite_assaultrifle_uncommon = true,
	fortnite_burstrifle_uncommon = true,
	fortnite_6shooter_uncommon = true,
	fortnite_tacsmg_uncommon = true,
	fortnite_tacticalshotgun_uncommon = true,
	fortnite_infantryrifle_uncommon = true,
	fortnite_revolver_uncommon = true,
	fortnite_pumpshotgun_uncommon = true,
	fortnite_burstsmg_uncommon = true,
	fortnite_drumgun_uncommon = true,
	fortnite_drumshotgun_uncommon = true,
	fortnite_huntingrifle_uncommon = true,
	fortnite_pistol_uncommon = true,
	fortnite_smg_uncommon = true,
	fortnite_flintknock_uncommon = true,
	fortnite_specopssmg_uncommon = true
}

	local uncommonweaps = {}
	local i = 0

	for _, uncommon in ipairs( ents.GetAll() ) do
		if ( FortniteUncommonWeapons[uncommon:GetClass()] and uncommon:IsWeapon() and !IsValid(uncommon.Owner) ) then
			i = i + 1
			uncommonweaps[i] = uncommon
		end
	end

	halo.Add( uncommonweaps, Color( 76, 255, 0 ), 5, 5, 1, true, false )
end )

hook.Add( "PreDrawHalos", "CommonRarityHalosForSWEPS", function()

if GetConVar( "fortnite_drawrarity" ):GetInt() == 0 then return end

local FortniteCommonWeapons = {
	fortnite_pickaxe = true,
	fortnite_impulsegrenade = true,
	fortnite_grenade = true,
	fortnite_bandage = true,
	fortnite_assaultrifle = true,
	fortnite_burstrifle = true,
	fortnite_infantryrifle = true,
	fortnite_revolver = true,
	fortnite_pumpshotgun = true,
	fortnite_burstsmg = true,
	fortnite_drumshotgun = true,
	fortnite_pistol = true,
	fortnite_smg = true,
	fortnite_flintknock = true,
	fortnite_specopssmg = true
}

	local commonweaps = {}
	local i = 0

	for _, common in ipairs( ents.GetAll() ) do
		if ( FortniteCommonWeapons[common:GetClass()] and common:IsWeapon() and !IsValid(common.Owner) ) then
			i = i + 1
			commonweaps[i] = common
		end
	end

	halo.Add( commonweaps, Color( 229, 229, 229 ), 5, 5, 1, true, false )
end )

hook.Add( "PlayerEnteredVehicle", "DescopeOnVehicleEnterFortnite", function( ply, veh, role )

 local ZoomableFortniteWeapons = {
	fortnite_assaultrifle = true,
	fortnite_burstrifle = true,
	fortnite_infantryrifle = true,
	fortnite_revolver = true,
	fortnite_pumpshotgun = true,
	fortnite_burstsmg = true,
	fortnite_drumshotgun = true,
	fortnite_pistol = true,
	fortnite_smg = true,
	fortnite_flintknock = true,
	fortnite_specopssmg = true,
	fortnite_assaultrifle_uncommon = true,
	fortnite_burstrifle_uncommon = true,
	fortnite_6shooter_uncommon = true,
	fortnite_tacsmg_uncommon = true,
	fortnite_tacticalshotgun_uncommon = true,
	fortnite_infantryrifle_uncommon = true,
	fortnite_revolver_uncommon = true,
	fortnite_pumpshotgun_uncommon = true,
	fortnite_burstsmg_uncommon = true,
	fortnite_drumgun_uncommon = true,
	fortnite_drumshotgun_uncommon = true,
	fortnite_huntingrifle_uncommon = true,
	fortnite_pistol_uncommon = true,
	fortnite_smg_uncommon = true,
	fortnite_flintknock_uncommon = true,
	fortnite_specopssmg_uncommon = true,
	fortnite_ak47_rare = true,
	fortnite_automaticsniper_rare = true,
	fortnite_crossbow_rare = true,
	fortnite_boltsniper_rare = true,
	fortnite_assaultrifle_rare = true,
	fortnite_burstrifle_rare = true,
	fortnite_combatshotgun_rare = true,
	fortnite_m249_rare = true,
	fortnite_6shooter_rare = true,
	fortnite_tacsmg_rare = true,
	fortnite_tacticalshotgun_rare = true,
	fortnite_gl180_rare = true,
	fortnite_infantryrifle_rare = true,
	fortnite_revolver_rare = true,
	fortnite_pumpshotgun_rare = true,
	fortnite_scopedrifle_rare = true,
	fortnite_rpg7_rare = true,
	fortnite_tacticalar_rare = true,
	fortnite_burstsmg_rare = true,
	fortnite_drumgun_rare = true,
	fortnite_drumshotgun_rare = true,
	fortnite_huntingrifle_rare = true,
	fortnite_pistol_rare = true,
	fortnite_smg_rare = true,
	fortnite_specopssmg_rare = true,
	fortnite_ak47_epic = true,
	fortnite_automaticsniper_epic = true,
	fortnite_crossbow_epic = true,
	fortnite_boltsniper_epic = true,
	fortnite_assaultrifle_epic = true,
	fortnite_assaultriflesilenced_epic = true,
	fortnite_boltsnipersilenced_epic = true,
	fortnite_burstrifle_epic = true,
	fortnite_combatshotgun_epic = true,
	fortnite_p90_epic = true,
	fortnite_m249_epic = true,
	fortnite_6shooter_epic = true,
	fortnite_tacsmg_epic = true,
	fortnite_tacticalshotgun_epic = true,
	fortnite_dublshotgun_epic = true,
	fortnite_dualpistol_epic = true,
	fortnite_gl180_epic = true,
	fortnite_deagle_epic = true,
	fortnite_heavyshotgun_epic = true,
	fortnite_heavysniper_epic = true,
	fortnite_infantryrifle_epic = true,
	fortnite_minigun_epic = true,
	fortnite_revolver_epic = true,
	fortnite_pgl_epic = true,
	fortnite_pumpshotgun_epic = true,
	fortnite_scopedrifle_epic = true,
	fortnite_m202_epic = true,
	fortnite_rpg7_epic = true,
	fortnite_scopedrevolver_epic = true,
	fortnite_stormscoutsniper_epic = true,
	fortnite_autosniper_epic = true,
	fortnite_specopspistol_epic = true,
	fortnite_tacticalar_epic = true,
	fortnite_thermalscopedar_epic = true,
	fortnite_ak47_legendary = true,
	fortnite_automaticsniper_legendary = true,
	fortnite_boltsniper_legendary = true,
	fortnite_assaultrifle_legendary = true,
	fortnite_assaultriflesilenced_legendary = true,
	fortnite_boltsnipersilenced_legendary = true,
	fortnite_burstrifle_legendary = true,
	fortnite_combatshotgun_legendary = true,
	fortnite_p90_legendary = true,
	fortnite_dublshotgun_legendary = true,
	fortnite_dualpistol_legendary = true,
	fortnite_gl180_legendary = true,
	fortnite_deagle_legendary = true,
	fortnite_heavyshotgun_legendary = true,
	fortnite_heavysniper_legendary = true,
	fortnite_infantryrifle_legendary = true,
	fortnite_minigun_legendary = true,
	fortnite_revolver_legendary = true,
	fortnite_pgl_legendary = true,
	fortnite_pumpshotgun_legendary = true,
	fortnite_m202_legendary = true,
	fortnite_rpg7_legendary = true,
	fortnite_scopedrevolver_legendary = true,
	fortnite_stormscoutsniper_legendary = true,
	fortnite_autosniper_legendary = true,
	fortnite_specopspistol_legendary = true,
	fortnite_tacticalar_legendary = true,
	fortnite_thermalscopedar_legendary = true
}

local FortniteWeapons = {
	fortnite_pickaxe = true,
	fortnite_impulsegrenade = true,
	fortnite_grenade = true,
	fortnite_bandage = true,
	fortnite_assaultrifle = true,
	fortnite_burstrifle = true,
	fortnite_infantryrifle = true,
	fortnite_revolver = true,
	fortnite_pumpshotgun = true,
	fortnite_burstsmg = true,
	fortnite_drumshotgun = true,
	fortnite_pistol = true,
	fortnite_smg = true,
	fortnite_flintknock = true,
	fortnite_specopssmg = true,
	fortnite_pickaxe_cleancut = true,
	fortnite_pickaxe_axercise = true,
	fortnite_pickaxe_llama = true,
	fortnite_pickaxe_forkknife = true,
	fortnite_smallshieldpotion = true,
	fortnite_medkit = true,
	fortnite_assaultrifle_uncommon = true,
	fortnite_burstrifle_uncommon = true,
	fortnite_6shooter_uncommon = true,
	fortnite_tacsmg_uncommon = true,
	fortnite_tacticalshotgun_uncommon = true,
	fortnite_infantryrifle_uncommon = true,
	fortnite_revolver_uncommon = true,
	fortnite_pumpshotgun_uncommon = true,
	fortnite_burstsmg_uncommon = true,
	fortnite_drumgun_uncommon = true,
	fortnite_drumshotgun_uncommon = true,
	fortnite_huntingrifle_uncommon = true,
	fortnite_pistol_uncommon = true,
	fortnite_smg_uncommon = true,
	fortnite_flintknock_uncommon = true,
	fortnite_specopssmg_uncommon = true,
	fortnite_pickaxe_axeroni = true,
	fortnite_pickaxe_abominableaxe = true,
	fortnite_pickaxe_directorscut = true,
	fortnite_pickaxe_reaper = true,
	fortnite_shieldpotion = true,
	fortnite_chugsplash = true,
	fortnite_ak47_rare = true,
	fortnite_automaticsniper_rare = true,
	fortnite_crossbow_rare = true,
	fortnite_boltsniper_rare = true,
	fortnite_assaultrifle_rare = true,
	fortnite_burstrifle_rare = true,
	fortnite_combatshotgun_rare = true,
	fortnite_m249_rare = true,
	fortnite_6shooter_rare = true,
	fortnite_tacsmg_rare = true,
	fortnite_tacticalshotgun_rare = true,
	fortnite_gl180_rare = true,
	fortnite_infantryrifle_rare = true,
	fortnite_revolver_rare = true,
	fortnite_pumpshotgun_rare = true,
	fortnite_scopedrifle_rare = true,
	fortnite_rpg7_rare = true,
	fortnite_tacticalar_rare = true,
	fortnite_burstsmg_rare = true,
	fortnite_drumgun_rare = true,
	fortnite_drumshotgun_rare = true,
	fortnite_huntingrifle_rare = true,
	fortnite_pistol_rare = true,
	fortnite_smg_rare = true,
	fortnite_specopssmg_rare = true,
	fortnite_pickaxe_globalaxe = true,
	fortnite_pickaxe_deathvalley = true,
	fortnite_pickaxe_partyanimal = true,
	fortnite_pickaxe_disco = true,
	fortnite_pickaxe_acdc = true,
	fortnite_pickaxe_marshmello = true,
	fortnite_stinkbomb = true,
	fortnite_slurpjuice = true,
	fortnite_ak47_epic = true,
	fortnite_automaticsniper_epic = true,
	fortnite_crossbow_epic = true,
	fortnite_boltsniper_epic = true,
	fortnite_assaultrifle_epic = true,
	fortnite_assaultriflesilenced_epic = true,
	fortnite_boltsnipersilenced_epic = true,
	fortnite_burstrifle_epic = true,
	fortnite_combatshotgun_epic = true,
	fortnite_p90_epic = true,
	fortnite_m249_epic = true,
	fortnite_6shooter_epic = true,
	fortnite_tacsmg_epic = true,
	fortnite_tacticalshotgun_epic = true,
	fortnite_dublshotgun_epic = true,
	fortnite_dualpistol_epic = true,
	fortnite_gl180_epic = true,
	fortnite_deagle_epic = true,
	fortnite_heavyshotgun_epic = true,
	fortnite_heavysniper_epic = true,
	fortnite_infantryrifle_epic = true,
	fortnite_minigun_epic = true,
	fortnite_revolver_epic = true,
	fortnite_pgl_epic = true,
	fortnite_pumpshotgun_epic = true,
	fortnite_scopedrifle_epic = true,
	fortnite_m202_epic = true,
	fortnite_rpg7_epic = true,
	fortnite_scopedrevolver_epic = true,
	fortnite_stormscoutsniper_epic = true,
	fortnite_autosniper_epic = true,
	fortnite_specopspistol_epic = true,
	fortnite_tacticalar_epic = true,
	fortnite_thermalscopedar_epic = true,
	fortnite_chugjug = true,
	fortnite_ak47_legendary = true,
	fortnite_automaticsniper_legendary = true,
	fortnite_boltsniper_legendary = true,
	fortnite_assaultrifle_legendary = true,
	fortnite_assaultriflesilenced_legendary = true,
	fortnite_boltsnipersilenced_legendary = true,
	fortnite_burstrifle_legendary = true,
	fortnite_combatshotgun_legendary = true,
	fortnite_p90_legendary = true,
	fortnite_dublshotgun_legendary = true,
	fortnite_dualpistol_legendary = true,
	fortnite_gl180_legendary = true,
	fortnite_deagle_legendary = true,
	fortnite_heavyshotgun_legendary = true,
	fortnite_heavysniper_legendary = true,
	fortnite_infantryrifle_legendary = true,
	fortnite_minigun_legendary = true,
	fortnite_revolver_legendary = true,
	fortnite_pgl_legendary = true,
	fortnite_pumpshotgun_legendary = true,
	fortnite_m202_legendary = true,
	fortnite_rpg7_legendary = true,
	fortnite_scopedrevolver_legendary = true,
	fortnite_stormscoutsniper_legendary = true,
	fortnite_autosniper_legendary = true,
	fortnite_specopspistol_legendary = true,
	fortnite_tacticalar_legendary = true,
	fortnite_thermalscopedar_legendary = true,
	fortnite_infinityblade = true
}

local FortniteSMG = {
	fortnite_smg = true,
	fortnite_smg_uncommon = true,
	fortnite_smg_rare = true
}

local FortniteP90 = {
	fortnite_p90_epic = true,
	fortnite_p90_legendary = true
}

local FortniteM249 = {
	fortnite_m249_rare = true,
	fortnite_m249_epic = true
}

local FortniteMinigun = {
	fortnite_minigun_epic = true,
	fortnite_minigun_legendary = true
}

	if IsValid(ply:GetActiveWeapon()) and ZoomableFortniteWeapons[ply:GetActiveWeapon():GetClass()] and ply:GetFOV() != GetConVar("fov_desired"):GetInt() then
	ply:SetFOV( 0, 0.35 )
	end
	
	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteWeapons[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteWeapons[ply:GetActiveWeapon():GetClass()] then ply:GetActiveWeapon():EmitSound("Fortnite_Weapon.StopSound") end end )
	end

	if game.SinglePlayer() == false then
	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteSMG[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteSMG[ply:GetActiveWeapon():GetClass()] and ply:GetActiveWeapon():GetLastFiring() != 0 and IsFirstTimePredicted() then ply:GetActiveWeapon():EmitSound("Fortnite_SMG1.FireStop") end end )
	end

	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteP90[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteP90[ply:GetActiveWeapon():GetClass()] and ply:GetActiveWeapon():GetLastFiring() != 0 and IsFirstTimePredicted() then ply:GetActiveWeapon():EmitSound("Fortnite_P90.FireStop") end end )
	end

	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteM249[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteM249[ply:GetActiveWeapon():GetClass()] and ply:GetActiveWeapon():GetLastFiring() != 0 and IsFirstTimePredicted() then ply:GetActiveWeapon():EmitSound("Fortnite_M249.FireStop") end end )
	end

	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteMinigun[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteMinigun[ply:GetActiveWeapon():GetClass()] and ply:GetActiveWeapon():GetLastFiring() != 0 and IsFirstTimePredicted() then ply:GetActiveWeapon():EmitSound(ply:GetActiveWeapon().sndMinigunStop) end end )
	end
	end
end )

hook.Add( "OnPlayerPhysicsPickup", "ZoomOutOnPickupFortnite", function( ply, ent )

local FortniteWeapons = {
	fortnite_pickaxe = true,
	fortnite_impulsegrenade = true,
	fortnite_grenade = true,
	fortnite_bandage = true,
	fortnite_assaultrifle = true,
	fortnite_burstrifle = true,
	fortnite_infantryrifle = true,
	fortnite_revolver = true,
	fortnite_pumpshotgun = true,
	fortnite_burstsmg = true,
	fortnite_drumshotgun = true,
	fortnite_pistol = true,
	fortnite_smg = true,
	fortnite_flintknock = true,
	fortnite_specopssmg = true,
	fortnite_pickaxe_cleancut = true,
	fortnite_pickaxe_axercise = true,
	fortnite_pickaxe_llama = true,
	fortnite_pickaxe_forkknife = true,
	fortnite_smallshieldpotion = true,
	fortnite_medkit = true,
	fortnite_assaultrifle_uncommon = true,
	fortnite_burstrifle_uncommon = true,
	fortnite_6shooter_uncommon = true,
	fortnite_tacsmg_uncommon = true,
	fortnite_tacticalshotgun_uncommon = true,
	fortnite_infantryrifle_uncommon = true,
	fortnite_revolver_uncommon = true,
	fortnite_pumpshotgun_uncommon = true,
	fortnite_burstsmg_uncommon = true,
	fortnite_drumgun_uncommon = true,
	fortnite_drumshotgun_uncommon = true,
	fortnite_huntingrifle_uncommon = true,
	fortnite_pistol_uncommon = true,
	fortnite_smg_uncommon = true,
	fortnite_flintknock_uncommon = true,
	fortnite_specopssmg_uncommon = true,
	fortnite_pickaxe_axeroni = true,
	fortnite_pickaxe_abominableaxe = true,
	fortnite_pickaxe_directorscut = true,
	fortnite_pickaxe_reaper = true,
	fortnite_shieldpotion = true,
	fortnite_chugsplash = true,
	fortnite_ak47_rare = true,
	fortnite_automaticsniper_rare = true,
	fortnite_crossbow_rare = true,
	fortnite_boltsniper_rare = true,
	fortnite_assaultrifle_rare = true,
	fortnite_burstrifle_rare = true,
	fortnite_combatshotgun_rare = true,
	fortnite_m249_rare = true,
	fortnite_6shooter_rare = true,
	fortnite_tacsmg_rare = true,
	fortnite_tacticalshotgun_rare = true,
	fortnite_gl180_rare = true,
	fortnite_infantryrifle_rare = true,
	fortnite_revolver_rare = true,
	fortnite_pumpshotgun_rare = true,
	fortnite_scopedrifle_rare = true,
	fortnite_rpg7_rare = true,
	fortnite_tacticalar_rare = true,
	fortnite_burstsmg_rare = true,
	fortnite_drumgun_rare = true,
	fortnite_drumshotgun_rare = true,
	fortnite_huntingrifle_rare = true,
	fortnite_pistol_rare = true,
	fortnite_smg_rare = true,
	fortnite_specopssmg_rare = true,
	fortnite_pickaxe_globalaxe = true,
	fortnite_pickaxe_deathvalley = true,
	fortnite_pickaxe_partyanimal = true,
	fortnite_pickaxe_disco = true,
	fortnite_pickaxe_acdc = true,
	fortnite_pickaxe_marshmello = true,
	fortnite_stinkbomb = true,
	fortnite_slurpjuice = true,
	fortnite_ak47_epic = true,
	fortnite_automaticsniper_epic = true,
	fortnite_crossbow_epic = true,
	fortnite_boltsniper_epic = true,
	fortnite_assaultrifle_epic = true,
	fortnite_assaultriflesilenced_epic = true,
	fortnite_boltsnipersilenced_epic = true,
	fortnite_burstrifle_epic = true,
	fortnite_combatshotgun_epic = true,
	fortnite_p90_epic = true,
	fortnite_m249_epic = true,
	fortnite_6shooter_epic = true,
	fortnite_tacsmg_epic = true,
	fortnite_tacticalshotgun_epic = true,
	fortnite_dublshotgun_epic = true,
	fortnite_dualpistol_epic = true,
	fortnite_gl180_epic = true,
	fortnite_deagle_epic = true,
	fortnite_heavyshotgun_epic = true,
	fortnite_heavysniper_epic = true,
	fortnite_infantryrifle_epic = true,
	fortnite_minigun_epic = true,
	fortnite_revolver_epic = true,
	fortnite_pgl_epic = true,
	fortnite_pumpshotgun_epic = true,
	fortnite_scopedrifle_epic = true,
	fortnite_m202_epic = true,
	fortnite_rpg7_epic = true,
	fortnite_scopedrevolver_epic = true,
	fortnite_stormscoutsniper_epic = true,
	fortnite_autosniper_epic = true,
	fortnite_specopspistol_epic = true,
	fortnite_tacticalar_epic = true,
	fortnite_thermalscopedar_epic = true,
	fortnite_chugjug = true,
	fortnite_ak47_legendary = true,
	fortnite_automaticsniper_legendary = true,
	fortnite_boltsniper_legendary = true,
	fortnite_assaultrifle_legendary = true,
	fortnite_assaultriflesilenced_legendary = true,
	fortnite_boltsnipersilenced_legendary = true,
	fortnite_burstrifle_legendary = true,
	fortnite_combatshotgun_legendary = true,
	fortnite_p90_legendary = true,
	fortnite_dublshotgun_legendary = true,
	fortnite_dualpistol_legendary = true,
	fortnite_gl180_legendary = true,
	fortnite_deagle_legendary = true,
	fortnite_heavyshotgun_legendary = true,
	fortnite_heavysniper_legendary = true,
	fortnite_infantryrifle_legendary = true,
	fortnite_minigun_legendary = true,
	fortnite_revolver_legendary = true,
	fortnite_pgl_legendary = true,
	fortnite_pumpshotgun_legendary = true,
	fortnite_m202_legendary = true,
	fortnite_rpg7_legendary = true,
	fortnite_scopedrevolver_legendary = true,
	fortnite_stormscoutsniper_legendary = true,
	fortnite_autosniper_legendary = true,
	fortnite_specopspistol_legendary = true,
	fortnite_tacticalar_legendary = true,
	fortnite_thermalscopedar_legendary = true,
	fortnite_infinityblade = true
}


 local ZoomableFortniteWeapons = {
	fortnite_assaultrifle = true,
	fortnite_burstrifle = true,
	fortnite_infantryrifle = true,
	fortnite_revolver = true,
	fortnite_pumpshotgun = true,
	fortnite_burstsmg = true,
	fortnite_drumshotgun = true,
	fortnite_pistol = true,
	fortnite_smg = true,
	fortnite_flintknock = true,
	fortnite_specopssmg = true,
	fortnite_assaultrifle_uncommon = true,
	fortnite_burstrifle_uncommon = true,
	fortnite_6shooter_uncommon = true,
	fortnite_tacsmg_uncommon = true,
	fortnite_tacticalshotgun_uncommon = true,
	fortnite_infantryrifle_uncommon = true,
	fortnite_revolver_uncommon = true,
	fortnite_pumpshotgun_uncommon = true,
	fortnite_burstsmg_uncommon = true,
	fortnite_drumgun_uncommon = true,
	fortnite_drumshotgun_uncommon = true,
	fortnite_huntingrifle_uncommon = true,
	fortnite_pistol_uncommon = true,
	fortnite_smg_uncommon = true,
	fortnite_flintknock_uncommon = true,
	fortnite_specopssmg_uncommon = true,
	fortnite_ak47_rare = true,
	fortnite_automaticsniper_rare = true,
	fortnite_crossbow_rare = true,
	fortnite_boltsniper_rare = true,
	fortnite_assaultrifle_rare = true,
	fortnite_burstrifle_rare = true,
	fortnite_combatshotgun_rare = true,
	fortnite_m249_rare = true,
	fortnite_6shooter_rare = true,
	fortnite_tacsmg_rare = true,
	fortnite_tacticalshotgun_rare = true,
	fortnite_gl180_rare = true,
	fortnite_infantryrifle_rare = true,
	fortnite_revolver_rare = true,
	fortnite_pumpshotgun_rare = true,
	fortnite_scopedrifle_rare = true,
	fortnite_rpg7_rare = true,
	fortnite_tacticalar_rare = true,
	fortnite_burstsmg_rare = true,
	fortnite_drumgun_rare = true,
	fortnite_drumshotgun_rare = true,
	fortnite_huntingrifle_rare = true,
	fortnite_pistol_rare = true,
	fortnite_smg_rare = true,
	fortnite_specopssmg_rare = true,
	fortnite_ak47_epic = true,
	fortnite_automaticsniper_epic = true,
	fortnite_crossbow_epic = true,
	fortnite_boltsniper_epic = true,
	fortnite_assaultrifle_epic = true,
	fortnite_assaultriflesilenced_epic = true,
	fortnite_boltsnipersilenced_epic = true,
	fortnite_burstrifle_epic = true,
	fortnite_combatshotgun_epic = true,
	fortnite_p90_epic = true,
	fortnite_m249_epic = true,
	fortnite_6shooter_epic = true,
	fortnite_tacsmg_epic = true,
	fortnite_tacticalshotgun_epic = true,
	fortnite_dublshotgun_epic = true,
	fortnite_dualpistol_epic = true,
	fortnite_gl180_epic = true,
	fortnite_deagle_epic = true,
	fortnite_heavyshotgun_epic = true,
	fortnite_heavysniper_epic = true,
	fortnite_infantryrifle_epic = true,
	fortnite_minigun_epic = true,
	fortnite_revolver_epic = true,
	fortnite_pgl_epic = true,
	fortnite_pumpshotgun_epic = true,
	fortnite_scopedrifle_epic = true,
	fortnite_m202_epic = true,
	fortnite_rpg7_epic = true,
	fortnite_scopedrevolver_epic = true,
	fortnite_stormscoutsniper_epic = true,
	fortnite_autosniper_epic = true,
	fortnite_specopspistol_epic = true,
	fortnite_tacticalar_epic = true,
	fortnite_thermalscopedar_epic = true,
	fortnite_ak47_legendary = true,
	fortnite_automaticsniper_legendary = true,
	fortnite_boltsniper_legendary = true,
	fortnite_assaultrifle_legendary = true,
	fortnite_assaultriflesilenced_legendary = true,
	fortnite_boltsnipersilenced_legendary = true,
	fortnite_burstrifle_legendary = true,
	fortnite_combatshotgun_legendary = true,
	fortnite_p90_legendary = true,
	fortnite_dublshotgun_legendary = true,
	fortnite_dualpistol_legendary = true,
	fortnite_gl180_legendary = true,
	fortnite_deagle_legendary = true,
	fortnite_heavyshotgun_legendary = true,
	fortnite_heavysniper_legendary = true,
	fortnite_infantryrifle_legendary = true,
	fortnite_minigun_legendary = true,
	fortnite_revolver_legendary = true,
	fortnite_pgl_legendary = true,
	fortnite_pumpshotgun_legendary = true,
	fortnite_m202_legendary = true,
	fortnite_rpg7_legendary = true,
	fortnite_scopedrevolver_legendary = true,
	fortnite_stormscoutsniper_legendary = true,
	fortnite_autosniper_legendary = true,
	fortnite_specopspistol_legendary = true,
	fortnite_tacticalar_legendary = true,
	fortnite_thermalscopedar_legendary = true
}

local FortniteSMG = {
	fortnite_smg = true,
	fortnite_smg_uncommon = true,
	fortnite_smg_rare = true
}

local FortniteP90 = {
	fortnite_p90_epic = true,
	fortnite_p90_legendary = true
}

local FortniteM249 = {
	fortnite_m249_rare = true,
	fortnite_m249_epic = true
}

local FortniteMinigun = {
	fortnite_minigun_epic = true,
	fortnite_minigun_legendary = true
}

	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and ZoomableFortniteWeapons[ply:GetActiveWeapon():GetClass()] and ply:GetFOV() != GetConVar("fov_desired"):GetInt() then
	ply:SetFOV( 0, 0.35 )
	end
	
	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteWeapons[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteWeapons[ply:GetActiveWeapon():GetClass()] then ply:GetActiveWeapon():EmitSound("Fortnite_Weapon.StopSound") end end )
	end

	if game.SinglePlayer() == false then
	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteSMG[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteSMG[ply:GetActiveWeapon():GetClass()] and ply:GetActiveWeapon():GetLastFiring() != 0 and IsFirstTimePredicted() then ply:GetActiveWeapon():EmitSound("Fortnite_SMG1.FireStop") end end )
	end

	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteP90[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteP90[ply:GetActiveWeapon():GetClass()] and ply:GetActiveWeapon():GetLastFiring() != 0 and IsFirstTimePredicted() then ply:GetActiveWeapon():EmitSound("Fortnite_P90.FireStop") end end )
	end

	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteM249[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteM249[ply:GetActiveWeapon():GetClass()] and ply:GetActiveWeapon():GetLastFiring() != 0 and IsFirstTimePredicted() then ply:GetActiveWeapon():EmitSound("Fortnite_M249.FireStop") end end )
	end

	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteMinigun[ply:GetActiveWeapon():GetClass()] then
	timer.Simple( 0, function() if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and FortniteMinigun[ply:GetActiveWeapon():GetClass()] and ply:GetActiveWeapon():GetLastFiring() != 0 and IsFirstTimePredicted() then ply:GetActiveWeapon():EmitSound(ply:GetActiveWeapon().sndMinigunStop) end end )
	end
	end
	
end )

local function JAttack( ply, key )
	if IsValid(ply) and ply:Alive() and ply:OnGround() and IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_infinityblade" and ( key == IN_JUMP ) and IsFirstTimePredicted() then
	timer.Simple( 0, function() if IsValid(ply) and IsFirstTimePredicted() then ply:EmitSound("Fortnite_InfinityBlade.JumpAttack") end end )
end

end
hook.Add( "KeyPress", "InfinityBladeScripts", JAttack )

local function hitground( ply )
	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_infinityblade" and IsFirstTimePredicted() then
	timer.Simple( 0, function() if IsValid(ply) and IsFirstTimePredicted() then ply:EmitSound("Fortnite_InfinityBlade.Landing") end end )
	ply:SetRunSpeed(20)
	ply:SetWalkSpeed(20)
	timer.Simple( 1, function() if IsValid(ply) and ply:GetWalkSpeed() < baseclass.Get( player_manager.GetPlayerClass(ply) ).WalkSpeed then ply:SetWalkSpeed( baseclass.Get( player_manager.GetPlayerClass(ply) ).WalkSpeed ) end end )
	timer.Simple( 1, function() if IsValid(ply) and ply:GetRunSpeed() < baseclass.Get( player_manager.GetPlayerClass(ply) ).RunSpeed then ply:SetRunSpeed( baseclass.Get( player_manager.GetPlayerClass(ply) ).RunSpeed ) end end )
	local effectdata = EffectData()
		effectdata:SetOrigin(ply:GetPos())
		effectdata:SetEntity(ply:GetActiveWeapon())
		effectdata:SetStart(ply:GetActiveWeapon():GetPos())
		effectdata:SetNormal(Vector(0,0,1))
		effectdata:SetRadius(1000)
		util.Effect("VortDispel", effectdata)
	if (SERVER) then

		local pusherforce = ents.Create("env_physexplosion")
	if !IsValid(pusherforce) then return false end
	pusherforce:SetAngles( ply:GetAngles() )
	pusherforce:SetPos(ply:GetPos())
	pusherforce:SetOwner(ply)
	pusherforce:Spawn()
	pusherforce.Owner = ply
	pusherforce:Activate()
	pusherforce:SetKeyValue( "spawnflags", 1 );
	pusherforce:SetKeyValue( "iRadiusOverride", 550)
	pusherforce:SetKeyValue( "magnitude", 1000 )
	pusherforce:Fire( "Explode", "", 0 )
	pusherforce:Fire( "Kill", "", 0.5 )
end

end

end
hook.Add( "OnPlayerHitGround", "InfinityBladeScripts2", hitground )

local function FortniteFallDmgInfBlade( ply, speed )
if IsValid(ply) and ply:Alive() and IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_infinityblade" then
	return 0
end

end

hook.Add( "GetFallDamage", "InfinityBladeScripts3", FortniteFallDmgInfBlade )

local function SlurpJuiceEffects( ply )
	if ( ply:GetNW2Bool( "FortniteBRSWEPSlurpJuice" ) == true ) then
	ply:SetNW2Bool( "FortniteBRSWEPSlurpJuice", false )
	ply:SetNW2Bool( "CanDrinkFortniteSlurpJuiceYet", false )
	timer.Create( "FortniteBRAllowSlurpJuice" .. ply:EntIndex(), 37.5, 1, function() ply:SetNW2Bool( "CanDrinkFortniteSlurpJuiceYet", true ) end )
	timer.Create( "FortniteBRSlurpJuice" .. ply:EntIndex(), 0.5, 75, function() 
	if SERVER and IsValid(ply) then
		if ply:Health() < ply:GetMaxHealth() then
		ply:SetHealth( ply:Health() + 1 )
		elseif ply:Health() >= ply:GetMaxHealth() and ply:Armor() < ply:GetMaxArmor() then
		ply:SetArmor( ply:Armor() + 1 )
end
end
end )
	
end

end
hook.Add( "PlayerPostThink", "FortniteSlurpJuice", SlurpJuiceEffects )

local function StopSlurpTimer( victim, inflictor, attacker )
	timer.Stop( "FortniteBRAllowSlurpJuice" .. victim:EntIndex() )
	timer.Stop( "FortniteBRSlurpJuice" .. victim:EntIndex() )
	victim:SetNW2Bool( "CanDrinkFortniteSlurpJuiceYet", true )
end
hook.Add( "PlayerDeath", "StopSlurpJuiceEffects", StopSlurpTimer )



hook.Add( "DoAnimationEvent" , "DrinkAnims" , function( ply , event , data )
	if IsValid(ply) and IsValid(ply:GetActiveWeapon()) then
	if ply:GetActiveWeapon():GetClass() == "fortnite_shieldpotion" or ply:GetActiveWeapon():GetClass() == "fortnite_smallshieldpotion" or ply:GetActiveWeapon():GetClass() == "fortnite_slurpjuice" or ply:GetActiveWeapon():GetClass() == "fortnite_chugjug" then
	if event == PLAYERANIMEVENT_CUSTOM_SEQUENCE then
		if data == 1971 then
			ply:AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
			ply:AnimRestartGesture( GESTURE_SLOT_CUSTOM, ACT_HL2MP_FIST_BLOCK, false )
			return ACT_INVALID
		end

		if data == 0 then
			ply:AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
			ply:AnimRestartGesture( GESTURE_SLOT_CUSTOM, ACT_INVALID, true )
			return ACT_INVALID
		end
	end

end

end

end )

function NoDrinkingAnimWhenRemoved( ent )
	local FortniteProjectiles = {
	fortnite_chugsplash_thrown = true,
	fortnite_crx_bolt_rare = true,
	fortnite_crx_bolt_epic = true,
	fortnite_glnade_proximity_epic = true,
	fortnite_glnade_proximity_legendary = true,
	fortnite_m202_missile_epic = true,
	fortnite_m202_missile_legendary = true,
	fortnite_rpg_rocket_rare = true,
	fortnite_rpg_rocket_epic = true,
	fortnite_rpg_rocket_legendary = true,
	fortnite_stinkbomb = true
}
	if FortniteProjectiles[ent:GetClass()] then
	ent:StopSound("Fortnite_ChugSplash.FlyBy")
	ent:StopSound("Fortnite_Crossbow.FlyBy")
	ent:StopSound("Fortnite_PGL.FlyBy")
	ent:StopSound("Fortnite_StinkBomb.Gas")
	ent:StopSound("Fortnite_RPG7.FlyBy")
	ent:StopSound("Fortnite_QuadLauncher.FlyBy")
	end
	if ent:GetClass() == "fortnite_shieldpotion" and IsValid(ent:GetOwner()) and ent:GetOwner():IsPlayer() then
	ent:GetOwner():AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
	ent:GetOwner():DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
	elseif ent:GetClass() == "fortnite_smallshieldpotion" and IsValid(ent:GetOwner()) and ent:GetOwner():IsPlayer() then
	ent:GetOwner():AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
	ent:GetOwner():DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
	elseif ent:GetClass() == "fortnite_slurpjuice" and IsValid(ent:GetOwner()) and ent:GetOwner():IsPlayer() then
	ent:GetOwner():AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
	ent:GetOwner():DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
	elseif ent:GetClass() == "fortnite_chugjug" and IsValid(ent:GetOwner()) and ent:GetOwner():IsPlayer() then
	ent:GetOwner():AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
	ent:GetOwner():DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
end

end
hook.Add( "EntityRemoved", "DestroyDrinkAnimationWhenRemoved", NoDrinkingAnimWhenRemoved )

hook.Add("PlayerDroppedWeapon", "FortniteFixWeaponDrops", function( owner, wep )

	if wep:GetClass() == "fortnite_thermalscopedar_epic" and IsValid(owner) or wep:GetClass() == "fortnite_thermalscopedar_legendary" and IsValid(owner) then
	if wep:GetNWBool( "ActiveThermal" ) == true and wep.Scoped == true then
	owner:ConCommand( "sk_combine_vision" )
	wep:SetNWBool( "ActiveThermal", false )
	wep.Scoped = false
	end
	end

	if wep:GetClass() == "fortnite_infinityblade" and IsValid(owner) then
	owner:SetJumpPower( baseclass.Get( player_manager.GetPlayerClass(owner) ).JumpPower )
	owner:SetWalkSpeed( baseclass.Get( player_manager.GetPlayerClass(owner) ).WalkSpeed )
	owner:SetRunSpeed( baseclass.Get( player_manager.GetPlayerClass(owner) ).RunSpeed )
	wep:StopSound("Fortnite_InfinityBlade.BladeLoop")
	if owner:Health() > owner:GetMaxHealth() then
	owner:SetHealth(owner:GetMaxHealth())
	end
	if SERVER then
	if owner:Armor() > owner:GetMaxArmor() then
	owner:SetArmor(owner:GetMaxArmor())
	end
	end
	end
	
		if wep:GetClass() == "fortnite_shieldpotion" and IsValid(owner) then
	owner:DoAnimationEvent(ACT_IDLE)
	elseif wep:GetClass() == "fortnite_smallshieldpotion" and IsValid(owner) then
	owner:DoAnimationEvent(ACT_IDLE)
	elseif wep:GetClass() == "fortnite_slurpjuice" and IsValid(owner) then
	owner:DoAnimationEvent(ACT_IDLE)
	elseif wep:GetClass() == "fortnite_chugjug" and IsValid(owner) then
	owner:DoAnimationEvent(ACT_IDLE)
end

end )

function NoDrinkingAnimOtherWeapon( ply, oldWeapon, newWeapon )
	if IsValid(ply) and IsValid(oldWeapon) and oldWeapon:GetClass() == "fortnite_shieldpotion" then
	ply:AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
	ply:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
	elseif IsValid(ply) and IsValid(oldWeapon) and oldWeapon:GetClass() == "fortnite_smallshieldpotion" then
	ply:AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
	ply:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
	elseif IsValid(ply) and IsValid(oldWeapon) and oldWeapon:GetClass() == "fortnite_slurpjuice" then
	ply:AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
	ply:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
	elseif IsValid(ply) and IsValid(oldWeapon) and oldWeapon:GetClass() == "fortnite_chugjug" then
	ply:AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
	ply:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
end

end
hook.Add( "PlayerSwitchWeapon", "DestroyDrinkAnimationWhenSwitchingToOtherWeapon", NoDrinkingAnimOtherWeapon )


hook.Add( "PlayerCanPickupWeapon", "CantPickupFortniteWeaponsTwice", function( ply, weapon )
    
local FortniteDisposableWeapons = {
fortnite_chugjug = true,
fortnite_chugsplash = true,
fortnite_crossbow_rare = true,
fortnite_crossbow_epic = true,
fortnite_infinityblade = true,
fortnite_minigun_epic = true,
fortnite_minigun_legendary = true,
fortnite_pickaxe = true,
fortnite_pickaxe_globalaxe = true,
fortnite_pickaxe_deathvalley = true,
fortnite_pickaxe_partyanimal = true,
fortnite_pickaxe_disco = true,
fortnite_pickaxe_acdc = true,
fortnite_pickaxe_marshmello = true,
fortnite_pickaxe_cleancut = true,
fortnite_pickaxe_axercise = true,
fortnite_pickaxe_llama = true,
fortnite_pickaxe_forkknife = true,
fortnite_pickaxe_axeroni = true,
fortnite_pickaxe_abominableaxe = true,
fortnite_pickaxe_directorscut = true,
fortnite_pickaxe_reaper = true,
fortnite_slurpjuice = true
}

	if ( FortniteDisposableWeapons[weapon:GetClass()] and ply:HasWeapon( weapon:GetClass() ) ) then
		return false
	end
end )

sound.Add({
	name =				"Fortnite_Pistol.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/pistol_shoot_1.ogg", "fortnite/pistol_shoot_2.ogg"}
})

sound.Add({
	name =				"Fortnite_SpecularPistol.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			70,
	sound =				{"fortnite/pistol_specops_shoot_1.ogg", "fortnite/pistol_specops_shoot_2.ogg", "fortnite/pistol_specops_shoot_3.ogg"}
})

sound.Add({
	name =				"Fortnite_HuntingRifle.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/hunter_shoot_1.ogg", "fortnite/hunter_shoot_2.ogg"}
})

sound.Add({
	name =				"Fortnite_BoltSniperSilenced.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			70,
	sound =				{"fortnite/boltsnipersilenced_shoot_1.ogg", "fortnite/boltsnipersilenced_shoot_2.ogg"}
})

sound.Add({
	name =				"Fortnite_HeavySniper.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/heavysniper_shoot_1.ogg", "fortnite/heavysniper_shoot_2.ogg"}
})

sound.Add({
	name =				"Fortnite_DublShotgun.Draw",
	channel =			CHAN_WEAPON,
	volume =			1.0,
	soundlevel =			80,
	sound =				{"fortnite/dublshotgun_deploy_1.ogg", "fortnite/dublshotgun_deploy_2.ogg"}
})

sound.Add({
	name =				"Fortnite_DublShotgun.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/dublshotgun_fire_1.ogg", "fortnite/dublshotgun_fire_2.ogg"}
})

sound.Add({
	name =				"Fortnite_TacticalAR.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/tacticalar_fire_1.ogg", "fortnite/tacticalar_fire_2.ogg"}
})

sound.Add({
	name =				"Fortnite_DrumShotgun.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/drumshotgun_fire_1.ogg", "fortnite/drumshotgun_fire_2.ogg"}
})

sound.Add({
	name =				"Fortnite_PGL.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/pgl_fire_1.ogg", "fortnite/pgl_fire_2.ogg"}
})

sound.Add({
	name =				"Fortnite_StormScoutSniper.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/stormscoutsniper_fire_1.ogg", "fortnite/stormscoutsniper_fire_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_StormScoutSniper.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/stormscoutsniper_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_StormScoutSniper.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/stormscoutsniper_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_ChugSplash.Throw",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 85,
    sound = "fortnite/chugsplash_throw.ogg"
})

sound.Add(
{
    name = "Fortnite_ChugSplash.FlyBy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 85,
    sound = "fortnite/chugsplash_loop.wav"
})

sound.Add({
	name =				"Fortnite_AutomaticSniper.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/automaticsniper_fire_1.ogg", "fortnite/automaticsniper_fire_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_AutomaticSniper.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/automaticsniper_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_AutomaticSniper.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/automaticsniper_deploy.ogg"
})


sound.Add(
{
    name = "Fortnite_PGL.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pgl_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_PGL.FlyBy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pgl_flyby.wav"
})

sound.Add(
{
    name = "Fortnite_PGL.Beeping",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pgl_beep.ogg"
})

sound.Add(
{
    name = "Fortnite_DrumShotgun.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/drumshotgun_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_DrumShotgun.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/drumshotgun_reload.ogg"
})

sound.Add({
	name =				"Fortnite_AK47.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/ak47_fire_1.ogg", "fortnite/ak47_fire_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_AK47.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/ak47_deploy.ogg"
})

sound.Add({
	name =				"Fortnite_HeavyRevolver.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/heavyrevolver_fire_1.ogg", "fortnite/heavyrevolver_fire_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_HeavyRevolver.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/heavyrevolver_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_HeavyRevolver.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/heavyrevolver_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_AK47.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/ak47_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_TacticalShotgun.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/tacticalshotty_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_TacticalShotgun.ReloadStart",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/tacticalshotty_reload.ogg"
})

sound.Add({
	name = "Fortnite_TacticalShotgun.ShellInsert",
	channel = CHAN_WEAPON,
	volume = 1.0,
	soundlevel = 80,
	sound =	{"fortnite/tacticalshotty_shellinsert_1.ogg", "fortnite/tacticalshotty_shellinsert_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_TacticalShotgun.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = {"fortnite/tacticalshotty_shoot_1.ogg", "fortnite/tacticalshotty_shoot_2.ogg", "fortnite/tacticalshotty_shoot_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_ForkKnife.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/forkknife_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_ForkKnife.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/forkknife_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_ForkKnife.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/forkknife_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_ForkKnife.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/forkknife_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_ForkKnife.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/forkknife_impact_2.ogg"
})


sound.Add(
{
    name = "Fortnite_ChugJug.Drink",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/chugjug_drink.ogg"
})

sound.Add(
{
    name = "Fortnite_ChugJug.DrinkComplete",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/chugjug_drinkcomplete.ogg"
})

sound.Add(
{
    name = "Fortnite_ShieldPotion.Drink",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/shieldpotion_drink.ogg"
})

sound.Add(
{
    name = "Fortnite_SmallShieldPotion.Drink",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/smallshieldpotion_drink.ogg"
})

sound.Add(
{
    name = "Fortnite_SlurpJuice.Drink",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/slurpjuice_drink.ogg"
})

sound.Add(
{
    name = "Fortnite_SlurpJuice.DrinkComplete",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/slurpjuice_drinkcomplete.ogg"
})

sound.Add(
{
    name = "Fortnite_Bandage.Apply",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/bandage_apply.ogg"
})

sound.Add(
{
    name = "Fortnite_MedKit.Use",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/medkit_use.ogg"
})

sound.Add(
{
    name = "Fortnite_Bandage.FinishHeal",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/bandage_applycomplete.ogg"
})


sound.Add(
{
    name = "Fortnite_GlobalAxe.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/globalaxe_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_GlobalAxe.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/globalaxe_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_GlobalAxe.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/globalaxe_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Impact_3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_impact_3.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Impact_4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_impact_4.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Impact_5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_impact_5.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Impact_6",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_impact_6.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Impact_7",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_impact_7.ogg"
})

sound.Add(
{
    name = "Fortnite_Marshmello.Impact_8",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/marshmello_impact_8.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_ACDC.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/acdc_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_ACDC.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/acdc_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_ACDC.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/acdc_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_ACDC.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/acdc_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_ACDC.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/acdc_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_PartyAnimal.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/partyanimal_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_DeathValley.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/deathvalley_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_DeathValley.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/deathvalley_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_DeathValley.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/deathvalley_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_DeathValley.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/deathvalley_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_DeathValley.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/deathvalley_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Reaper.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/reaper_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_Reaper.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/reaper_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Reaper.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/reaper_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Reaper.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/reaper_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Reaper.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/reaper_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_DirectorsCut.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/directorscut_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_DirectorsCut.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/directorscut_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_DirectorsCut.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/directorscut_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_DirectorsCut.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/directorscut_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_DirectorsCut.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/directorscut_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Axeroni.Draw_1",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axeroni_deploy_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Axeroni.Draw_2",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axeroni_deploy_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Axeroni.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axeroni_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Axeroni.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axeroni_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Axeroni.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axeroni_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Axeroni.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axeroni_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Axercise.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axercise_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_Axercise.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axercise_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Axercise.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axercise_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Axercise.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axercise_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Axercise.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/axercise_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_AbominableAxe.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/abominableaxe_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_AbominableAxe.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/abominableaxe_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_AbominableAxe.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/abominableaxe_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_AbominableAxe.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/abominableaxe_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_AbominableAxe.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/abominableaxe_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_CleanCut.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/cleancut_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_CleanCut.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/cleancut_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_CleanCut.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/cleancut_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_CleanCut.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/cleancut_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_CleanCut.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/cleancut_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_ChocoLlama.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/chocollama_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_ChocoLlama.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/chocollama_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_ChocoLlama.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/chocollama_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_ChocoLlama.Swing_3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/chocollama_swing_3.ogg"
})

sound.Add(
{
    name = "Fortnite_DiscoBrawl.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/discobrawl_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_DiscoBrawl.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/discobrawl_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_DiscoBrawl.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/discobrawl_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_DiscoBrawl.Swing_3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/discobrawl_swing_3.ogg"
})

sound.Add(
{
    name = "Fortnite_DiscoBrawl.Impact_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/discobrawl_impact_1.ogg"
})

sound.Add(
{
    name = "Fortnite_DiscoBrawl.Impact_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/discobrawl_impact_2.ogg"
})

sound.Add(
{
    name = "Fortnite_DiscoBrawl.Impact_3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/discobrawl_impact_3.ogg"
})

sound.Add(
{
    name = "Fortnite_DiscoBrawl.Impact_4",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/discobrawl_impact_4.ogg"
})

sound.Add(
{
    name = "Fortnite_DiscoBrawl.Impact_5",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/discobrawl_impact_5.ogg"
})

sound.Add(
{
    name = "Fortnite_Pickaxe.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pickaxe_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_Pickaxe.Swing_1",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pickaxe_swing_1.ogg"
})

sound.Add(
{
    name = "Fortnite_Pickaxe.Swing_2",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pickaxe_swing_2.ogg"
})

sound.Add(
{
    name = "Fortnite_Pickaxe.Swing_3",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pickaxe_swing_3.ogg"
})

sound.Add(
{
    name = "Fortnite_SCARS.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 75,
    sound = {"fortnite/scars_shoot_1.ogg", "fortnite/scars_shoot_2.ogg", "fortnite/scars_shoot_3.ogg", "fortnite/scars_shoot_4.ogg"}
})

sound.Add(
{
    name = "Fortnite_CombatShotgun.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/combatshotgun_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_CombatShotgun.ReloadStart",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/combatshotgun_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_CombatShotgun.ShellInsert",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/combatshotgun_shellinsert.ogg"
})

sound.Add(
{
    name = "Fortnite_CombatShotgun.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/combatshotgun_fire.ogg"
})

sound.Add(
{
    name = "Fortnite_PumpShotgun.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pumpshotty_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_PumpShotgun.Pump",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pumpshotty_pump.ogg"
})

sound.Add(
{
    name = "Fortnite_PumpShotgun.ReloadStart",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pumpshotty_reload.ogg"
})

sound.Add({
	name =				"Fortnite_PumpShotgun.ShellInsert",
	channel =			CHAN_WEAPON,
	volume =			1.0,
	soundlevel =			80,
	sound =				{"fortnite/pumpshotty_shellinsert_1.ogg", "fortnite/pumpshotty_shellinsert_2.ogg"}
})

sound.Add({
	name =				"Fortnite_PumpShotgun.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/pumpshotty_fire_1.ogg", "fortnite/pumpshotty_fire_2.ogg"}
})

sound.Add({
	name =				"Fortnite_HeavyPumpShotgun.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/spas_fire_1.ogg", "fortnite/spas_fire_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_HeavyPumpShotgun.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/spas_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_HeavyPumpShotgun.Pump",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/spas_pump.ogg"
})


sound.Add(
{
    name = "Fortnite_HeavyInfantryRifle.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/heavyinfantryrifle_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_InfantryRifle.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/infantryrifle_deploy.ogg"
})

sound.Add({
	name =				"Fortnite_InfantryRifle.Reload",
	channel =			CHAN_WEAPON,
	volume =			1.0,
	soundlevel =			80,
	sound =				{"fortnite/infantryrifle_reload_1.ogg", "fortnite/infantryrifle_reload_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_HeavyInfantryRifle.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/heavyinfantryrifle_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_HeavyInfantryRifle.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = {"fortnite/heavyinfantryrifle_fire_1.ogg", "fortnite/heavyinfantryrifle_fire_2.ogg", "fortnite/heavyinfantryrifle_fire_3.ogg"}
})

sound.Add(
{
    name = "Fortnite_InfantryRifle.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = {"fortnite/infantryrifle_fire_1.ogg", "fortnite/infantryrifle_fire_2.ogg", "fortnite/infantryrifle_fire_3.ogg"}
})

sound.Add(
{
    name = "Fortnite_TacticalAR.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/tacticalar_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_TacticalAR.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/tacticalar_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_DublShotgun.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/dublshotgun_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_InfinityBlade.Swing",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"fortnite/sword_swing_1.ogg", "fortnite/sword_swing_2.ogg", "fortnite/sword_swing_3.ogg", "fortnite/sword_swing_4.ogg"}
})

sound.Add(
{
    name = "Fortnite_InfinityBlade.Impact",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"fortnite/sword_impact_1.ogg", "fortnite/sword_impact_2.ogg", "fortnite/sword_impact_3.ogg", "fortnite/sword_impact_4.ogg"}
})

sound.Add(
{
    name = "Fortnite_InfinityBlade.BladeLoop",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 85,
    sound = "fortnite/sword_loop.wav"
})

sound.Add(
{
    name = "Fortnite_HeavyShotgun.ShellInsert",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = {"fortnite/heavyshotgun_shellinsert_1.ogg", "fortnite/heavyshotgun_shellinsert_2.ogg", "fortnite/heavyshotgun_shellinsert_3.ogg"}
})

sound.Add(
{
    name = "Fortnite_HeavyShotgun.ReloadStart",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/heavyshotgun_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_HeavyShotgun.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/heavyshotgun_deploy.ogg"
})

sound.Add({
	name =				"Fortnite_HeavyShotgun.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/heavyshotgun_shoot_1.ogg", "fortnite/heavyshotgun_shoot_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_InfinityBlade.JumpAttack",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/sword_jumpattack.ogg"
})

sound.Add(
{
    name = "Fortnite_InfinityBlade.Landing",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/sword_landing.ogg"
})

sound.Add(
{
    name = "Fortnite_BoltSniperSilenced.Reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/boltsnipersilenced_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_BoltSniperSilenced.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/boltsnipersilenced_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_HeavySniper.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/heavysniper_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_HeavySniper.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/heavysniper_reload.ogg"
})


sound.Add(
{
    name = "Fortnite_BurstRifle.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = {"fortnite/burst1.ogg", "fortnite/burst2.ogg", "fortnite/burst3.ogg"}
})

sound.Add(
{
    name = "Fortnite_KrissVector.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = {"fortnite/burst4.ogg", "fortnite/burst5.ogg", "fortnite/burst6.ogg"}
})

sound.Add(
{
    name = "Fortnite_FAMAS.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = {"fortnite/famas_shoot_1.ogg", "fortnite/famas_shoot_2.ogg", "fortnite/famas_shoot_3.ogg"}
})

sound.Add(
{
    name = "Fortnite_DualPistol.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = {"fortnite/dualpist_shoot_1.ogg", "fortnite/dualpist_shoot_2.ogg", "fortnite/dualpist_shoot_3.ogg"}
})

sound.Add(
{
    name = "Fortnite_Pistol.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pistol_reload_generic.ogg"
})

sound.Add(
{
    name = "Fortnite_ThermalScopedRifle.ScopeIn",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/scope_thermalar.ogg"
})

sound.Add(
{
    name = "Fortnite_Minigun.LastShot",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 85,
    sound = "fortnite/minigun_lastshot.ogg"
})

sound.Add(
{
    name = "Fortnite_DualPistol.Reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/dualpist_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_FAMAS.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/famas_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_KrissVector.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/krissvector_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_KrissVector.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/krissvector_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_FAMAS.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/famas_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_SMG.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/smg_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_HuntingRifle.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/hunter_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_HuntingRifle.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/hunter_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_InfinityBlade.Draw",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/sword_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_SMG.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/smg_deploy_generic.ogg"
})

sound.Add(
{
    name = "Fortnite_HeavySniper.Scope",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/scope_heavysniper.ogg"
})

sound.Add(
{
    name = "Fortnite_StormScoutSniper.Scope",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/scope_stormscoutsniper.ogg"
})

sound.Add(
{
    name = "Fortnite_AutomaticSniper.Scope",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/scope_automaticsniper.ogg"
})

sound.Add(
{
    name = "Fortnite_Sniper.Scope",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/scope_generic.ogg"
})

sound.Add(
{
    name = "Fortnite_Pistol.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/pistol_deploy_generic.ogg"
})

sound.Add(
{
    name = "Fortnite_Revolver.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/revolver_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_Minigun.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/minigun_deploy.ogg"
})


sound.Add(
{
    name = "Fortnite_Revolver.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/revolver_shoot.ogg"
})

sound.Add(
{
    name = "Fortnite_Deagle.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/deagle_fire.ogg"
})

sound.Add(
{
    name = "Fortnite_Revolver.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/revolver_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_Rifle.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/ar_deploy_generic.ogg"
})

sound.Add(
{
    name = "Fortnite_Rifle.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/ar_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_SCAR.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/scar_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_SCAR.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/scar_reload.ogg"
})

sound.Add({
	name =				"Fortnite_Rifle.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/ar_shoot_1.ogg", "fortnite/ar_shoot_2.ogg"}
})

sound.Add({
	name =				"Fortnite_SCAR.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/scar_shoot_1.ogg", "fortnite/scar_shoot_2.ogg"}
})

sound.Add({
	name =				"Fortnite_Autosniper.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			95,
	sound =				{"fortnite/autosniper_shoot_1.ogg", "fortnite/autosniper_shoot_2.ogg", "fortnite/autosniper_shoot_3.ogg", "fortnite/autosniper_shoot_4.ogg"}
})

sound.Add({
	name =				"Fortnite_SilSMG.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/smg_specops_shoot_1.ogg", "fortnite/smg_specops_shoot_2.ogg"}
})

sound.Add({
	name =				"Fortnite_TacSMG.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/smg_shoot_1.ogg", "fortnite/smg_shoot_2.ogg", "fortnite/smg_shoot_3.ogg"}
})

sound.Add({
	name =				"Fortnite_ScopedRifle.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/scopedrifle_shoot_1.ogg", "fortnite/scopedrifle_shoot_2.ogg", "fortnite/scopedrifle_shoot_3.ogg", "fortnite/scopedrifle_shoot_4.ogg", "fortnite/scopedrifle_shoot_6.ogg"}
})

sound.Add(
{
    name = "Fortnite_Sniper.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/sniper_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_GL.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/gl_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_GL.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/gl_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_6S.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/magnum_spin.ogg"
})

sound.Add(
{
    name = "Fortnite_6S.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/magnum_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_SMG1.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/mp6_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_SMG1.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/mp6_draw.ogg"
})

sound.Add(
{
    name = "Fortnite_SMG1.FireStop",
    channel = CHAN_STATIC,
    volume = 0.6,
    soundlevel = 90,
    sound = "fortnite/mp6_firestop.ogg"
})

sound.Add(
{
    name = "Fortnite_DrumGun.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/drumgun_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_DrumGun.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/drumgun_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_P90.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/p90_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_P90.FireStop",
    channel = CHAN_STATIC,
    volume = 0.6,
    soundlevel = 90,
    sound = "fortnite/p90_firestop.ogg"
})

sound.Add(
{
    name = "Fortnite_ThermalScopedRifle.ScopeLoop",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/thermalscopedar_loop.wav"
})

sound.Add(
{
    name = "Fortnite_M249.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/m249_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_M249.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/m249_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_Crossbow.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/crossbow_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_Crossbow.FlyBy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/crossbow_whizz.wav"
})

sound.Add(
{
    name = "Fortnite_QuadLauncher.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/m202_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_QuadLauncher.FlyBy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/quadrocket_flying.wav"
})

sound.Add(
{
    name = "Fortnite_Crossbow.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/crossbow_draw.ogg"
})

sound.Add(
{
    name = "Fortnite_QuadLauncher.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/m202_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_RPG7.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/rpg_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_RPG7.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/rpg_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_RPG7.Fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/rpg_fire.ogg"
})

sound.Add(
{
    name = "Fortnite_RPG7.FlyBy",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/rocket_proj.wav"
})

sound.Add(
{
    name = "Fortnite_RPG7.RocketSoundR",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/rpg_dropoff.ogg"
})

sound.Add(
{
    name = "Fortnite_RPG7.RocketSoundE",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/rpg_dropoff2.ogg"
})

sound.Add(
{
    name = "Fortnite_RPG7.RocketSoundL",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/rpg_dropoff3.ogg"
})

sound.Add(
{
    name = "Fortnite_BoltSniperSilenced.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/boltsnipersilenced_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_BoltSniperSilenced.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/boltsnipersilenced_reload.ogg"
})

sound.Add({
	name =				"Fortnite_Crossbow.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			80,
	sound =				{"fortnite/crossbow_fire_1.ogg", "fortnite/crossbow_fire_2.ogg"}
})

sound.Add({
	name =				"Fortnite_BoltSniperSilenced.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/boltsnipersilenced_shoot_1.ogg", "fortnite/boltsnipersilenced_shoot_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_M249.FireStop",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
    sound = "fortnite/m249_firestop.ogg"
})

sound.Add({
	name =				"Fortnite_DrumGun.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/drumgun_fire_1.ogg", "fortnite/drumgun_fire_2.ogg", "fortnite/drumgun_fire_3.ogg"}
})

sound.Add({
	name =				"Fortnite_6S.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/magnum_fire_1.ogg", "fortnite/magnum_fire_2.ogg"}
})

sound.Add({
	name =				"Fortnite_ThermalScopedRifle.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/thermalscopedar_fire_1.ogg", "fortnite/thermalscopedar_fire_2.ogg", "fortnite/thermalscopedar_fire_3.ogg"}
})

sound.Add({
	name =				"Fortnite_Ironsight.Use",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			70,
	sound =				{"fortnite/ironsight_1.ogg", "fortnite/ironsight_2.ogg"}
})

sound.Add({
	name =				"Fortnite_GL.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/gl_fire_1.ogg", "fortnite/gl_fire_2.ogg", "fortnite/gl_fire_3.ogg"}
})

sound.Add({
	name =				"Fortnite_QuadLauncher.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/m202_fire_1.ogg", "fortnite/m202_fire_2.ogg"}
})

sound.Add({
	name =				"Fortnite_ScopedRevolver.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/scopedrevolver_shoot_1.ogg", "fortnite/scopedrevolver_shoot_2.ogg", "fortnite/scopedrevolver_shoot_3.ogg"}
})

sound.Add(
{
    name = "Fortnite_ScopedRevolver.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/scopedrevolver_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_ScopedRevolver.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/scopedrevolver_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_FlintKnock.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/flintknock_reload.ogg"
})

sound.Add({
	name =				"Fortnite_FlintKnock.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/flintknock_fire_1.ogg", "fortnite/flintknock_fire_2.ogg", "fortnite/flintknock_fire_3.ogg"}
})

sound.Add({
	name =				"Fortnite_BoltSniper.Fire",
	channel =			CHAN_STATIC,
	volume =			1.0,
	soundlevel =			90,
	sound =				{"fortnite/boltsniper_fire_1.ogg", "fortnite/boltsniper_fire_2.ogg"}
})

sound.Add(
{
    name = "Fortnite_BoltSniper.Reload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/boltsniper_reload.ogg"
})

sound.Add(
{
    name = "Fortnite_BoltSniper.Draw",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/boltsniper_deploy.ogg"
})

sound.Add(
{
    name = "Fortnite_Weapon.StopSound",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/null.ogg"
})

sound.Add(
{
    name = "Fortnite_StinkBomb.Gas",
    channel = CHAN_WEAPON,
    volume = 1.0,
    soundlevel = 80,
    sound = "fortnite/stinkbomb_loop.wav"
})