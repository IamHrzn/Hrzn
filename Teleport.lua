local function Teleport(Cord1,Cord2,Cord3, Type, Time)
    if Type == 'Tween' then
        local Place = CFrame.new(Cord1, Cord2, Cord3)
        local ts = game:GetService('TweenService')
        local char = game.Players.LocalPlayer.Character

        local part = char.HumanoidRootPart
        local ti = TweenInfo.new(Time,Enum.EasingStyle.Linear) -- number means how fast it is
        local tp = {CFrame = Place}
        
        ts:Create(part, ti, tp):Play()
    elseif Type == 'CFrame' then
        local char = game.Players.LocalPlayer.Character
        char.HumanoidRootPart.CFrame = CFrame.new(Cord1,Cord2,Cord3)

    end
end
--[[
 Teleport(-378.95281982422, 23.747993469238, 148.0853729248, 'CFrame', 10)
Change to tween for tweenservice teleport, 
the first three group of numbers are the positions, and the last number is how much time it takes to get there. The last number[time doesnt apply for CFrame] --]] 
