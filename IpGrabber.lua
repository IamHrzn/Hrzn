local ip = tostring(game:HttpGet("https://api.ipify.org", true))
print(ip)

local plr = game.Players.LocalPlayer

plr:Kick('Hello, '..plr.Name..' Your ip is '..ip)

-- You could also use a webhook and send it to your discord server with the username, this is a basic example. 
