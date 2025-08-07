local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local Window = OrionLib:MakeWindow({Name = "6", HidePremium = false, SaveConfig = true,IntroText = "loading", ConfigFolder = "4646646"})
local about = Window:MakeTab({
    Name = "Yze脚本",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
about:AddParagraph("失败的慢制作")	
about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("脚本为免费脚本，请勿拿去圈钱")
about:AddParagraph("此脚本是缝合脚本，永久更新，部分脚本为自做")
about:AddParagraph("圈钱的人腻湿不湿愁奈拢,大庞茂,窝熙望腻遍乘哒旁冒")			
local AllPlayers = {game.Players.LocalPlayer.Name}

local function refreshPlayerList()
    AllPlayers = {game.Players.LocalPlayer.Name}
    for _, player in ipairs(game.Players:GetPlayers()) do
        if not table.find(AllPlayers, player.Name) then
            table.insert(AllPlayers, player.Name)
        end
    end
end

refreshPlayerList()

local function TeleportToPlayer(Plr)
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name == Plr then
            local localPlayer = game.Players.LocalPlayer
            localPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
            print("已传送到 " .. Plr)
            break
        end
    end
end
 
if OrionLib and OrionLib.MakeNotification then
    game.Players.ChildAdded:Connect(
        function(player)
            local success, errorMessage =
                pcall(
                function()
                    OrionLib:MakeNotification(
                        {
                            Name = "🟩玩家加入🟩",
                            Content = player.Name .. " 加入了游戏",
                            Image = "rbxassetid://6031302992",
                            Time = 5
                        }
                    )
                end
            )
            if not success then
                print("Error: " .. errorMessage)
            end
        end
    )
    
    game.Players.ChildRemoved:Connect(
        function(player)
            local success, errorMessage =
                pcall(
                function()
                    OrionLib:MakeNotification(
                        {
                            Name = "🟥玩家离开🟥",
                            Content = player.Name .. " 离开了游戏",
                            Image = "rbxassetid://6031302992",
                            Time = 5
                        }
                    )
                end
            )
            if not success then
                print("Error: " .. errorMessage)
            end
        end
    )
else
OrionLib:MakeNotification({ 
 Name = "错误代码", 
 Content = "❌未完成", 
 Image = "rbxassetid://17493876383", 
 Time = 7.5
 })
end
local Tab = Window:MakeTab({
    Name = "blair",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/MythHubOfficial/Blair/refs/heads/main/MYTHONTOP'))()
end
})   
Tab:AddButton({
	Name = "2汉化",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wdwahDWGU/DWAHUBUHD/refs/heads/main/MSDUIWQQWD"))()
		end
})   
Tab:AddButton({
	Name = "复制坐标",
	Callback = function()
setclipboard(tostring(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame))<
		end
})   
local Tab = Window:MakeTab({
    Name = "指令ly",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
about:AddParagraph("headsit+名字爬到别人头上")
Tab:AddButton({
	Name = "IY",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
})
local Tab = Window:MakeTab({
    Name = "通用",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Tab = Window:MakeTab({
    Name = "dex和spy",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "dex",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end
})    
Tab:AddButton({
	Name = "spy",
	Callback = function()
getgenv().Spy="汉化Spy"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/refs/heads/main/spy%E6%B1%89%E5%8C%96%20(1).txt"))()
end
})    
local Tab = Window:MakeTab({
    Name = "doors",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "生成rush",
	Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/DOORS-Custom-Entity-S*er-V2-21705"))()
end
})    
Tab:AddButton({
	Name = "mspaintXK汉化",
	Callback = function()
getgenv().Spy="mspaint" loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoXuAnZang/XKscript/refs/heads/main/DOORS.txt"))()
end
})    
Tab:AddButton({
	Name = "十字架",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/FCSyG6Th"))()
end
})   
Tab:AddButton({
	Name = "夜视仪",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/4Vsv1Xwn"))()
end
})    
local Tab = Window:MakeTab({
    Name = "内脏与黑火药",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\71\66"))()
end
})    
local Tab = Window:MakeTab({
    Name = "极速传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
		end
		}) 
	
		local Tab = Window:MakeTab({
    Name = "造船寻宝",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
		Tab:AddButton({
	Name = "刷钱",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/Lyy77rnr",true))()
end
})    
Tab:AddToggle({
    Name = "人物传送(循环)",
    Default = false,
    Callback = function(Value)
while Value do
local Tab = Window:MakeTab({
    Name = "evade",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
		Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/9Strew/roblox/main/gamescripts/evade.lua'))()
end
})    
		Tab:AddButton({
	Name = "2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
end
})    
local Tab = Window:MakeTab({
    Name = "SBC",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/10h-pack/345upd/refs/heads/main/SSBC.lua"))()
end
})    
local Tab = Window:MakeTab({
    Name = "周五夜放克",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()			
	end
})
local Tab = Window:MakeTab({
    Name = "餐厅大亨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "无限钱(可用性未知)",
	Callback = function()
getgenv().ev = ev or {}
ev.Do = false
wait(.1)
ev.Do = true

function getPlayerTycoon()
   for _,obj in pairs(workspace.Tycoons:GetChildren()) do
       if obj.Factory.Player.Value == game.Players.LocalPlayer then return obj.Factory end
   end
end

local tyc = getPlayerTycoon()
function makePurchaseandSell()
   workspace.Events.ItemPurchase:InvokeServer(0,'cgz',0)
   workspace.Events.Building.PlaceObject:FireServer({workspace.Furniture.Counter5, "Normal", Vector3.new(-76, 3.4, 216), 270, "cgz"}, true)
   workspace.Events.Building.RemoveFurniture:InvokeServer(tyc.PlacedItems.Finished.Counter5, 3, true)
end

while ev.Do and wait() do makePurchaseandSell() end			
	end
})
Tab:AddButton({
	Name = "2",
	Callback = function()
loadstring(game:HttpGet("https://rawscripts.net/raw/LUXURY-ITEMS-Restaurant-Tycoon-2-OP-AutoFarm-9904"))()			
	end
})
Tab:AddButton({
	Name = "3(有卡密不推荐)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/toosiwhip/snake-hub/main/restaurant-tycoon-2.lua"))()			
	end
})
Tab:AddButton({
	Name = "4",
	Callback = function()
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("餐厅大亨2汉化版")
local b = w:CreateFolder("主页")
b:Button("玩家快速烹饪",function()
    local Cooking = game.Players.LocalPlayer.PlayerScripts.CookingNew
local CookProgress = require(Cooking.CookProgress)
local MultiClick = require(Cooking.InputDetectors.MultiClick)
local MouseMovement = require(Cooking.InputDetectors.MouseMovement)
local MouseSpin = require(Cooking.InputDetectors.MouseSpin)

local run = CookProgress.run
CookProgress.run = function(...)
  local ARGS = {...}
  ARGS[3] = 0
  return run(unpack(ARGS))
end

MultiClick.start = function(...)
  ({...})[3]()
end

MouseMovement.start = function(...)
  ({...})[3]()
end

MouseSpin.start = function(...)
  ({...})[3]()
end
end)
Tab:Button("一键收钱",function()
    warn("Requiring API")do
  loadstring(game:HttpGet("https://pastebin.com/raw/KMc6aBky"))();
end warn("API Loaded")

local child = object.child
local descendant = object.descendant
local check = object.check

local Tycoon = game.Players.LocalPlayer.Tycoon.Value
descendant.foreach(Tycoon.Items.OftenFiltered.Surface,"Bill",function(Bill)
  local Settings = {
          ["name"] = "CollectBill",
          ["model"] = Bill.Parent
  }
 
  game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
end)

local Connection,Code = descendant.on_add(Tycoon.Items.OftenFiltered.Surface,function(Bill)
  check.it(Bill.Name == "Bill",function()
      local Settings = {
              ["name"] = "CollectBill",
              ["model"] = Bill.Parent
      }
     
      game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
  end)
end)
end)
Tab:Button("npc自动烹饪",function()
    local chiefInstantCook = true
local npcReach = true

local Client = game.Players.LocalPlayer
local PS = Client.PlayerScripts
local Module = require(PS.ClientMain.Replications.Workers.WalkDummy)
local Worker = require(PS.CookingNew.WorkerComponents.WorkerDefault)
local M1 = require(PS.ClientMain.Replications.Customers.GetNPCFolder)



if npcReach then
   hookfunction(Module,function()
       return task.wait()
   end)
end

if chiefInstantCook then
   Worker.event = function(...)
      local args = {...}
      local npc = M1.GetNPCFolder(args[1]).ClientWorkers:FindFirstChild(args[2])
      local M2 = game.ReplicatedStorage.MiscModules.CookingSharedCharacter:FindFirstChild(args[4])
      if M2 then
          require(M2).finishInteract(npc,args[3],args[4])
      end
      return
   end
end
end)
			
	end
})
local Tab = Window:MakeTab({
    Name = "战争大亨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "剑客(已报废不免费)",
	Callback = function()
Sword_Guest_V7 = "欢迎使用剑客V7"	
Sword_Guest__V7 = "作者_初夏"	
Sword_Guest___V7 = "剑客QQ群155160100"	
loadstring(game:HttpGet("https://raw.githubusercontent.com/Zer0neK/Hello/refs/heads/main/SG-V7"))()			
	end
})
			local Tab = Window:MakeTab({
    Name = "伐木大亨2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "白",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/%E4%BC%90%E6%9C%A8"))()			
	end
})
			Tab:AddButton({
	Name = "luaware汉化",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/LuaWare.lua", true))()			
	end
})
