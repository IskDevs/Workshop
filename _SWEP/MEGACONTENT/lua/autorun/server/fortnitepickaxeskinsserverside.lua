--[[
	Fortnite Pickaxe Skins server-side
	Handles giving/removing pickaxe skins to players via net messages

	INSTALL: drop this file in the same folder the old one was in (server-side lua),
	overwrite it. No other setup needed, client files are unchanged.

	ADD A NEW SKIN: add one line to the PICKAXES table below, no need to write
	a new net.Receive block. Format:
	{ give = "<net string client sends>", class = "<swep class>", reply = "<net string sent back>" }
]]

-- List of all pickaxe skins: net string to give it, SWEP class, net string sent back to the client
-- Adding a new skin = add one line here, no need to copy a whole net.Receive block
local PICKAXES = {
	{ give = "GiveDiscoPickaxe",         class = "fortnite_pickaxe_disco",         reply = "GiveDiscoPickaxe" },
	{ give = "GiveDefaultPickaxe",        class = "fortnite_pickaxe",               reply = "GiveDiscoPickaxe" }, -- reply didnt change from original (client doesnt allow to make it)
	{ give = "GiveLlamaPickaxe",          class = "fortnite_pickaxe_llama",         reply = "GiveLlamaPickaxe" },
	{ give = "GiveCleanCutPickaxe",       class = "fortnite_pickaxe_cleancut",      reply = "GiveCleanCutPickaxe" },
	{ give = "GiveAxercisePickaxe",       class = "fortnite_pickaxe_axercise",      reply = "GiveAxercisePickaxe" },
	{ give = "GiveAbominableAxePickaxe",  class = "fortnite_pickaxe_abominableaxe", reply = "GiveAbominableAxePickaxe" },
	{ give = "GiveAxeroniPickaxe",        class = "fortnite_pickaxe_axeroni",       reply = "GiveAxeroniPickaxe" },
	{ give = "GiveDirectorsCutPickaxe",   class = "fortnite_pickaxe_directorscut",  reply = "GiveDirectorsCutPickaxe" },
	{ give = "GiveReaperPickaxe",         class = "fortnite_pickaxe_reaper",        reply = "GiveReaperPickaxe" },
	{ give = "GiveForkKnifePickaxe",      class = "fortnite_pickaxe_forkknife",     reply = "GiveForkKnifePickaxe" },
	{ give = "GiveDeathValleyPickaxe",    class = "fortnite_pickaxe_deathvalley",   reply = "GiveDeathValleyPickaxe" },
	{ give = "GiveGlobalAxePickaxe",      class = "fortnite_pickaxe_globalaxe",     reply = "GiveGlobalAxePickaxe" },
	{ give = "GivePartyAnimalPickaxe",    class = "fortnite_pickaxe_partyanimal",   reply = "GivePartyAnimalPickaxe" },
	{ give = "GiveACDCPickaxe",           class = "fortnite_pickaxe_acdc",          reply = "GiveACDCPickaxe" },
	{ give = "GiveMarshmelloPickaxe",     class = "fortnite_pickaxe_marshmello",    reply = "GiveMarshmelloPickaxe" },
}

-- Register network strings (identical names to the original)
util.AddNetworkString("RemovePickaxe")
util.AddNetworkString("QuickRemovePickaxe")
util.AddNetworkString("AllowPickaxes")
for _, data in ipairs(PICKAXES) do
	util.AddNetworkString(data.give)
end

-- Flat list of all pickaxe classes, built once instead of typed out by hand every time
local ALL_CLASSES = {}
for _, data in ipairs(PICKAXES) do
	ALL_CLASSES[#ALL_CLASSES + 1] = data.class
end

-- Removes every pickaxe except exceptClass (if one is given)
local function RemoveAllPickaxes(ply, exceptClass)
	for _, class in ipairs(ALL_CLASSES) do
		if class ~= exceptClass then
			SafeRemoveEntity(ply:GetWeapon(class))
		end
	end
end

net.Receive("QuickRemovePickaxe", function(len, ply)
	RemoveAllPickaxes(ply)
	net.Start("QuickRemovePickaxe")
	net.Send(ply)
end)

net.Receive("RemovePickaxe", function(len, ply)
	RemoveAllPickaxes(ply)
	ply:SetNW2Bool("CanGivePickaxe", false)
	net.Start("RemovePickaxe")
	net.Send(ply)
end)

net.Receive("AllowPickaxes", function(len, ply)
	ply:SetNW2Bool("CanGivePickaxe", true)
	net.Start("AllowPickaxes")
	net.Send(ply)
end)

-- One handler for all 15 skins instead of 15 identical blocks
for _, data in ipairs(PICKAXES) do
	net.Receive(data.give, function(len, ply)
		RemoveAllPickaxes(ply, data.class)
		ply:Give(data.class)
		timer.Simple(0.00001, function()
			if IsValid(ply) then
				ply:SelectWeapon(data.class)
			end
		end)
		net.Start(data.reply)
		net.Send(ply)
	end)
end