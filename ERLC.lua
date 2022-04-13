--// IAmHrzn, These codes cannot be used without permission. Dm hrzn#1234 for permission, or go to AeroX discord server.

-- Infinite stamina

local Toggles = {
  LocalPlayer = {Stamina = ...} -- ... is essentially a regular expression, similar to a function call that returns many values.
}

--- Now we will toggle Stamina

Toggles.LocalPlayer.Stamina = false --// Set this to true if you want it to turn on

spawn(function()
    while true and wait() do
      if Toggles.LocalPlayer.Stamina then
        local Plr = game:GetService('Players').LocalPlayer
        Plr.PlayerGui.GameGui.BottomLeft.Health['Stamina LS'].Stamina.Value = 999 --// Set it to anything, I just set it to 999.
      end
    end
end)


-- End Inf stamina

-- Too lazy to add anything else, i'll add more later.
