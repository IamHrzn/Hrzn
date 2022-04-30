local function Teleport(Cord1, Cord2, Cord3, Type, Bypass, BypassTime, Time)
    if Type == "Tween" then
        if Bypass then 
            local Place = CFrame.new(Cord1, Cord2, Cord3)
            local ts = game:GetService("TweenService")
            local char = game.Players.LocalPlayer.Character

            local part = char.HumanoidRootPart
            local ti = TweenInfo.new(Time, Enum.EasingStyle.Linear) -- number means how fast it is
            local tp = {CFrame = Place}

            -- Bypass functions
            local LocationBypass = CFrame.new(1000,1000,1000)
            local Bypasser = {CFrame = LocationBypass}
            local TI = TweenInfo.new(BypassTime, Enum.EasingStyle.Linear)
            ts:Create(part, TI, Bypasser):Play()
            task.wait(BypassTime)
            ts:Create(part, ti, tp):Play()
        else
            local Place = CFrame.new(Cord1, Cord2, Cord3)
            local ts = game:GetService('TweenService')
            local char = game.Players.LocalPlayer.Character

            local part = char.HumanoidRootPart
            local ti = TweenInfo.new(Time,Enum.EasingStyle.Linear) -- number means how fast it is
            local tp = {CFrame = Place}
            
            ts:Create(part, ti, tp):Play()
        end
    elseif Type == "CFrame" then
        local char = game.Players.LocalPlayer.Character
        char.HumanoidRootPart.CFrame = CFrame.new(Cord1, Cord2, Cord3)
    end
end

--Teleport(-378.95281982422, 23.747993469238, 148.0853729248, "Tween", false, 1,1) -- Bool is for bypass, CFrame has it false
