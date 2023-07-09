local LocalPlayer = game.Players.LocalPlayer
local NestStat = game.Players.LocalPlayer.leaderstats.Nest.Value
if NestStat ~= 	20 then
	for i=0, 20 do
		LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Nests[NestStat+1].CFrame
		NestStat = game.Players.LocalPlayer.leaderstats.Nest.Value
		
		if NestStat == 20 then
			break;
		end
	end
end

