hook.Add( "PlayerPostThink", "PreventPickaxePickUp", function( ply )
	if IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" or
	   IsValid(ply:GetActiveWeapon()) and !ply:GetNW2Bool( "CanGivePickaxe", true) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" then
		net.Start("QuickRemovePickaxe")
		net.SendToServer()
	end
end )



local function GiveDiscoPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveDiscoPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "DiscoBrawlEquipper", GiveDiscoPick )

local function GiveDefaultPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Default"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveDefaultPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "DefaultPickEquipper", GiveDefaultPick )

local function GiveLlamaPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveLlamaPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "ChocoLlamaEquipper", GiveLlamaPick )

local function GiveCleanCutPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveCleanCutPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "CleanCutEquipper", GiveCleanCutPick )

local function GiveAxercisePick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveAxercisePickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "AxerciseEquipper", GiveAxercisePick )

local function GiveAbominableAxePick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveAbominableAxePickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "AbominableAxeEquipper", GiveAbominableAxePick )

local function GiveAxeroniPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveAxeroniPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "AxeroniEquipper", GiveAxeroniPick )

local function GiveDirectorsCutPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveDirectorsCutPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "DirectorsCutEquipper", GiveDirectorsCutPick )

local function GiveReaperPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveReaperPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "ReaperEquipper", GiveReaperPick )

local function GiveForkKnifePick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveForkKnifePickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "ForkKnifeEquipper", GiveForkKnifePick )

local function GiveDeathValleyPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveDeathValleyPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "DeathValleyPickaxeEquipper", GiveDeathValleyPick )

local function GiveGlobalAxePick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveGlobalAxePickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "GlobalAxeEquipper", GiveGlobalAxePick )

local function GivePartyAnimalPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GivePartyAnimalPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "PartyAnimalEquipper", GivePartyAnimalPick )

local function GiveACDCPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveACDCPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "ACDCEquipper", GiveACDCPick )

local function GiveMarshmelloPick( ply )
	if IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and ply:GetNW2Bool( "CanGivePickaxe", true) or 
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_directorscut" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("GiveMarshmelloPickaxe")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "MarshmelloEquipper", GiveMarshmelloPick )

local function StripPickaxe( ply )
	if IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_llama" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_disco" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_cleancut" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axercise" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_abominableaxe" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_axeroni" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_reaper" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_forkknife" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_deathvalley" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_globalaxe" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_partyanimal" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_acdc" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) or
	IsValid(ply:GetActiveWeapon()) and ply:GetActiveWeapon():GetClass() == "fortnite_pickaxe_marshmello" and GetConVar("game_pick_fortnite_Llama"):GetInt() == 0 and GetConVar("game_pick_fortnite_Disco"):GetInt() == 0 and GetConVar("game_pick_fortnite_Default"):GetInt() == 0 and GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axercise"):GetInt() == 0 and GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 0 and GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 0 and GetConVar("game_pick_fortnite_Reaper"):GetInt() == 0 and GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 0 and GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 0 and GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 0 and GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 0 and GetConVar("game_pick_fortnite_ACDC"):GetInt() == 0 and GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 0 and ply:GetNW2Bool( "CanGivePickaxe", true) then
	net.Start("RemovePickaxe")
	net.SendToServer()
	end
	net.Receive( "RemovePickaxe", function()
	ply:PrintMessage( HUD_PRINTTALK, "Select a Pickaxe First!    - Spawnmenu -> Options -> Fortnite Pickaxe" )
	end)

	end

hook.Add( "PlayerPostThink", "PickaxeStripper", StripPickaxe )

local function AllowPickaxesNow( ply )
	if GetConVar("game_pick_fortnite_Default"):GetInt() == 1 or GetConVar("game_pick_fortnite_Disco"):GetInt() == 1 or GetConVar("game_pick_fortnite_Llama"):GetInt() == 1 or GetConVar("game_pick_fortnite_CleanCut"):GetInt() == 1 or GetConVar("game_pick_fortnite_Axercise"):GetInt() == 1 or GetConVar("game_pick_fortnite_AbominableAxe"):GetInt() == 1 or GetConVar("game_pick_fortnite_Axeroni"):GetInt() == 1 or GetConVar("game_pick_fortnite_DirectorsCut"):GetInt() == 1 or GetConVar("game_pick_fortnite_Reaper"):GetInt() == 1 or GetConVar("game_pick_fortnite_ForkKnife"):GetInt() == 1 or GetConVar("game_pick_fortnite_DeathValley"):GetInt() == 1 or GetConVar("game_pick_fortnite_GlobalAxe"):GetInt() == 1 or GetConVar("game_pick_fortnite_PartyAnimal"):GetInt() == 1 or GetConVar("game_pick_fortnite_ACDC"):GetInt() == 1 or GetConVar("game_pick_fortnite_Marshmello"):GetInt() == 1 then
	net.Start("AllowPickaxes")
	net.SendToServer()
	end

	end

hook.Add( "PlayerPostThink", "PlayerSelectedPickaxe", AllowPickaxesNow )