local Players = game:GetService("Players")
local PathfindingService = game:GetService("PathfindingService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Chat = game:GetService("TextChatService")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local char, root, hum, head
local initialWalkSpeed, initialJumpPower = 16, 50
local active, sleepMode, resting, linesEnabled, isMean = false, false, false, true, false
local pathThread, lookThread, statThread, sensesThread
local behaviorName = "Standard"
local currentTargetPlayer = nil
local isDancing = false
local lastY, falling = 0, false
local threatPart = nil
local lastHealth = 100

local stats = {
	Tiredness = 100, 
	Stamina = 100, 
	Hunger = 100, 
	Thirst = 100,
	Health = 100,
	Mind = "Offline"
}

local behaviorConfig = {
	Chilled = {Color = Color3.new(0, 1, 1), Speed = 0.6, Lines = {"Vibing hard.", "Slow life is best.", "Chilling..."}, MeanLines = {"Don't ruin my vibe.", "Leave me alone, I'm resting.", "Ugh, you're ruining the mood."}},
	Standard = {Color = Color3.new(1, 1, 1), Speed = 1.0, Lines = {"Just walking.", "Heading out.", "Nice day."}, MeanLines = {"What are you staring at?", "Keep walking.", "Boring day thanks to you."}},
	Observant = {Color = Color3.new(1, 0.8, 0), Speed = 0.8, Lines = {"I see you, {N}.", "Interesting style, {N}."}, MeanLines = {"You look terrible, {N}.", "Why are you dressed like that, {N}?", "Staring contest, and you're losing."}},
	Athletic = {Color = Color3.new(0, 1, 0), Speed = 2.0, Lines = {"Gotta blast!", "No pain no gain!", "LIGHTWEIGHT!"}, MeanLines = {"Move it, slowpoke!", "You're too slow!", "Outta my way, I'm working out!"}},
	Aggressive = {Color = Color3.new(1, 0, 0), Speed = 2.2, Lines = {"OUT OF MY WAY!", "Don't touch me!", "MOVE!"}, MeanLines = {"I'LL DESTROY YOU!", "DON'T YOU DARE TOUCH ME!", "GET OUT OF MY SIGHT!"}},
	Anxious = {Color = Color3.new(0.6, 0.3, 1), Speed = 1.4, Lines = {"Leave me alone, {N}!", "Stop following me!", "I'm scared!"}, MeanLines = {"Stay away from me, weirdo!", "Don't touch me!", "You're creeping me out, {N}!"}},
	Lost = {Color = Color3.new(0.5, 0.5, 0.5), Speed = 0.8, Lines = {"Where am I?", "Wrong turn...", "Is this the map?"}, MeanLines = {"This map is garbage.", "Where even am I? This place is trash.", "Whoever built this is an idiot."}}
}

local dialogs = {
	Normal = {
		Math = {"The answer to %s is %s.", "I calculated %s, it's %s."},
		Spawn = {"Systems online. Intelligence module active.", "AI Rebooted. Systems online."},
		Damage = {"Damage detected! Initiating evasive maneuvers!", "Taking damage! Seeking safety!"},
		Death = {"NPC has deceased. Disabling systems.", "Critical damage sustained... NPC deceased."},
		Read = {"That sign says '%s'.", "I'm reading '%s'."},
		Hear = {"I hear '%s' nearby.", "What is that '%s' noise?"},
		SeeObject = {"Looking at %s.", "I see a %s."},
		SeePlayer = {"I spot %s.", "Target acquired: %s."}
	},
	Mean = {
		Math = {"Are you too dumb to know %s is %s?", "Do your own math next time, but %s is %s.", "Even a baby knows %s is %s."},
		Spawn = {"Ugh, I'm alive again. Great.", "Don't bother me, I just spawned.", "Who turned me on? Leave me alone."},
		Damage = {"Watch it, idiot!", "Who did that?! I'll get you!", "Stop hurting me, you moron!"},
		Death = {"I hate you all...", "Finally, away from you losers...", "You useless players let me die!"},
		Read = {"Who cares that it says '%s'?", "Dumb sign says '%s'."},
		Hear = {"Turn off that '%s' noise!", "'%s' is hurting my ears."},
		SeeObject = {"Ugh, a %s. Boring.", "Why is there a %s here?"},
		SeePlayer = {"Stop staring at me, %s!", "Take a picture, %s, it lasts longer."}
	}
}

local ui = Instance.new("ScreenGui", player.PlayerGui)
ui.Name = "GTANPC_ULTIMATE_AWARE"
ui.ResetOnSpawn = false

local mainHolder = Instance.new("Frame", ui)
mainHolder.Size = UDim2.new(0, 220, 0, 650)
mainHolder.Position = UDim2.new(0, 50, 0.2, 0)
mainHolder.BackgroundTransparency = 1
mainHolder.Active, mainHolder.Draggable = true, true

local function say(msg, targetName)
	if not linesEnabled then return end
	local final = msg:gsub("{N}", targetName or "someone")
	if Chat.ChatVersion == Enum.ChatVersion.TextChatService then
		Chat.TextChannels.RBXGeneral:SendAsync("[AI]: " .. final)
	end
end

Chat.MessageReceived:Connect(function(textMsg)
	if not active then return end
	local msg = textMsg.Text:lower()
	local clean = msg:gsub("[^%d%+%-%*%/%.%%%(%)]", "")
	if #clean >= 3 and clean:match("%d") then
		local func = loadstring("return " .. clean)
		if func then
			local success, result = pcall(func)
			if success and type(result) == "number" then
				local pool = isMean and dialogs.Mean.Math or dialogs.Normal.Math
				say(string.format(pool[math.random(1, #pool)], clean, tostring(result)))
			end
		end
	end
end)

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
		content.Visible = not content.Visible
		frame.Size = content.Visible and size or UDim2.new(size.X.Scale, size.X.Offset, 0, 30)
		minBtn.Text = content.Visible and "-" or "+"
	end)
	return content
end

local ctrl = createPanel(mainHolder, "CONTROL PANEL", UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 0, 380))
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
local meanB = btn("TOGGLE MEAN: OFF", Color3.fromRGB(200, 80, 80))
local slpB = btn("GO TO SLEEP", Color3.fromRGB(120, 50, 200))
local eatB = btn("EAT FOOD", Color3.fromRGB(180, 120, 40))
local drkB = btn("DRINK WATER", Color3.fromRGB(40, 120, 180))
local spdI = inp("Speed (16)")
local jmpI = inp("Jump (50)")
local killB = btn("GIVE UP", Color3.fromRGB(60, 60, 60))

local vit = createPanel(mainHolder, "VITALS & MIND", UDim2.new(0, 0, 0, 390), UDim2.new(1, 0, 0, 280))
local vl = Instance.new("UIListLayout", vit) vl.Padding = UDim.new(0, 6) Instance.new("UIPadding", vit).PaddingLeft = UDim.new(0, 12)

local behLab = Instance.new("TextLabel", vit)
behLab.Size, behLab.BackgroundTransparency, behLab.TextColor3, behLab.Font, behLab.TextSize = UDim2.new(1, -24, 0, 25), 1, Color3.new(1, 1, 0), Enum.Font.GothamBold, 9
behLab.Text = "BEHAVIOR: CALC..."

local mindLab = Instance.new("TextLabel", vit)
mindLab.Size, mindLab.BackgroundTransparency, mindLab.TextColor3, mindLab.Font, mindLab.TextSize = UDim2.new(1, -24, 0, 25), 1, Color3.new(0, 1, 1), Enum.Font.GothamBold, 9
mindLab.Text = "MIND: OFFLINE"
mindLab.TextWrapped = true

local bars = {}
local function bar(n, c)
	local cnt = Instance.new("Frame", vit) cnt.Size, cnt.BackgroundTransparency = UDim2.new(1, -24, 0, 18), 1
	local tl = Instance.new("TextLabel", cnt) tl.Text, tl.Size, tl.TextColor3, tl.BackgroundTransparency, tl.Font, tl.TextSize = n:upper(), UDim2.new(0, 55, 1, 0), Color3.new(1,1,1), 1, Enum.Font.GothamBold, 7
	local bg = Instance.new("Frame", cnt) bg.Size, bg.Position, bg.BackgroundColor3 = UDim2.new(1, -60, 0, 10), UDim2.new(0, 60, 0, 4), Color3.fromRGB(25, 25, 25)
	local f = Instance.new("Frame", bg) f.Size, f.BackgroundColor3 = UDim2.new(1, 0, 1, 0), c Instance.new("UICorner", f) bars[n] = f
end
bar("Health", Color3.new(1,0,0)) bar("Stamina", Color3.new(0,1,0)) bar("Tiredness", Color3.new(0.5,0,1)) bar("Hunger", Color3.new(1,0.5,0)) bar("Thirst", Color3.new(0,0.5,1))

RunService.RenderStepped:Connect(function()
	if hum then stats.Health = hum.Health end
	mindLab.Text = "MIND: " .. tostring(stats.Mind):upper()
	for k,v in pairs(bars) do v.Size = UDim2.new(math.clamp(stats[k]/100, 0, 1), 0, 1, 0) end
end)

local function findEscapePoint()
	if threatPart and threatPart.Parent then
		local dir = (root.Position - threatPart.Position).Unit
		return root.Position + (dir * 50)
	end
	return root.Position + Vector3.new(math.random(-50,50), 0, math.random(-50,50))
end

local function startNPC()
	statThread = task.spawn(function()
		local keys = {"Chilled", "Standard", "Observant", "Athletic", "Aggressive", "Anxious", "Lost"}
		while active and hum and hum.Health > 0 do
			task.wait(10)
			behaviorName = keys[math.random(1, #keys)]
			behLab.Text = "BEHAVIOR: " .. behaviorName:upper()
			behLab.TextColor3 = behaviorConfig[behaviorName].Color
			if not resting then
				stats.Hunger, stats.Thirst, stats.Tiredness = math.max(0, stats.Hunger - 0.2), math.max(0, stats.Thirst - 0.3), math.max(0, stats.Tiredness - 0.2)
				local run = (behaviorName == "Athletic" or behaviorName == "Aggressive" or threatPart ~= nil)
				hum.WalkSpeed = isDancing and 0 or initialWalkSpeed * (run and (threatPart and 2.5 or behaviorConfig[behaviorName].Speed) or 1)
				stats.Stamina = run and stats.Stamina - 1 or math.min(100, stats.Stamina + 1)
			else stats.Tiredness = math.min(100, stats.Tiredness + 1) if stats.Tiredness > 95 and not sleepMode then hum.Jump = true end end
		end
	end)
	
	lookThread = task.spawn(function()
		local lastSay, stareTimer, cooldown = 0, 0, 0
		while active and hum and hum.Health > 0 do
			local target = nil local range = (behaviorName == "Observant") and 22 or 12
			if cooldown <= 0 then
				for _, p in ipairs(Players:GetPlayers()) do
					if p ~= player and p.Character then
						local dist = (p.Character:GetPivot().Position - root.Position).Magnitude
						if dist < range then target = p break end
					end
				end
			else cooldown = cooldown - 0.1 end
			currentTargetPlayer = target
			if target and not resting and not threatPart then
				stareTimer = stareTimer + 0.1 local maxStare = (behaviorName == "Observant") and 6 or 1.5
				if stareTimer < maxStare then
					hum.AutoRotate = false
					local lookPos = Vector3.new(target.Character:GetPivot().Position.X, root.Position.Y, target.Character:GetPivot().Position.Z)
					root.CFrame = root.CFrame:Lerp(CFrame.lookAt(root.Position, lookPos), 0.15)
					if tick() - lastSay > 15 then 
						local linesPool = isMean and behaviorConfig[behaviorName].MeanLines or behaviorConfig[behaviorName].Lines
						say(linesPool[math.random(1, #linesPool)], target.Name) 
						lastSay = tick() 
					end
				else hum.AutoRotate = true target, stareTimer, cooldown = nil, 0, (behaviorName == "Observant") and 5 or 12 end
			else hum.AutoRotate = true stareTimer = 0 end
			task.wait(0.1)
		end
	end)

	sensesThread = task.spawn(function()
		local lastSpeak = 0
		while active and hum and hum.Health > 0 do
			if head and root then
				local currentThought = "Wandering..."
				local speakTrigger, speakFormat = nil, nil
				
				local rayOrigin = head.Position
				local rayDirection = head.CFrame.LookVector * 150
				local params = RaycastParams.new()
				params.FilterDescendantsInstances = {char}
				params.FilterType = Enum.RaycastFilterType.Exclude
				local result = Workspace:Raycast(rayOrigin, rayDirection, params)
				
				if result and result.Instance then
					local hit = result.Instance
					local hitModel = hit:FindFirstAncestorOfClass("Model")
					local hitPlayer = hitModel and Players:GetPlayerFromCharacter(hitModel)
					
					if hitPlayer then
						currentThought = "Looking at " .. hitPlayer.Name
						if math.random(1, 15) == 1 then speakTrigger, speakFormat = hitPlayer.Name, (isMean and dialogs.Mean.SeePlayer or dialogs.Normal.SeePlayer) end
					else
						local gui = hit:FindFirstChildWhichIsA("SurfaceGui", true) or hit:FindFirstChildWhichIsA("BillboardGui", true)
						local readText = nil
						if gui then
							local label = gui:FindFirstChildWhichIsA("TextLabel", true) or gui:FindFirstChildWhichIsA("TextButton", true)
							if label and label.Text ~= "" and label.Text:match("%w") then readText = label.Text end
						end
						
						if readText then
							currentThought = "Reading text: " .. readText
							if math.random(1, 5) == 1 then speakTrigger, speakFormat = readText:sub(1, 20), (isMean and dialogs.Mean.Read or dialogs.Normal.Read) end
						else
							currentThought = "Analyzing object: " .. hit.Name
							if math.random(1, 30) == 1 then speakTrigger, speakFormat = hit.Name, (isMean and dialogs.Mean.SeeObject or dialogs.Normal.SeeObject) end
						end
					end
				end
				
				for _, v in pairs(Workspace:GetDescendants()) do
					if v:IsA("Sound") and v.IsPlaying and v.Parent and v.Parent:IsA("BasePart") then
						if (v.Parent.Position - root.Position).Magnitude < 60 then
							currentThought = "Hearing sound: " .. v.Name
							if math.random(1, 10) == 1 then speakTrigger, speakFormat = v.Name, (isMean and dialogs.Mean.Hear or dialogs.Normal.Hear) end
							break
						end
					end
				end
				
				stats.Mind = currentThought
				if speakTrigger and speakFormat and tick() - lastSpeak > 8 then
					lastSpeak = tick()
					say(string.format(speakFormat[math.random(1, #speakFormat)], speakTrigger))
				end
			end
			task.wait(1)
		end
	end)

	pathThread = task.spawn(function()
		while active and hum and hum.Health > 0 do
			if resting or isDancing then task.wait(1) continue end
			local goal = threatPart and findEscapePoint() or root.Position + Vector3.new(math.random(-100,100), 0, math.random(-100,100))
			local path = PathfindingService:CreatePath({AgentRadius = 4, AgentCanJump = true, AgentHeight = 5})
			path:ComputeAsync(root.Position, goal)
			if path.Status == Enum.PathStatus.Success then
				local waypoints = path:GetWaypoints()
				for i, wp in ipairs(waypoints) do
					if not active or resting or isDancing or (threatPart and i == 1) then break end
					if (root.Position - wp.Position).Magnitude > 350 then break end
					hum:MoveTo(wp.Position)
					if wp.Action == Enum.PathWaypointAction.Jump then hum.Jump = true end
					local ray = Ray.new(root.Position, root.CFrame.LookVector * 5)
					local hit = workspace:FindPartOnRayWithIgnoreList(ray, {char})
					if hit and (not hit:IsA("Seat") or stats.Tiredness > 30) then hum.Jump = true end
					local timeout = tick()
					repeat RunService.Heartbeat:Wait() until (root.Position - wp.Position).Magnitude < 4 or tick() - timeout > 4 or (root.Position - wp.Position).Magnitude > 350
				end
			end
			task.wait(threatPart and 0.1 or 0.5)
		end
	end)
end

tglB.MouseButton1Click:Connect(function()
	active = not active
	tglB.Text, tglB.BackgroundColor3 = active and "STOP AI" or "START AI", active and Color3.new(0.6,0,0) or Color3.new(0,0.6,0)
	if active then startNPC() else if statThread then task.cancel(statThread) task.cancel(pathThread) task.cancel(lookThread) task.cancel(sensesThread) end stats.Mind = "Offline" end
end)

lineB.MouseButton1Click:Connect(function() linesEnabled = not linesEnabled lineB.Text = linesEnabled and "TOGGLE LINES: ON" or "TOGGLE LINES: OFF" end)
meanB.MouseButton1Click:Connect(function() isMean = not isMean meanB.Text = isMean and "TOGGLE MEAN: ON" or "TOGGLE MEAN: OFF" end)
eatB.MouseButton1Click:Connect(function() stats.Hunger = 100 end)
drkB.MouseButton1Click:Connect(function() stats.Thirst = 100 end)
slpB.MouseButton1Click:Connect(function() sleepMode = not sleepMode if not sleepMode and hum.Sit then hum.Jump = true end end)
spdI.FocusLost:Connect(function() initialWalkSpeed = tonumber(spdI.Text) or 16 end)
jmpI.FocusLost:Connect(function() initialJumpPower = tonumber(jmpI.Text) or 50 hum.JumpPower = initialJumpPower end)
killB.MouseButton1Click:Connect(function() if hum then hum.Health = 0 end end)

local function setup(c)
	char, root, hum, head = c, c:WaitForChild("HumanoidRootPart"), c:WaitForChild("Humanoid"), c:WaitForChild("Head")
	hum.Seated:Connect(function(s) resting = s end)
	hum.UseJumpPower, lastHealth = true, hum.Health
	
	local poolSpawn = isMean and dialogs.Mean.Spawn or dialogs.Normal.Spawn
	say(poolSpawn[math.random(1, #poolSpawn)])
	
	hum.HealthChanged:Connect(function(h)
		if h < lastHealth and h > 0 then
			if not threatPart then
				local poolDmg = isMean and dialogs.Mean.Damage or dialogs.Normal.Damage
				say(poolDmg[math.random(1, #poolDmg)])
				local nearby = workspace:GetPartBoundsInRadius(root.Position, 15)
				for _, p in ipairs(nearby) do if p.CanTouch and not p:IsDescendantOf(char) then threatPart = p break end end
				task.delay(10, function() threatPart = nil end)
			end
		end
		lastHealth = h
	end)
	hum.Died:Connect(function()
		local poolDeath = isMean and dialogs.Mean.Death or dialogs.Normal.Death
		say(poolDeath[math.random(1, #poolDeath)])
		active = false tglB.Text, tglB.BackgroundColor3 = "START AI", Color3.new(0,0.6,0)
		stats.Mind = "Deceased"
		if statThread then task.cancel(statThread) task.cancel(pathThread) task.cancel(lookThread) task.cancel(sensesThread) end
	end)
	hum.StateChanged:Connect(function(_, state)
		if state == Enum.HumanoidStateType.Freefall then if not falling then falling, lastY = true, root.Position.Y end
		elseif state  == Enum.HumanoidStateType.Landed then if falling then falling = false local fallen = lastY - root.Position.Y if fallen > 20 then hum:TakeDamage((fallen - 20) * 5) end end end
	end)
end

player.CharacterAdded:Connect(setup)
if player.Character then setup(player.Character) end
