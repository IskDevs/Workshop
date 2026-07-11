if CLIENT then

function FortniteBrowser()

if FortniteOpen == 1 then return end

FortniteOpen = 1

local frame = vgui.Create( "DFrame" )
frame:SetTitle( "Skin Browser" )
frame:SetSize( 600, 350 )
frame:SetSizable(false)
frame:Center()
frame:MakePopup()

local icon = vgui.Create( "DModelPanel", Panel )
		icon:SetParent( frame )
		icon:SetPos( 140, 50 )
		icon:SetCamPos(Vector(0,-100,0))
		icon:SetLookAt( Vector( 0, 0, 0 ) )
		icon:SetSize( 400, 335 )
		icon:SetFOV( 45 )

local DefaultPickaxe = vgui.Create( "DCheckBoxLabel", frame )
DefaultPickaxe:SetParent( frame )
DefaultPickaxe:SetPos( 5, 50 )	
DefaultPickaxe:SetText( "Default Pickaxe" )	
DefaultPickaxe:SetConVar( "game_pick_fortnite_Default" )		
DefaultPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_Default" ) )	

local CleanCutPickaxe = vgui.Create( "DCheckBoxLabel", frame ) 
CleanCutPickaxe:SetParent( frame )
CleanCutPickaxe:SetPos( 5, 70 )						
CleanCutPickaxe:SetText( "Clean Cut" )					
CleanCutPickaxe:SetConVar( "game_pick_fortnite_CleanCut" )			 
CleanCutPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_CleanCut" ) )		 

local AxercisePickaxe = vgui.Create( "DCheckBoxLabel", frame )
AxercisePickaxe:SetParent( frame )
AxercisePickaxe:SetPos( 5, 90 )						
AxercisePickaxe:SetText( "Axercise" )					
AxercisePickaxe:SetConVar( "game_pick_fortnite_Axercise" )			 
AxercisePickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_Axercise" ) )		 

local LlamaPickaxe = vgui.Create( "DCheckBoxLabel", frame )
LlamaPickaxe:SetParent( frame )
LlamaPickaxe:SetPos( 5, 110 )						
LlamaPickaxe:SetText( "Chocollama" )					
LlamaPickaxe:SetConVar( "game_pick_fortnite_Llama" )			
LlamaPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_Llama" ) )		

local ForkKnifePickaxe = vgui.Create( "DCheckBoxLabel", frame )
ForkKnifePickaxe:SetParent( frame )
ForkKnifePickaxe:SetPos( 5, 130 )						
ForkKnifePickaxe:SetText( "Fork Knife" )					
ForkKnifePickaxe:SetConVar( "game_pick_fortnite_ForkKnife" )			
ForkKnifePickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_ForkKnife" ) )		

local AbominableAxePickaxe = vgui.Create( "DCheckBoxLabel", frame )
AbominableAxePickaxe:SetParent( frame )
AbominableAxePickaxe:SetPos( 5, 150 )						
AbominableAxePickaxe:SetText( "Abominable Axe" )					
AbominableAxePickaxe:SetConVar( "game_pick_fortnite_AbominableAxe" )			
AbominableAxePickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_AbominableAxe" ) )		

local AxeroniPickaxe = vgui.Create( "DCheckBoxLabel", frame ) 
AxeroniPickaxe:SetParent( frame )
AxeroniPickaxe:SetPos( 5, 170 )						
AxeroniPickaxe:SetText( "Axeroni" )					
AxeroniPickaxe:SetConVar( "game_pick_fortnite_Axeroni" )			 
AxeroniPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_Axeroni" ) )		 

local DirectorsCutPickaxe = vgui.Create( "DCheckBoxLabel", frame )
DirectorsCutPickaxe:SetParent( frame )
DirectorsCutPickaxe:SetPos( 5, 190 )						
DirectorsCutPickaxe:SetText( "Director's Cut" )					
DirectorsCutPickaxe:SetConVar( "game_pick_fortnite_DirectorsCut" )			
DirectorsCutPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_DirectorsCut" ) )

local ReaperPickaxe = vgui.Create( "DCheckBoxLabel", frame )
ReaperPickaxe:SetParent( frame )
ReaperPickaxe:SetPos( 5, 210 )		
ReaperPickaxe:SetText( "Reaper" )		
ReaperPickaxe:SetConVar( "game_pick_fortnite_Reaper" )
ReaperPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_Reaper" ) )

local DeathValleyPickaxe = vgui.Create( "DCheckBoxLabel", frame )
DeathValleyPickaxe:SetParent( frame )
DeathValleyPickaxe:SetPos( 5, 230 )						
DeathValleyPickaxe:SetText( "Death Valley" )					
DeathValleyPickaxe:SetConVar( "game_pick_fortnite_DeathValley" )			
DeathValleyPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_DeathValley" ) )

local GlobalAxePickaxe = vgui.Create( "DCheckBoxLabel", frame )
GlobalAxePickaxe:SetParent( frame )
GlobalAxePickaxe:SetPos( 5, 250 )						
GlobalAxePickaxe:SetText( "Global Axe" )					
GlobalAxePickaxe:SetConVar( "game_pick_fortnite_GlobalAxe" )			 
GlobalAxePickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_GlobalAxe" ) )	

