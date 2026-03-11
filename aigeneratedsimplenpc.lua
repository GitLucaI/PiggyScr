local Players = game:GetService("Players")
local PathfindingService = game:GetService("PathfindingService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Chat = game:GetService("TextChatService")

local player = Players.LocalPlayer
local char, root, hum
local initialWalkSpeed, initialJumpPower = 16, 50
local active, sleepMode, resting, linesEnabled = false, false, false, true
local pathThread, lookThread, statThread
local behaviorName = "Standard"
local lastDirection = Vector3.new(1,0,0)
local currentTargetPlayer = nil
local isDancing = false
local lastY = 0
local falling = false

local stats = {
	Tiredness = 100, 
	Stamina = 100, 
	Hunger = 100, 
	Thirst = 100,
	Health = 100
}

local behaviorConfig = {
	Chilled = {Color = Color3.new(0, 1, 1), Speed = 0.6, Lines = {"Vibing hard.", "Slow life is best.", "Chilling..."}},
	Standard = {Color = Color3.new(1, 1, 1), Speed = 1.0, Lines = {"Just walking.", "Heading out.", "Nice day."}},
	Observant = {Color = Color3.new(1, 0.8, 0), Speed = 0.8, Lines = {"I see you, {N}.", "Interesting style, {N}."}},
	Athletic = {Color = Color3.new(0, 1, 0), Speed = 2.0, Lines = {"Gotta blast!", "No pain no gain!", "LIGHTWEIGHT!"}},
	Aggressive = {Color = Color3.new(1, 0, 0), Speed = 2.2, Lines = {"OUT OF MY WAY!", "Don't touch me!", "MOVE!"}},
	Anxious = {Color = Color3.new(0.6, 0.3, 1), Speed = 1.4, Lines = {"Leave me alone, {N}!", "Stop following me!", "I'm scared!"}},
	Lost = {Color = Color3.new(0.5, 0.5, 0.5), Speed = 0.8, Lines = {"Where am I?", "Wrong turn...", "Is this the map?"}}
}

local ui = Instance.new("ScreenGui", player.PlayerGui)
ui.Name = "GTANPC_ULTIMATE_FIX"
ui.ResetOnSpawn = false

local mainHolder = Instance.new("Frame", ui)
mainHolder.Size = UDim2.new(0, 200, 0, 600)
mainHolder.Position = UDim2.new(0, 50, 0.2, 0)
mainHolder.BackgroundTransparency = 1
mainHolder.Active = true
mainHolder.Draggable = true

local function say(msg, targetName)
	if not linesEnabled then return end
	local final = msg:gsub("{N}", targetName or "someone")
	if Chat.ChatVersion == Enum.ChatVersion.TextChatService then
		Chat.TextChannels.RBXGeneral:SendAsync("[AI]: " .. final)
	end
end

local function createPanel(parent, name, pos, size)
	local frame = Instance.new("Frame", parent)
	frame.Size, frame.Position, frame.BackgroundColor3 = size, pos, Color3.fromRGB(15, 15, 15)
	frame.BorderSizePixel, frame.ClipsDescendants = 0, false
	Instance.new("UICorner", frame)
	
	local top = Instance.new("Frame", frame)
	top.Size, top.BackgroundColor3, top.BorderSizePixel = UDim2.new(1, 0, 0, 30), Color3.fromRGB(40, 40, 40), 0
	Instance.new("UICorner", top)

	local t = Instance.new("TextLabel", top)
	t.Size, t.BackgroundTransparency, t.Text, t.TextColor3, t.Font, t.TextSize = UDim2.new(1, -40, 1, 0), 1, name, Color3.new(1, 1, 1), Enum.Font.GothamBold, 11
	
	local content = Instance.new("Frame", frame)
	content.Name, content.Size, content.Position, content.BackgroundTransparency = "Content", UDim2.new(1, 0, 1, -30), UDim2.new(0, 0, 0, 30), 1

	local minBtn = Instance.new("TextButton", top)
	minBtn.Size, minBtn.Position, minBtn.Text = UDim2.new(0, 25, 0, 25), UDim2.new(1, -30, 0, 2.5), "-"
	minBtn.BackgroundColor3, minBtn.TextColor3 = Color3.fromRGB(60, 60, 60), Color3.new(1, 1, 1)
	Instance.new("UICorner", minBtn)

	minBtn.MouseButton1Click:Connect(function()
		if content.Visible then
			content.Visible = false
			frame.Size = UDim2.new(size.X.Scale, size.X.Offset, 0, 30)
			minBtn.Text = "+"
		else
			content.Visible = true
			frame.Size = size
			minBtn.Text = "-"
		end
	end)

	return content
end

local ctrl = createPanel(mainHolder, "CONTROL PANEL", UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 0, 350))
local cl = Instance.new("UIListLayout", ctrl) cl.Padding = UDim.new(0, 5) Instance.new("UIPadding", ctrl).PaddingTop = UDim.new(0, 10)

