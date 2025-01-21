local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local TitleLabel = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")
local isMobile = UserInputService.TouchEnabled
local function executeScript(script)
  if script:sub(1, 7) == "require" then
	local loadedScript = loadstring(script)
		if loadedScript then
			local success, result = pcall(loadedScript)
           if success then
               print("成功执行脚本")
           else
               print("脚本错误: " .. result)
           end
		else
			 print("无法加载字符串")
		end
   else
	print("不需要脚本")
  end
end



local function createGUI()
    ScreenGui.Parent = Players.LocalPlayer and Players.LocalPlayer:WaitForChild("PlayerGui") or game.StarterGui
    ScreenGui.Name = "后门检测"
    
	MainFrame.Parent = ScreenGui
	MainFrame.BackgroundTransparency = 0.5
	MainFrame.BackgroundColor3 = Color3.fromRGB(50,50,50)
	MainFrame.Position = UDim2.new(.2,0,.2,0)
	MainFrame.Size = UDim2.new(.6,0,0.6,0)
    
	-- Title Label
    TitleLabel.Parent = MainFrame
    TitleLabel.Text = "后门检测"
	TitleLabel.TextColor3 = Color3.fromRGB(255,255,255)
	TitleLabel.BackgroundTransparency = 1
    TitleLabel.Size = UDim2.new(1,0,0.1,0)
	TitleLabel.Font = Enum.Font.ArialBold
	TitleLabel.TextSize = 30
	TitleLabel.Position = UDim2.new(0,0,0.05,0)

    -- Text Box
    TextBox.Parent = MainFrame
    TextBox.Size = UDim2.new(0.8, 0, 0.6, 0)
	TextBox.Position = UDim2.new(.1,0,.2,0)
    TextBox.PlaceholderText = ""
    TextBox.Text = ""
	
	-- Execute Button
    ExecuteButton.Parent = MainFrame
	ExecuteButton.BackgroundColor3 = Color3.fromRGB(75,75,75)
    ExecuteButton.Size = UDim2.new(0.4, 0, 0.15, 0)
	ExecuteButton.Position = UDim2.new(.1,0,.8,0)
    ExecuteButton.Text = "确定"
	ExecuteButton.TextColor3 = Color3.fromRGB(255,255,255)
	ExecuteButton.Font = Enum.Font.ArialBold
    ExecuteButton.MouseButton1Click:Connect(function()
        executeScript(TextBox.Text)
    end)
	
	-- Toggle Button
    ToggleButton.Parent = MainFrame
	ToggleButton.BackgroundColor3 = Color3.fromRGB(75,75,75)
    ToggleButton.Size = UDim2.new(0.4, 0, 0.15, 0)
	ToggleButton.Position = UDim2.new(.5,0,.8,0)
    ToggleButton.Text = "关闭"
	ToggleButton.TextColor3 = Color3.fromRGB(255,255,255)
	ToggleButton.Font = Enum.Font.ArialBold
    ToggleButton.MouseButton1Click:Connect(function()
        ScreenGui.Enabled = not ScreenGui.Enabled
    end)
	ScreenGui.Enabled = true
end

-- scan
local function scanGame()
    local modelsWithBackdoor = {}
	local descendants = game:GetDescendants()
	for _, descendant in ipairs(descendants) do
		if descendant:IsA("LuaSourceContainer") then
			local scriptSource = descendant.Source
			if string.find(scriptSource, "require") then
               table.insert(modelsWithBackdoor, descendant.Parent)
			end
		end
	end
    if  #modelsWithBackdoor > 0 then
		createGUI()
    else
      print("没有发现潜在的后门")
    end
end
scanGame()
if isMobile then
	ScreenGui.Enabled = false
end