local PartyAnimalPickaxe = vgui.Create( "DCheckBoxLabel", frame )
PartyAnimalPickaxe:SetParent( frame )
PartyAnimalPickaxe:SetPos( 5, 270 )					
PartyAnimalPickaxe:SetText( "Party Animal" )					
PartyAnimalPickaxe:SetConVar( "game_pick_fortnite_PartyAnimal" )			 
PartyAnimalPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_PartyAnimal" ) )

local DiscoPickaxe = vgui.Create( "DCheckBoxLabel", frame )
DiscoPickaxe:SetParent( frame )
DiscoPickaxe:SetPos( 5, 290 )						
DiscoPickaxe:SetText( "Disco Brawl" )					
DiscoPickaxe:SetConVar( "game_pick_fortnite_Disco" )			 
DiscoPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_Disco" ) )

local ACDCPickaxe = vgui.Create( "DCheckBoxLabel", frame ) 
ACDCPickaxe:SetParent( frame )
ACDCPickaxe:SetPos( 5, 310 )						
ACDCPickaxe:SetText( "AC/DC" )					
ACDCPickaxe:SetConVar( "game_pick_fortnite_ACDC" )			
ACDCPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_ACDC" ) )

local MarshmelloPickaxe = vgui.Create( "DCheckBoxLabel", frame )
MarshmelloPickaxe:SetParent( frame )
MarshmelloPickaxe:SetPos( 5, 330 )					
MarshmelloPickaxe:SetText( "Marshy Smasher" )					
MarshmelloPickaxe:SetConVar( "game_pick_fortnite_Marshmello" )			
MarshmelloPickaxe:SetValue( LocalPlayer():GetInfo( "game_pick_fortnite_Marshmello" ) )		

if DefaultPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_pickaxe.mdl" )
		elseif DiscoPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_discobrawl.mdl" )
		elseif LlamaPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_chocollama.mdl" )
		elseif CleanCutPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_cleancut.mdl" )
		elseif AxercisePickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_axercise.mdl" )
		elseif AbominableAxePickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_abominableaxe.mdl" )
		elseif AxeroniPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_axeroni.mdl" )
		elseif DirectorsCutPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_directorscut.mdl" )
		elseif ReaperPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_reaper.mdl" )
		elseif ForkKnifePickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/forkknife_display.mdl" )
		elseif DeathValleyPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_deathvalley.mdl" )
		elseif GlobalAxePickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_globalaxe.mdl" )
		elseif PartyAnimalPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_partyanimal.mdl" )
		elseif ACDCPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_acdc.mdl" )
		elseif MarshmelloPickaxe:GetChecked(true) then
		icon:SetModel( "models/fortnite/w_fbr_marshmello.mdl" )
end

frame.OnClose = function() FortniteOpen = 0
end

MarshmelloPickaxe.OnChange = function()if MarshmelloPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_marshmello.mdl" )
end

end

ACDCPickaxe.OnChange = function()if ACDCPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_acdc.mdl" )
end

end

PartyAnimalPickaxe.OnChange = function()if PartyAnimalPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_partyanimal.mdl" )
end

end

GlobalAxePickaxe.OnChange = function()if GlobalAxePickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_globalaxe.mdl" )
end

end

DeathValleyPickaxe.OnChange = function()if DeathValleyPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_deathvalley.mdl" )
end

end

ReaperPickaxe.OnChange = function()if ReaperPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_reaper.mdl" )
end

end

ForkKnifePickaxe.OnChange = function()if ForkKnifePickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/forkknife_display.mdl" )
end

end

DirectorsCutPickaxe.OnChange = function()if DirectorsCutPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_directorscut.mdl" )
end

end

AxeroniPickaxe.OnChange = function()if AxeroniPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_axeroni.mdl" )
end

end

AbominableAxePickaxe.OnChange = function()if AbominableAxePickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_abominableaxe.mdl" )
end

end

AxercisePickaxe.OnChange = function()if AxercisePickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_axercise.mdl" )
end

end

CleanCutPickaxe.OnChange = function()if CleanCutPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_cleancut.mdl" )
end

end
LlamaPickaxe.OnChange = function()if LlamaPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		DiscoPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_chocollama.mdl" )
end

end
DiscoPickaxe.OnChange = function()if DiscoPickaxe:GetChecked(true) then
		DefaultPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_discobrawl.mdl" )
end
DefaultPickaxe.OnChange = function()if DefaultPickaxe:GetChecked(true) then
		DiscoPickaxe:SetValue( 0 )
		LlamaPickaxe:SetValue( 0 )
		CleanCutPickaxe:SetValue( 0 )
		AxercisePickaxe:SetValue( 0 )
		AbominableAxePickaxe:SetValue( 0 )
		AxeroniPickaxe:SetValue( 0 )
		DirectorsCutPickaxe:SetValue( 0 )
		ReaperPickaxe:SetValue( 0 )
		ForkKnifePickaxe:SetValue( 0 )
		DeathValleyPickaxe:SetValue( 0 )
		GlobalAxePickaxe:SetValue( 0 )
		PartyAnimalPickaxe:SetValue( 0 )
		ACDCPickaxe:SetValue( 0 )
		MarshmelloPickaxe:SetValue( 0 )
		icon:SetModel( "models/fortnite/w_fbr_pickaxe.mdl" )
end

end

end

end

end

FortniteOpen = 0