local function btn(txt, clr)
	local b = Instance.new("TextButton", ctrl)
	b.Size, b.BackgroundColor3, b.Text, b.TextColor3, b.Font, b.TextSize = UDim2.new(1, -20, 0, 28), clr, txt, Color3.new(1, 1, 1), Enum.Font.GothamBold, 10
	b.Position = UDim2.new(0, 10, 0, 0) Instance.new("UICorner", b) return b
end

local function inp(ph)
	local i = Instance.new("TextBox", ctrl)
	i.Size, i.BackgroundColor3, i.PlaceholderText, i.Text, i.TextColor3, i.Font, i.TextSize = UDim2.new(1, -20, 0, 28), Color3.fromRGB(30, 30, 30), ph, "", Color3.new(1, 1, 1), Enum.Font.Gotham, 10
	Instance.new("UICorner", i) return i
end

local tglB = btn("START AI", Color3.fromRGB(0, 180, 0))
local lineB = btn("TOGGLE LINES: ON", Color3.fromRGB(40, 120, 180))
local slpB = btn("GO TO SLEEP", Color3.fromRGB(120, 50, 200))
local eatB = btn("EAT FOOD", Color3.fromRGB(180, 120, 40))
local drkB = btn("DRINK WATER", Color3.fromRGB(40, 120, 180))
local spdI = inp("Speed (16)")
local jmpI = inp("Jump (50)")
local killB = btn("GIVE UP", Color3.fromRGB(60, 60, 60))

local vit = createPanel(mainHolder, "VITALS", UDim2.new(0, 0, 0, 360), UDim2.new(1, 0, 0, 240))
local vl = Instance.new("UIListLayout", vit) vl.Padding = UDim.new(0, 6) Instance.new("UIPadding", vit).PaddingLeft = UDim.new(0, 12)
local behLab = Instance.new("TextLabel", vit)
behLab.Size, behLab.BackgroundTransparency, behLab.TextColor3, behLab.Font, behLab.TextSize = UDim2.new(1, -24, 0, 25), 1, Color3.new(1, 1, 0), Enum.Font.GothamBold, 9
behLab.Text = "BEHAVIOR: CALC..."

local bars = {}
local function bar(n, c)
	local cnt = Instance.new("Frame", vit) cnt.Size, cnt.BackgroundTransparency = UDim2.new(1, -24, 0, 18), 1
	local tl = Instance.new("TextLabel", cnt) tl.Text, tl.Size, tl.TextColor3, tl.BackgroundTransparency, tl.Font, tl.TextSize = n:upper(), UDim2.new(0, 55, 1, 0), Color3.new(1,1,1), 1, Enum.Font.GothamBold, 7
	local bg = Instance.new("Frame", cnt) bg.Size, bg.Position, bg.BackgroundColor3 = UDim2.new(1, -60, 0, 10), UDim2.new(0, 60, 0, 4), Color3.fromRGB(25, 25, 25)
	local f = Instance.new("Frame", bg) f.Size, f.BackgroundColor3 = UDim2.new(1, 0, 1, 0), c Instance.new("UICorner", f) bars[n] = f
end
bar("Health", Color3.new(1,0,0)) bar("Stamina", Color3.new(0,1,0)) bar("Tiredness", Color3.new(0.5,0,1)) bar("Hunger", Color3.new(1,0.5,0)) bar("Thirst", Color3.new(0,0.5,1))

