local players = game:GetService("Players")
local RS = game:GetService("RunService")
local player = players.LocalPlayer
local c = player.Character or player.CharacterAdded:Wait()
local ppart = c.PrimaryPart

player.CharacterAdded:Connect(function(chr)
	c = chr
	ppart = c.PrimaryPart
end)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
	Name = "Piggy",
	Icon = 0,
	LoadingTitle = "Loading Script",
	LoadingSubtitle = "-Private Script-",
	Theme = "Default",
	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false,
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "Big Hub"
	},
	Discord = {
		Enabled = false,
		Invite = "noinvitelink",
		RememberJoins = true
	},
	KeySystem = false,
	KeySettings = {
		Title = "This is a private script!",
		Subtitle = "Enter Activation Key",
		Note = "You must get a key from the owners.",
		FileName = "Key",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = {"A8F4-K2P9-M3Q7-X5Y6", "B9D2-H4L8-N7R3-V1T5", "C1J6-P9K3-W8X4-Y2L5", "M4P8-X7T3-Y5N2-K9W6", "H7Y2-N4M6-V8X5-K3T9"}
	}
})

local piggyespvalue = Instance.new("BoolValue")
local playerespvalue = Instance.new("BoolValue")
local itemsesp = Instance.new("BoolValue")
local trapespvalue = Instance.new("BoolValue")
local Tab = Window:CreateTab("Main", 4483362458)

local Toggle = Tab:CreateToggle({
	Name = "Piggy/Traitor ESP",
	CurrentValue = false,
	Flag = "PiggyEsp",
	Callback = function(Value)
		piggyespvalue.Value = Value
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Player ESP",
	CurrentValue = false,
	Flag = "PlayerEsp",
	Callback = function(Value)
		playerespvalue.Value = Value
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Items ESP",
	CurrentValue = false,
	Flag = "ItemEsp",
	Callback = function(Value)
		itemsesp.Value = Value
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Trap ESP",
	CurrentValue = false,
	Flag = "TrapEsp",
	Callback = function(Value)
		trapespvalue.Value = Value
	end,
})

local Button = Tab:CreateButton({
	Name = "Destroy Traps",
	Callback = function()
		for _, c in pairs(workspace:GetDescendants()) do
			if c.Name == "Trap Sound" or c.Name == "TrapSound" then
				c.Parent:Destroy()
			end
		end
	end,
})

local function createESP(ch, isPiggy)
	local bui = Instance.new("BillboardGui")
	bui.AlwaysOnTop = true
	bui.Name = isPiggy and "PiggyHL" or "PlayerHL"
	bui.Size = UDim2.new(0, 100, 0, 50)
	local tl = Instance.new("TextLabel")
	tl.BackgroundTransparency = 1
	tl.Size = UDim2.new(1, 0, 1, 0)
	tl.TextScaled = true
	tl.TextColor3 = Color3.fromRGB(255, 255, 255)
	tl.Parent = bui

	local uiStroke = Instance.new("UIStroke")
	uiStroke.Transparency = 0
	uiStroke.Parent = tl

	bui.Parent = ch
	tl.Text = ch.Name

	local hl = Instance.new("Highlight")
	if isPiggy then
		hl.FillColor = Color3.new(0.454902, 0, 0)
		hl.Name = "PiggyHL"
		hl.Enabled = piggyespvalue.Value
		hl.Parent = ch
	else
		hl.FillColor = Color3.new(0, 0.427451, 0.427451)
		hl.Name = "PlayerHL"
		hl.Enabled = playerespvalue.Value
		hl.Parent = ch
	end
end

workspace.DescendantAdded:Connect(function(c)
	if c:IsA("Model") and c:FindFirstChild("Humanoid") then
		if c:FindFirstChild("Enemy") then
			createESP(c, true)
		elseif players:GetPlayerFromCharacter(c) then
			createESP(c, false)
		end
	end
end)

piggyespvalue.Changed:Connect(function()
	for _, hl in pairs(workspace:GetDescendants()) do
		if hl.Name == "PiggyHL" then
			hl.Enabled = piggyespvalue.Value
		end
	end
end)

playerespvalue.Changed:Connect(function()
	for _, hl in pairs(workspace:GetDescendants()) do
		if hl.Name == "PlayerHL" then
			hl.Enabled = playerespvalue.Value
		end
	end
end)
