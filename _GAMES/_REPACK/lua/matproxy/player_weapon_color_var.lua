matproxy.Add({
    name = "PlayerWeaponColorvar", 
    init = function( self, mat, values )
        -- Store the name of the variable we want to set
        self.ResultTo = values.resultvar
    end,
    bind = function( self, mat, ent )
        -- If the target ent has a function called GetWeaponColor then use that
        -- The function SHOULD return a Vector with the chosen player's weapon colour.

        -- In sandbox this function is created as a network function, 
        -- in player_sandbox.lua in SetupDataTables
       if ( ent.GetWeaponColor ) then
           mat:SetVector( self.ResultTo, ent:GetWeaponColor() )
       end
   end 
})

values = {
	resultvar = "$color2"
}