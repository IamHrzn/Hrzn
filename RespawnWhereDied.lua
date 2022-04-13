--// Respawn where you died
local Respawn = ... -- Value 1
local OldCFrame = ... -- Value 2

local plr = game.Players.LocalPlayer --// Fetching the LocalPlayer
Respawn = true --// Set to false/true if you want it to turn on/off

spawn(function()
    while true and wait() do
        if Respawn then
            plr.Character.Humanoid.Died:Connect(function()
                OldCFrame = plr.Character.HumanoidRootPart.CFrame
                wait(10)
                plr.Character.HumanoidRootPart.CFrame = OldCFrame
            end)
        end
    end
end)

