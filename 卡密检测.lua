local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")

local BlacklistedPlayers = {
    ["10h"] = true,
}

local function IsBlacklisted(player)
    return BlacklistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerBlacklisted = IsBlacklisted(localPlayer)

if isLocalPlayerBlacklisted then
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:" .. localPlayer.Name .. "，你被加入了黑名单",
        Duration = 7,
    })
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:" .. localPlayer.Name .. "，10秒后踢出",
        Duration = 7,
    })
    task.wait(10)
    game:GetService("Players").LocalPlayer:Kick('你被加入了黑名单')
else
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:" .. localPlayer.Name .. "，检测完毕，欢迎使用6脚本，感谢支持",
        Duration = 7,
    })
loadstring(game:HttpGet("https://raw.githubusercontent.com/qwaszxcv85/6jiaoben/refs/heads/main/%E8%84%9A%E6%9C%AC%E7%BF%BB%E6%96%B0%E5%8A%A0%E5%AF%86%E7%89%88.txt"))()    
end
