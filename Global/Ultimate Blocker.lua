--[[ NOTE YOU MUST TYPE THE VICTIM'S NAME IN THE SCRIPT IN ORDER FOR IT TO WORK ]]--
if not game:IsLoaded() then game.Loaded:Wait() end -- IGNORE THIS AND SCROLL DOWN!

----------------------------------------------------------------
-- ,  , , ___,___, , , _  ___,_,     __  ,    _,  _,,  , _,,_  |  
-- |  | |' | ' |  |\/|'|\' | /_,    '|_) |   / \,/  |_/ /_,|_) |
--'\__|'|__|  _|_,| `| |-\ |'\_     _|_)'|__'\_/'\_'| \'\_'| \ |
--    `   '' '    '  ` '  `'   `   '       ' '     `'  `  `'  `|
----------------------------------------------------------------

-- Created by Tescalus#0001. Join my server for more scripts like this! https://discord.gg/rgcA9v9PMz

-- Simple yet effective and quick solution to prevent people you blocked from interacting with you at all in-game.

-- Note: You should always block the player normally as well!

-- Settings! Change these or ultimate blocker will not work!
wait(2.5) -- If the player you blocked is still in game and they are inside the table CORRECTLY then increase this number!
getgenv().Whitelisted_Players = {"USERNAME HERE", "USERNAME HERE", "Add commas and quotes to add more players! like the examples to the left!"} -- These are the players you want to blacklist. Go to their roblox profile and copy their username and paste it into the quotes.

-- Starting values
local RS = game:GetService("RunService")

-- Checks if the player that is blocked is currently in game.
for i,v in pairs(Whitelisted_Players) do
    if game.Players:FindFirstChild(v) then
        RS.Heartbeat:Connect(function()
            game.Players[v]:Destroy()
        game.Workspace[v]:Destroy()
        end)
    end
end

-- Start of the actual script
local RunService = game:GetService("RunService")

game.Players.PlayerAdded:Connect(function(player)
getgenv().Target = player
getgenv().char = Target.Name


for i,v in pairs(Whitelisted_Players) do
    if v == player.Name then
        print("part of table!")
        wait(0.1)
        Target:Destroy()
        RunService.Heartbeat:Connect(function()
        if game.Workspace:FindFirstChild(char) then
            game.Workspace[char]:Destroy()
            end
        end)

    end
end


    end)
