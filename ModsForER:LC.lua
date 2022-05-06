---- Open source credit is appreciated

-- Limo's ER:LC dump

return {
    Damage = 17, 
    MagSize = 31, 
    CurrentAmmo = script.CurrentAmmo_StartUp.Value, 
    TotalAmmo = script.TotalAmmo_StartUp.Value, 
    Firerate = 0.09, 
    Range = 300, 
    Bullets = 1, 
    Accuracy = 0.9, 
    Mode = "Automatic", 
    canDropMag = true, 
    ReloadTime = 2, 
    MouseSensitivity = 0.5, 
    DropOffDis = 50, 
    AimSpeed = 0.1, 
    FakeArms = true, 
    FakeArmTransparency = 0, 
    RightPos = CFrame.new(-1, 0.3, 0.45) * CFrame.Angles(math.rad(-90), 0, 0), 
    LeftPos = CFrame.new(1.7, 1.7, 0.4) * CFrame.Angles(math.rad(-90), math.rad(45), 0), 
    LeftAimPos = CFrame.new(2.2, 0.7, 0.4) * CFrame.Angles(math.rad(-90), math.rad(45), 0), 
    ChangeFOV = { 60, 60 }, 
    Slide = Vector3.new(0.3, 0, 0), 
    Recoil = math.rad(2), 
    SprintArmOffset = CFrame.new(0.25, 0.125, 0.25) * CFrame.Angles(math.rad(-30), math.rad(35), 0)
};

local function NoRecoil()
    for i , v in pairs(getgc(true)) do
        if type(v) == 'table' and rawget(v,'CurrentAmmo') then
            v.Recoil = 0
        end;
    end;
end
local function Reload()
    for i , v in pairs(getgc(true)) do
        if type(v) == 'table' and rawget(v,'CurrentAmmo') then
            v.ReloadTime = 0
        end;
    end;
end
local function Auto()
    for i , v in pairs(getgc(true)) do
        if type(v) == 'table' and rawget(v,'CurrentAmmo') then
            v.Mode = "Automatic"
        end;
    end;
end

Section:Slider('Fire Rate', 1, 0.9, 100(Speed) 
      for i , v in pairs(getgc(true)) do
        if type(v) == 'table' and rawget(v,'CurrentAmmo') then
            v.Firerate = Speed
        end;
    end;
end)

return {
    SteerSpeed = 0.4,
    Horsepower = 110
}

Section:Slider('SteerSpeed', 1, 0.4, 100(Speed) 
      for i , v in pairs(getgc(true)) do
        if type(v) == 'table' and rawget(v,'MaxFuel') then
            v.SteerSpeed = Speed
        end;
    end;
end)

-- Why not Horsepower? Something is constantly changing its value you can use a method to stop it.
