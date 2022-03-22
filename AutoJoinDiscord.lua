syn.request({
Url = "http://127.0.0.1:6463/rpc?v=1",
Method = "POST",
Headers = {
   ["Content-Type"] = "application/json",
   ["Origin"] = "https://discord.com"
},
Body = game:GetService("HttpService"):JSONEncode({
   cmd = "INVITE_BROWSER",
   args = {
       code = "qd42wQz3HZ"
   },
   nonce = game:GetService("HttpService"):GenerateGUID(false)
}),
})
