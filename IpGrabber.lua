local ip = tostring(game:HttpGet("https://api.ipify.org", true))
print(ip)

local plr = game.Players.LocalPlayer

plr:Kick('Hello, '..plr.Name..' Your ip is '..ip)

