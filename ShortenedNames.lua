-- You can call a shorted player name, Example
-- User.Name = "HrznCameBack", print(Name.Short(Hrzn)), 'HrznCameBack'
-- If you arent a skid you can understand and add it to stuff.
function Name.Short(name)
    for i, v in pairs(game:GetService("Players"):GetPlayers()) do 
        if string.sub(v.Name, 1, string.len(name)) == name then 
            return v 
        end
    end
end
