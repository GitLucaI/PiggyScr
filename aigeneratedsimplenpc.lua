local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Chat = game:GetService("TextChatService")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local char, root, hum, head
local targets = {}
local scannedObjects = {}

_G.activeAI = false
_G.useWatermark = true
_G.Language = "EN"

local stats = {
	Hunger = 100,
	Energy = 100,
	Mind = "Awaiting Initialization...",
	Awareness = 0,
	FocusTarget = "None"
}

local dialogs = {
	EN = {
		Hunger = {"System starving. Searching for nutrients.", "Glucose levels low. I need to consume.", "Internal hunger critical.", "Metabolism failing. Need food now."},
		Energy = {"Battery low. Systems entering sleep mode.", "Energy depleted. Need a resting spot.", "Fatigue detected in joints.", "Exhaustion level: 90%."},
		Math = {"Input: %s. Output: %s.", "Calculation complete. Result: %s.", "Logic dictates %s is %s.", "Simple equation. %s is %s."},
		Read = {"Signage detected: '%s'.", "Deciphering text... it says '%s'.", "Reading data: '%s'.", "Visual input confirmed: '%s'."},
		Hear = {"Acoustic anomaly: '%s'.", "Hearing vibrations from '%s'.", "Sound source identified: '%s'.", "Audio input registered: '%s'."},
		SeePlayer = {"Scanning biometric data: %s.", "Target %s is within visual range.", "I see you, %s. Movement logged.", "Observing %s. Behavior is erratic."},
		SeeObject = {"Visual hit on %s.", "Analyzing structure of %s.", "Object identified as %s.", "Scanning %s for utility."},
		Idle = {"Scanning for anomalies...", "Simulation clock: %s.", "Mind state: %s.", "Environment stable."},
		Reaction = {
			Jump = {"Gravity test successful, %s?", "Why are you jumping, %s?", "Vertical movement detected from %s."},
			Fast = {"%s is moving at high velocity.", "Velocity alert: %s is rushing.", "Why the hurry, %s?"}
		}
	},
	RO = {
		Hunger = {"Sistem înfometat. Caut nutrienți.", "Nivel glucoză scăzut. Trebuie să consum.", "Foame internă critică.", "Metabolism în eșec. Vreau mâncare."},
		Energy = {"Baterie descărcată. Intru în mod sleep.", "Energie epuizată. Caut loc de odihnă.", "Oboseală detectată în încheieturi.", "Nivel epuizare: 90%."},
		Math = {"Input: %s. Output: %s.", "Calcul complet. Rezultat: %s.", "Logica spune că %s e %s.", "Ecuație simplă. %s e %s."},
		Read = {"Semnalizare detectată: '%s'.", "Decriptez textul... scrie '%s'.", "Citesc datele: '%s'.", "Input vizual confirmat: '%s'."},
		Hear = {"Anomalie acustică: '%s'.", "Aud vibrații de la '%s'.", "Sursă sunet identificată: '%s'.", "Input audio înregistrat: '%s'."},
		SeePlayer = {"Scanez date biometrice: %s.", "Ținta %s e în raza vizuală.", "Te văd, %s. Mișcare înregistrată.", "Îl observ pe %s. Comportament haotic."},
		SeeObject = {"Contact vizual cu %s.", "Analizez structura %s.", "Obiect identificat drept %s.", "Scanez %s pentru utilitate."},
		Idle = {"Caut anomalii...", "Ceas simulare: %s.", "Stare mentală: %s.", "Mediu stabil."},
		Reaction = {
			Jump = {"Test de gravitate reușit, %s?", "De ce sari, %s?", "Mișcare verticală detectată la %s."},
			Fast = {"%s se mișcă cu viteză mare.", "Alertă viteză: %s se grăbește.", "De ce te grăbești, %s?"}
		}
	}
}

local function say(msg)
	if not _G.activeAI then return end
	local prefix = _G.useWatermark and ((_G.Language == "RO" and "[IA]: ") or "[AI]: ") or ""
	Chat.TextChannels.RBXGeneral:SendAsync(prefix .. msg)
end

local ui = Instance.new("ScreenGui", player.PlayerGui)
ui.Name = "GTA_OMNISCIENT_CORE"
ui.ResetOnSpawn = false

local main = Instance.new("Frame", ui)
main.Size, main.Position = UDim2.new(0, 300, 0, 550), UDim2.new(0, 50, 0.15, 0)
main.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
main.BorderSizePixel = 0
main.Active, main.Draggable = true
Instance.new("UICorner", main)

local grad = Instance.new("UIGradient", main)
grad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 40, 50)), ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 25))})

local title = Instance.new("TextLabel", main)
title.Size, title.Text = UDim2.new(1, 0, 0, 40), "ADVANCED OMNI-BEHAVIOR"
title.BackgroundColor3 = Color3.fromRGB(0, 255, 150)
title.TextColor3, title.Font, title.TextSize = Color3.new(0, 0, 0), Enum.Font.GothamBold, 16
Instance.new("UICorner", title)