local function startNPC()
	statThread = task.spawn(function()
		local keys = {"Chilled", "Standard", "Observant", "Athletic", "Aggressive", "Anxious", "Lost"}
		while active and hum and hum.Health > 0 do
			task.wait(10)
			behaviorName = keys[math.random(1, #keys)]
			behLab.Text = "BEHAVIOR: " .. behaviorName:upper()
			behLab.TextColor3 = behaviorConfig[behaviorName].Color
			if not resting then
				stats.Hunger = math.max(0, stats.Hunger - 0.2)
				stats.Thirst = math.max(0, stats.Thirst - 0.3)
				stats.Tiredness = math.max(0, stats.Tiredness - 0.2)
				local run = (behaviorName == "Athletic" or behaviorName == "Aggressive")
				hum.WalkSpeed = isDancing and 0 or initialWalkSpeed * (run and behaviorConfig[behaviorName].Speed or 1)
				stats.Stamina = run and stats.Stamina - 1 or math.min(100, stats.Stamina + 1)
			else
				stats.Tiredness = math.min(100, stats.Tiredness + 1)
				if stats.Tiredness > 95 and not sleepMode then hum.Jump = true end
			end
			stats.Health = hum.Health
			for k,v in pairs(bars) do v.Size = UDim2.new(stats[k]/100, 0, 1, 0) end
		end
	end)

	lookThread = task.spawn(function()
		local lastSay = 0
		local stareTimer = 0
		local cooldown = 0
		while active and hum and hum.Health > 0 do
			local target = nil
			local range = (behaviorName == "Observant") and 22 or 12
			if cooldown <= 0 then
				for _, p in ipairs(Players:GetPlayers()) do
					if p ~= player and p.Character then
						local dist = (p.Character:GetPivot().Position - root.Position).Magnitude
						if dist < range then target = p break end
					end
				end
			else
				cooldown = cooldown - 0.1
			end
			currentTargetPlayer = target
			if target and not resting then
				stareTimer = stareTimer + 0.1
				local maxStare = (behaviorName == "Observant") and 6 or 1.5
				if stareTimer < maxStare then
					hum.AutoRotate = false
					local lookPos = Vector3.new(target.Character:GetPivot().Position.X, root.Position.Y, target.Character:GetPivot().Position.Z)
					root.CFrame = root.CFrame:Lerp(CFrame.lookAt(root.Position, lookPos), 0.15)
					if tick() - lastSay > 15 then
						say(behaviorConfig[behaviorName].Lines[math.random(1, #behaviorConfig[behaviorName].Lines)], target.Name)
						lastSay = tick()
					end
				else
					hum.AutoRotate = true
					target = nil
					stareTimer = 0
					cooldown = (behaviorName == "Observant") and 5 or 12
				end
			else
				hum.AutoRotate = true
				stareTimer = 0
			end
			task.wait(0.1)
		end
	end)

	pathThread = task.spawn(function()
		while active and hum and hum.Health > 0 do
			if resting or isDancing then task.wait(1) continue end
			local goal = root.Position + Vector3.new(math.random(-100,100), 0, math.random(-100,100))
			local path = PathfindingService:CreatePath({AgentRadius = 4, AgentCanJump = true, AgentHeight = 5})
			path:ComputeAsync(root.Position, goal)
			if path.Status == Enum.PathStatus.Success then
				local waypoints = path:GetWaypoints()
				for i, wp in ipairs(waypoints) do
					if not active or resting or isDancing then break end
					hum:MoveTo(wp.Position)
					if wp.Action == Enum.PathWaypointAction.Jump then hum.Jump = true end
					local ray = Ray.new(root.Position, root.CFrame.LookVector * 5)
					local hit = workspace:FindPartOnRayWithIgnoreList(ray, {char})
					if hit and (not hit:IsA("Seat") or stats.Tiredness > 30) then hum.Jump = true end
					local timeout = tick()
					repeat RunService.Heartbeat:Wait() until (root.Position - wp.Position).Magnitude < 4 or tick() - timeout > 4
				end
			end
			task.wait(0.5)
		end
	end)
end

tglB.MouseButton1Click:Connect(function()
	active = not active
	tglB.Text = active and "STOP AI" or "START AI"
	tglB.BackgroundColor3 = active and Color3.new(0.6,0,0) or Color3.new(0,0.6,0)
	if active then startNPC() else if statThread then task.cancel(statThread) task.cancel(pathThread) task.cancel(lookThread) end end
end)

lineB.MouseButton1Click:Connect(function() linesEnabled = not linesEnabled lineB.Text = linesEnabled and "TOGGLE LINES: ON" or "TOGGLE LINES: OFF" end)
eatB.MouseButton1Click:Connect(function() stats.Hunger = 100 end)
drkB.MouseButton1Click:Connect(function() stats.Thirst = 100 end)
slpB.MouseButton1Click:Connect(function() sleepMode = not sleepMode if not sleepMode and hum.Sit then hum.Jump = true end end)
spdI.FocusLost:Connect(function() initialWalkSpeed = tonumber(spdI.Text) or 16 end)
jmpI.FocusLost:Connect(function() initialJumpPower = tonumber(jmpI.Text) or 50 hum.JumpPower = initialJumpPower end)
killB.MouseButton1Click:Connect(function() if hum then hum.Health = 0 end end)

local function setup(c)
	char, root, hum = c, c:WaitForChild("HumanoidRootPart"), c:WaitForChild("Humanoid")
	hum.Seated:Connect(function(s) resting = s end)
	hum.UseJumpPower = true
	hum.StateChanged:Connect(function(_, state)
		if state == Enum.HumanoidStateType.Freefall then
			if not falling then
				falling = true
				lastY = root.Position.Y
			end
		elseif state == Enum.HumanoidStateType.Landed then
			if falling then
				falling = false
				local fallen = lastY - root.Position.Y
				if fallen > 20 then
					local dmg = (fallen - 20) * 5
					hum:TakeDamage(dmg)
				end
			end
		end
	end)
end

player.CharacterAdded:Connect(setup)
if player.Character then setup(player.Character) end
