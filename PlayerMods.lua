local plr = game:GetService('Players').LocalPlayer
local Toggles = {
    Security = {
	ModCheck = false,
    },
    LocalPlayer = {
        InfJump = false,
        Bhop = false,
    },
}

spawn(function()
    while true do
        wait()
        if Toggles.LocalPlayer.BHop == true then
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
        end
            game:GetService("UserInputService").JumpRequest:Connect(function()
                if Toggles.LocalPlayer.InfJump == true then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                end
            end)
	if Toggles.Security.ModCheck == true then
        while Toggles.Security.ModCheck == true do
            wait()
                for i,v in pairs (game.Players:GetChildren()) do
                    if v:GetRankInGroup(GroupId) >= RankRole then
                        plr:Kick('Moderator is in game, prevented ban.')
                        print(v.Name)
                    end
                end
            end
    	end
    end
end)

--- For mod check you can also do singular playerID checks - Not recomended if they have a group hosting the game.

-- // Toggling them // -- 

Toggles.LocalPlayer.BHop = false -- Sets BHop to false,

Toggles.LocalPlayer.InfJump = false -- Sets infinite jump to false,

Toggles.Security.ModCheck = false -- Sets Mod checking to false,

-- // For most ui librarys they have a toggle function; Value, State, X, Y, Whatever you name it. You can use that.

-- // Pretty basic scripts, might not work in all games. // -- 
-- // hrzn#1234, github.com/IAmHrzn // -- Credit is appreciated.