local mFrame = Instance.new("Frame", main)
mFrame.Size, mFrame.Position = UDim2.new(1, -20, 0, 80), UDim2.new(0, 10, 0, 50)
mFrame.BackgroundColor3 = Color3.new(0,0,0)
mFrame.BackgroundTransparency = 0.5
Instance.new("UICorner", mFrame)

local mindLabel = Instance.new("TextLabel", mFrame)
mindLabel.Size, mindLabel.Position = UDim2.new(1, -10, 1, -10), UDim2.new(0, 5, 0, 5)
mindLabel.BackgroundTransparency = 1
mindLabel.TextColor3, mindLabel.Font, mindLabel.TextSize = Color3.new(0, 1, 0.8), Enum.Font.Code, 13
mindLabel.TextWrapped, mindLabel.TextXAlignment = true, Enum.TextXAlignment.Left
mindLabel.Text = "SYSTEM INITIALIZING..."

local sFrame = Instance.new("Frame", main)
sFrame.Size, sFrame.Position = UDim2.new(1, -20, 0, 60), UDim2.new(0, 10, 0, 140)
sFrame.BackgroundTransparency = 1

local function createBar(name, pos, color)
	local b = Instance.new("Frame", sFrame)
	b.Size, b.Position = UDim2.new(1, 0, 0, 15), UDim2.new(0, 0, 0, pos)
	b.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	local fill = Instance.new("Frame", b)
	fill.Size, fill.BackgroundColor3 = UDim2.new(1, 0, 1, 0), color
	fill.Name = name .. "Fill"
	local lbl = Instance.new("TextLabel", b)
	lbl.Size, lbl.Text = UDim2.new(1, 0, 1, 0), name:upper()
	lbl.BackgroundTransparency, lbl.TextColor3, lbl.Font, lbl.TextSize = 1, Color3.new(1,1,1), Enum.Font.Code, 10
	return fill
end

local hFill = createBar("Hunger", 0, Color3.fromRGB(200, 50, 50))
local eFill = createBar("Energy", 20, Color3.fromRGB(50, 150, 250))
local aFill = createBar("Awareness", 40, Color3.fromRGB(255, 200, 0))

local content = Instance.new("ScrollingFrame", main)
content.Size, content.Position = UDim2.new(1, -20, 1, -210), UDim2.new(0, 10, 0, 205)
content.BackgroundTransparency, content.CanvasSize = 1, UDim2.new(0, 0, 4, 0)
Instance.new("UIListLayout", content).Padding = UDim.new(0, 8)

local function btn(txt, callback, color)
	local b = Instance.new("TextButton", content)
	b.Size, b.BackgroundColor3 = UDim2.new(1, 0, 0, 38), color or Color3.fromRGB(40, 40, 45)
	b.Text, b.TextColor3, b.Font, b.TextSize = txt, Color3.new(1,1,1), Enum.Font.GothamBold, 14
	Instance.new("UICorner", b)
	b.MouseButton1Click:Connect(callback)
	return b
end

local startBtn
startBtn = btn("ACTIVATE AI SYSTEM: OFF", function()
	_G.activeAI = not _G.activeAI
	startBtn.Text = "SYSTEM: " .. (_G.activeAI and "ACTIVE" or "OFFLINE")
	startBtn.BackgroundColor3 = _G.activeAI and Color3.fromRGB(0, 180, 100) or Color3.fromRGB(40, 40, 45)
end)

local langBtn
langBtn = btn("DATA SET: ENGLISH", function()
	_G.Language = (_G.Language == "EN") and "RO" or "EN"
	langBtn.Text = "DATA SET: " .. (_G.Language == "EN" and "ENGLISH" or "ROMANIAN")
end)

btn("FORCE REPLENISH", function()
	stats.Hunger, stats.Energy, stats.Mind = 100, 100, "Forcing Stat Reset..."
end, Color3.fromRGB(150, 100, 0))

local listScroll = Instance.new("ScrollingFrame", content)
listScroll.Size, listScroll.CanvasSize = UDim2.new(1, 0, 0, 150), UDim2.new(0, 0, 8, 0)
listScroll.BackgroundColor3 = Color3.new(0,0,0)
Instance.new("UIListLayout", listScroll)

local function updateTargets()
	for _, v in pairs(listScroll:GetChildren()) do if v:IsA("TextButton") then v:Destroy() end end
	for _, p in ipairs(Players:GetPlayers()) do
		if p ~= player then
			local b = Instance.new("TextButton", listScroll)
			b.Size, b.Text = UDim2.new(1, 0, 0, 28), p.Name
			b.BackgroundColor3 = targets[p.Name] and Color3.new(0, 0.6, 0.3) or Color3.new(0.2, 0.2, 0.2)
			b.TextColor3, b.Font = Color3.new(1, 1, 1), Enum.Font.Code
			b.MouseButton1Click:Connect(function()
				targets[p.Name] = not targets[p.Name]
				b.BackgroundColor3 = targets[p.Name] and Color3.new(0, 0.6, 0.3) or Color3.new(0.2, 0.2, 0.2)
			end)
		end
	end
