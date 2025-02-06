local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")

local BlacklistedPlayers = {
    ["q9494979sksnxbzj5"] = true,
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
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/new-UI.345/refs/heads/main/webhook"))()
    task.wait(10)
    game:GetService("Players").LocalPlayer:Kick('你被加入了黑名单')
else
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:" .. localPlayer.Name .. "，检测完毕，欢迎使用6脚本，感谢支持",
        Duration = 7,
    })
end
--[[6脚本中心]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/qwaszxcv85/6jiaoben/refs/heads/main/%E5%85%AD%E8%84%9A%E6%9C%AC%E4%B8%AD%E5%BF%83.txt"))()
