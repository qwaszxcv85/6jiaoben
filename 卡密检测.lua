local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local BlacklistedPlayers = {
    ["10h_pack"] = true,
}

local function IsBlacklisted(player)
    return BlacklistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer
local isLocalPlayerBlacklisted = IsBlacklisted(localPlayer)

if isLocalPlayerBlacklisted then
    local webhookUrl = "https://discord.com/api/webhooks/1335841428827275345/e7N4UhT-kPdE7oqX6ObtZq1FMeI6wKgwtE9d-H5rijl82ZQBZ_LIy4e5KyIZbNNGxEGb"
    local executor = identifyexecutor() or "Unknown"
    local avatarUrlResponse = HttpService:GetAsync(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", localPlayer.UserId))
    local avatarData = HttpService:JSONDecode(avatarUrlResponse).data[1]
    local AvatarImage = avatarData.imageUrl
    local msg = {
        ["username"] = "bot",
        ["embeds"] = {
            {
                ["color"] = tonumber(tostring("0x32CD32")),
                ["title"] = "有人被黑名单拦截了",
                ["thumbnail"] = {
                    ["url"] = AvatarImage
                },
                ["fields"] = {
                    {
                        ["name"] = "名称(Name)",
                        ["value"] = localPlayer.Name,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "地图ID",
                        ["value"] = game.PlaceId,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "使用的注入器",
                        ["value"] = executor,
                        ["inline"] = true
                    }
                }
            }
        }
    }
    local success, err = pcall(function()
        HttpService:PostAsync(webhookUrl, HttpService:JSONEncode(msg), false, {["Content-Type"] = "application/json"})
    end)
    if not success then
        warn("Failed to send webhook: ", err)
    end
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:".. localPlayer.Name.. "，你被加入了黑名单",
        Duration = 7,
    })
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:".. localPlayer.Name.. "，10秒后踢出",
        Duration = 7,
    })
    task.wait(10)
    localPlayer:Kick('你被加入了黑名单')
else
    StarterGui:SetCore("SendNotification", {
        Title = "黑名单认证",
        Text = "玩家:".. localPlayer.Name.. "，检测完毕，欢迎使用6脚本，感谢支持",
        Duration = 7,
    })
    -- 这里加载外部脚本存在风险，谨慎使用
    local success, result = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/qwaszxcv85/6jiaoben/refs/heads/main/%E8%84%9A%E6%9C%AC%E7%BF%BB%E6%96%B0%E5%8A%A0%E5%AF%86%E7%89%88.txt"))()
    end)
    if not success then
        warn("Failed to load script: ", result)
    end
end