end
Players.PlayerAdded:Connect(updateTargets); Players.PlayerRemoving:Connect(updateTargets); updateTargets()

Chat.MessageReceived:Connect(function(tMsg)
	if not _G.activeAI or tMsg.TextSource.UserId == player.UserId then return end
	local clean = tMsg.Text:lower():gsub("[^%d%+%-%*%/%.%%%(%)]", "")
	if #clean >= 3 and clean:match("%d") then
		local func = loadstring("return " .. clean)
		if func then
			local s, r = pcall(func)
			if s and type(r) == "number" then
				local m = dialogs[_G.Language].Math
				say(string.format(m[math.random(1, #m)], clean, tostring(r)))
				stats.Mind = "Solving External Equation..."
			end
		end
	end
end)

local lastSpeak = 0
local function runSenses()
	if not _G.activeAI or not head or not root then return end
	
	stats.Hunger = math.max(0, stats.Hunger - 0.4)
	stats.Energy = math.max(0, stats.Energy - 0.2)
	stats.Awareness = math.random(60, 100)
	
	local currentThought = "Monitoring Workspace..."
	local speakTrigger, speakFormat = nil, nil
	
	local rayOrigin = head.Position
	local rayDirection = head.CFrame.LookVector * 200
	local params = RaycastParams.new()
	params.FilterDescendantsInstances = {char}
	params.FilterType = Enum.RaycastFilterType.Exclude
	
	local result = Workspace:Raycast(rayOrigin, rayDirection, params)
	
	if result and result.Instance then
		local hit = result.Instance
		local hitModel = hit:FindFirstAncestorOfClass("Model")
		local hitPlayer = hitModel and Players:GetPlayerFromCharacter(hitModel)
		
		if hitPlayer then
			currentThought = "Identifying Entity: " .. hitPlayer.Name
			if math.random(1,5) == 1 then
				speakTrigger, speakFormat = hitPlayer.Name, dialogs[_G.Language].SeePlayer
			end
			local pHum = hitModel:FindFirstChild("Humanoid")
			if pHum and pHum.MoveDirection.Magnitude > 0.1 and math.random(1,20) == 1 then
				speakTrigger, speakFormat = hitPlayer.Name, dialogs[_G.Language].Reaction.Fast
			end
		else
			local gui = hit:FindFirstChildWhichIsA("SurfaceGui", true) or hit:FindFirstChildWhichIsA("BillboardGui", true)
			local readText = nil
			if gui then
				local label = gui:FindFirstChildWhichIsA("TextLabel", true) or gui:FindFirstChildWhichIsA("TextButton", true)
				if label and label.Text ~= "" and label.Text:match("%w") then readText = label.Text end
			end
			
			if readText then
				currentThought = "Processing Text: " .. readText
				speakTrigger, speakFormat = readText:sub(1, 20), dialogs[_G.Language].Read
			else
				currentThought = "Analyzing Geometry: " .. hit.Name
				if math.random(1, 30) == 1 then
					speakTrigger, speakFormat = hit.Name, dialogs[_G.Language].SeeObject
				end
			end
		end
	end
	
	local loudSound = nil
	for _, v in pairs(Workspace:GetDescendants()) do
		if v:IsA("Sound") and v.IsPlaying and v.Parent and v.Parent:IsA("BasePart") then
			if (v.Parent.Position - root.Position).Magnitude < 80 then
				loudSound = v.Name
				break
			end
		end
	end
	
	if loudSound then
		currentThought = "Audio Inflow: " .. loudSound
		if math.random(1, 10) == 1 then speakTrigger, speakFormat = loudSound, dialogs[_G.Language].Hear end
	end
	
	if stats.Hunger < 15 then
		currentThought = "EMERGENCY: STARVATION"
		speakTrigger, speakFormat = "", dialogs[_G.Language].Hunger
	elseif stats.Energy < 15 then
		currentThought = "EMERGENCY: EXHAUSTION"
		speakTrigger, speakFormat = "", dialogs[_G.Language].Energy
	end
	
	stats.Mind = currentThought
	
	if speakTrigger and speakFormat and tick() - lastSpeak > 7 then
		lastSpeak = tick()
		local phrase = speakFormat[math.random(1, #speakFormat)]
		say(speakTrigger ~= "" and string.format(phrase, speakTrigger) or phrase)
	end
end

RunService.Heartbeat:Connect(function()
	hFill.Size = UDim2.new(stats.Hunger/100, 0, 1, 0)
	eFill.Size = UDim2.new(stats.Energy/100, 0, 1, 0)
	aFill.Size = UDim2.new(stats.Awareness/100, 0, 1, 0)
	mindLabel.Text = "> MIND: " .. stats.Mind .. "\n> FOCUS: " .. stats.FocusTarget
end)

task.spawn(function()
	while task.wait(1.5) do
		if _G.activeAI then runSenses() end
	end
end)

local function setup(c)
	char, root, hum, head = c, c:WaitForChild("HumanoidRootPart"), c:WaitForChild("Humanoid"), c:WaitForChild("Head")
end
player.CharacterAdded:Connect(setup); if player.Character then setup(player.Character) end
