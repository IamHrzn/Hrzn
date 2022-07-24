--// IAmHrzn\

-- Infinite stamina

local Toggles = {
  LocalPlayer = {Stamina = ...} -- ... is essentially a regular expression, similar to a function call that returns many values.
}

--- Now we will toggle Stamina

Toggles.LocalPlayer.Stamina = false --// Set this to true if you want it to turn on

spawn(function()
    while Toggles.LocalPlayer.Stamina and wait() do
        local Plr = game:GetService('Players').LocalPlayer
        Plr.PlayerGui.GameGui.BottomLeft.Health['Stamina LS'].Stamina.Value = 999 --// Set it to anything, I just set it to 999 because juice wrld
      end
    end
end)


