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
	bui.Size = UDim2.new(0, 50, 0, 25)
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
	bui.Adornee = ch.PrimaryPart
	local myDistance
	local formattedDistance
	RS.RenderStepped:Connect(function()
		if ch.PrimaryPart then
			myDistance = (ppart.Position - ch.PrimaryPart.Position).Magnitude
			formattedDistance = string.format("%.2f", myDistance)
			tl.Text = tostring(formattedDistance) .. " studs away!"
		end
	end)

	local hl = Instance.new("Highlight")
	if isPiggy then
		hl.FillColor = Color3.new(0.454902, 0, 0)
		hl.Name = "PiggyHL"
		hl.Enabled = piggyespvalue.Value
		hl.Parent = ch
	else
		hl.FillColor = Color3.new(0, 0.427451, 0.427451)
		hl.Name = "PlayerHL"
		hl.Enabled = piggyespvalue.Value
		hl.Parent = ch
	end
end

local function createItemESP(item:BasePart)
	local bui = Instance.new("BillboardGui")
	bui.AlwaysOnTop = true
	bui.Name = "ItemHL"
	bui.Size = UDim2.new(0, 75, 0, 40)
	local tl = Instance.new("TextLabel")
	tl.BackgroundTransparency = 1
	tl.Size = UDim2.new(1, 0, 1, 0)
	tl.TextScaled = true
	tl.TextColor3 = Color3.fromRGB(255, 255, 255)
	tl.Parent = bui
	
	local uiStroke = Instance.new("UIStroke")
	uiStroke.Transparency = 0
	uiStroke.Parent = tl

	bui.Parent = item
	bui.Adornee = item
	local myDistance
	local formattedDistance
	RS.RenderStepped:Connect(function()
		myDistance = (ppart.Position - item.Position).Magnitude
		formattedDistance = string.format("%.2f", myDistance)
		tl.Text = tostring(formattedDistance) .. " studs away!" or ""
	end)

	local hl = Instance.new("Highlight")
	hl.FillColor = item.Color
	hl.Name = "ItemHL"
	hl.Enabled = itemsesp.Value
	hl.Parent = item
end

local function createTrapESP(trap)
	local bui = Instance.new("BillboardGui")
	bui.AlwaysOnTop = true
	bui.Name = "TrapHL"
	bui.Size = UDim2.new(0, 75, 0, 40)
	local tl = Instance.new("TextLabel")
	tl.BackgroundTransparency = 1
	tl.Size = UDim2.new(1, 0, 1, 0)
	tl.TextScaled = true
	tl.TextColor3 = Color3.fromRGB(255, 0, 0)
	tl.Parent = bui

	local uiStroke = Instance.new("UIStroke")
	uiStroke.Transparency = 0
	uiStroke.Parent = tl

	bui.Parent = trap
	bui.Adornee = trap
	local myDistance
	local formattedDistance
	RS.RenderStepped:Connect(function()
		myDistance = (ppart.Position - trap.Position).Magnitude 
		formattedDistance = string.format("%.2f", myDistance)
		tl.Text = tostring(formattedDistance) .. " studs away!"
	end)

	local hl = Instance.new("Highlight")
	hl.FillColor = Color3.new(1, 0, 0)
	hl.Name = "TrapHL"
	hl.Enabled = trapespvalue.Value
	hl.Parent = trap
end

for _, c in pairs(workspace:GetDescendants()) do
	if c:IsA("Humanoid") then
		local ch = c.Parent
		if ch.Name ~= player.Name then
			if players:GetPlayerFromCharacter(ch) or ch.Parent == workspace.PiggyNPC then
				if c.Health > 100 then
					createESP(ch, true)
				elseif c.Health < 101 then
					createESP(ch, false)
				end
			end
		end
	end
end

for _, c in pairs(workspace:GetDescendants()) do
	if c:FindFirstChild("ItemPickupScript") then
		createItemESP(c)
	end
end

for _, c in pairs(workspace:GetDescendants()) do
	if c:FindFirstChild("Trap Sound") or c:FindFirstChild("TrapSound") then
		createTrapESP(c)
	end
end

for _, c in pairs(players:GetPlayers()) do
	local chr = c.Character or c.CharacterAdded:Wait()
	c.CharacterAdded:Connect(function(ch)
		chr = ch
	end)
	local b = c.Backpack
	if b:FindFirstChild("Knife") then
		createESP(chr, true)
		if chr:FindFirstChild("PlayerHL") then
			chr:FindFirstChild("PlayerHL"):Destroy()
		end
	end
	
	b.ChildAdded:Connect(function(item)
		if item.Name == "Knife" then
			createESP(chr, true)
			if chr:FindFirstChild("PlayerHL") then
				chr:FindFirstChild("PlayerHL"):Destroy()
			end
		end

	end)
end

workspace.DescendantAdded:Connect(function(c)
	if c:IsA("Humanoid") then
		local ch = c.Parent
		if ch.Name ~= player.Name then
			if players:GetPlayerFromCharacter(ch) or ch.Parent == workspace.PiggyNPC then
				if c.Health > 100 then
					createESP(ch, true)
				elseif c.Health < 101 then
					createESP(ch, false)
				end
			end
		end
	end
	if c.Name == "ItemPickupScript" then
		createItemESP(c.Parent)
	end
	if c.Name == "Trap Sound" or c.Name == "TrapSound" then
		createTrapESP(c.Parent)
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

itemsesp.Changed:Connect(function()
	for _, hl in pairs(workspace:GetDescendants()) do
		if hl.Name == "ItemHL" then
			hl.Enabled = itemsesp.Value
		end
	end
end)

trapespvalue.Changed:Connect(function()
	for _, hl in pairs(workspace:GetDescendants()) do
		if hl.Name == "TrapHL" then
			hl.Enabled = trapespvalue.Value
		end
	end
end)
