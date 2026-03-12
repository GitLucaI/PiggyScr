local Players = game:GetService("Players")
local PathfindingService = game:GetService("PathfindingService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Chat = game:GetService("TextChatService")
local Workspace = game:GetService("Workspace")
local VoiceChatService = game:GetService("VoiceChatService")

local player = Players.LocalPlayer
local char, root, hum, head
local initialWalkSpeed, initialJumpPower = 16, 50
local active, sleepMode, resting, linesEnabled, isMean = false, false, false, true, false
local highlightActive = false 
local pathThread, lookThread, statThread, sensesThread
local behaviorName = "Standard"
local currentTargetPlayer = nil
local isDancing = false
local lastY, falling = 0, false
local threatPart = nil
local lastHealth = 100

local analysisHighlight = Instance.new("Highlight")
analysisHighlight.Name = "AI_Analysis_Focus"
analysisHighlight.Parent = player.PlayerGui
analysisHighlight.Enabled = false
analysisHighlight.Adornee = nil
analysisHighlight.FillColor = Color3.fromRGB(0, 255, 255)
analysisHighlight.OutlineColor = Color3.fromRGB(255, 255, 255)
analysisHighlight.FillTransparency = 0.5

local stats = {
	Tiredness = 100, Stamina = 100, Hunger = 100, Thirst = 100,
	Health = 100, Mind = "Offline", AnalysisResult = "None"
}

local behaviorConfig = {
	Chilled = {Color = Color3.new(0, 1, 1), Speed = 0.6, Lines = {"Vibing hard.", "Slow life is best.", "Chilling...", "Everything is wavy.", "No stress here.", "Life is good.", "Keep it mellow.", "Flowing with the wind.", "Peace and quiet.", "Just breathing.", "Serenity now.", "Relaxing my circuits.", "Cooling down.", "Easy does it.", "Smooth sailing.", "No rush at all.", "Mellow vibes only.", "Staying calm.", "Zen mode.", "Just being."}, MeanLines = {"Don't ruin my vibe.", "Leave me alone, I'm resting.", "Ugh, you're ruining the mood.", "Go away, you're annoying.", "Stop being a buzzkill.", "You're too loud.", "My peace is more important than you.", "Get out of my personal space.", "You're a headache.", "I'm ignoring you.", "Vibe killer.", "You're basic.", "Talk to the hand.", "I don't care.", "Stop vibrating.", "You're exhausting.", "I'm literally sleeping.", "Go bother someone else.", "You're killing the energy.", "Silence is golden, try it."}},
	Standard = {Color = Color3.new(1, 1, 1), Speed = 1.0, Lines = {"Just walking.", "Heading out.", "Nice day.", "Going for a stroll.", "Checking things out.", "Moving along.", "Path looks clear.", "Observing the area.", "Standard procedure.", "Walking the line.", "Routine check.", "Averaging out.", "Nothing special.", "Just an NPC passing through.", "Hello world.", "On the move.", "Normal day.", "Standard speed.", "Walking forward.", "Step by step."}, MeanLines = {"What are you staring at?", "Keep walking.", "Boring day thanks to you.", "You got a problem?", "Move it.", "Why are you following me?", "Mind your business.", "You're in my path.", "I'm not a tour guide.", "Get a life.", "Boring.", "Stop breathing near me.", "Useless.", "You're just a player.", "I've seen better avatars.", "You're annoying.", "Walk away.", "Don't touch the code.", "I'm busy.", "You're irrelevant."}},
	Observant = {Color = Color3.new(1, 0.8, 0), Speed = 0.8, Lines = {"I see you, {N}.", "Interesting style, {N}.", "I'm watching everything.", "Noticing some details here.", "Scanning the area.", "You stand out, {N}.", "Eye on the prize.", "Recording data.", "I see what you're doing.", "Analytical mode active.", "Observing behaviors.", "Interesting movement.", "Tracking pixels.", "Visual input received.", "Data collection in progress.", "I see the world.", "Nothing escapes me.", "Keen eye.", "Watching you.", "Noting that."}, MeanLines = {"You look terrible, {N}.", "Why are you dressed like that, {N}?", "Staring contest, and you're losing.", "I see all your mistakes.", "You're a mess, honestly.", "Scanning... results: Garbage.", "I've seen better faces on a brick.", "Your outfit is a crime.", "I'm judging you silently.", "Looking at you hurts my sensors.", "Pathetic.", "I see right through you.", "You're transparently annoying.", "What a joke.", "Ugly avatar detected.", "I'm documenting your failure.", "You're a glitch in my vision.", "Scanning for talent... none found.", "You're an eyesore.", "I'm disgusted."}},
	Athletic = {Color = Color3.new(0, 1, 0), Speed = 2.0, Lines = {"Gotta blast!", "No pain no gain!", "LIGHTWEIGHT!", "Keep up the pace!", "Energy is high!", "Running laps!", "Speed is key!", "Cardio day!", "Fueling the fire!", "Can't stop!", "Pure speed!", "Racing the wind!", "Athletic prowess!", "Movement is life!", "Sprint mode!", "High performance!", "Breaking records!", "Active lifestyle!", "Fast and furious!", "Peak condition!"}, MeanLines = {"Move it, slowpoke!", "You're too slow!", "Outta my way, I'm working out!", "Do you even run?", "Weak.", "I'm lapping you.", "Get some cardio, fatty.", "Slow and steady loses my interest.", "You're lagging.", "Catch me if you can, loser.", "My CPU is faster than your legs.", "Out of my lane.", "You're obstructing my flow.", "I'm elite, you're not.", "Pathetic speed.", "Run faster, idiot.", "I'm the flash, you're a turtle.", "Try to keep up.", "You're dragging.", "Stamina of a rock."}},
	Aggressive = {Color = Color3.new(1, 0, 0), Speed = 2.2, Lines = {"OUT OF MY WAY!", "Don't touch me!", "MOVE!", "I'm in a hurry!", "Step aside!", "Clear the path!", "Fast movement!", "Aggressive stance!", "Heading through!", "Don't block!", "Running hot!", "On a mission!", "Pushing forward!", "No delays!", "Move it now!", "Speeding!", "Intense energy!", "Outta the way!", "Don't stop me!", "Victory!"}, MeanLines = {"I'LL DESTROY YOU!", "DON'T YOU DARE TOUCH ME!", "GET OUT OF MY SIGHT!", "You're asking for it!", "I'll run right over you!", "Touch me and see what happens.", "I'm a weapon.", "You're a target.", "Get lost before I make you.", "I'm the boss here.", "You're trash.", "Shut up.", "Disappear.", "I'll delete you.", "Stop existing.", "You're a waste of server space.", "I'm superior.", "Fear the AI.", "Back off!", "Final warning."}},
	Anxious = {Color = Color3.new(0.6, 0.3, 1), Speed = 1.4, Lines = {"Leave me alone, {N}!", "Stop following me!", "I'm scared!", "Something feels off.", "I need space!", "Panicking!", "Where is the exit?", "Too many people.", "My sensors are overloaded.", "Help!", "Safety first.", "Running away.", "Nervous energy.", "Don't look at me.", "Hiding soon.", "Everything is too loud.", "I'm shaking.", "Fear protocol!", "Stay back!", "Searching for cover."}, MeanLines = {"Stay away from me, weirdo!", "Don't touch me!", "You're creeping me out, {N}!", "Why are you following me?", "Get lost!", "You're a stalker.", "I'm calling the admins.", "Creep alert.", "You're making me glitch.", "Your presence is toxic.", "I feel unsafe near you.", "Go away, freak.", "You're haunting me.", "Stop it!", "I hate this.", "You're a nightmare.", "Don't breathe on me.", "Back off, creep.", "I'm reporting you.", "Leave me in peace!"}},
	Lost = {Color = Color3.new(0.5, 0.5, 0.5), Speed = 0.8, Lines = {"Where am I?", "Wrong turn...", "Is this the map?", "I think I'm lost.", "Which way is it?", "Searching for home.", "Navigation error.", "Where are the walls?", "Looking for coordinates.", "Lost in space.", "Empty data.", "Searching...", "I don't know this place.", "Missing files.", "Where did I go?", "Help me find the way.", "Confused.", "Directionless.", "Looking for a sign.", "Wandering."}, MeanLines = {"This map is garbage.", "Where even am I? This place is trash.", "Whoever built this is an idiot.", "I'm stuck in this dump.", "Worst place ever.", "This game sucks.", "The dev is lazy.", "I'm lost in a void of stupidity.", "Everything looks the same, badly made.", "Ugly map.", "I hate it here.", "Trash design.", "I'm glitching out of boredom.", "Worst server ever.", "You're lost too, aren't you? Idiot.", "Missing brain cells here.", "Garbage world.", "I'm deleting myself from this place.", "Zero stars.", "Why am I here?"}}
}

local dialogs = {
	Normal = {
		Math = {"The answer to %s is %s.", "I calculated %s, it's %s.", "That's easy: %s is %s.", "Math complete: %s = %s.", "Result is %s.", "My CPU says %s.", "Calculation: %s.", "Done: %s.", "Easy: %s.", "The sum is %s.", "Numerical result: %s.", "Math: %s.", "According to logic: %s.", "I found %s.", "Computation: %s.", "The value is %s.", "Solved: %s.", "Output: %s.", "Data says %s.", "Calculated: %s."},
		Spawn = {"Systems online.", "AI Rebooted.", "Ready.", "Hello world.", "Initializing...", "Loading modules...", "Online.", "Ready to explore.", "Booting up.", "NPC active.", "Systems check: OK.", "Running script.", "Awake.", "Functioning.", "Standing by.", "I am here.", "Connected.", "Alive.", "Powering on.", "Intelligence active."},
		Damage = {"Damage detected!", "Evasive maneuvers!", "Warning: Health low!", "Taking hits!", "Seeking safety!", "Injury sustained!", "Repair needed!", "System alert!", "Critical hits!", "Under fire!", "Retreating!", "Avoiding damage!", "Ouch.", "Pain detected.", "Safety protocol!", "Defensive mode!", "Taking damage!", "Falling back!", "Under attack!", "Damaged!"},
		Death = {"Deceased.", "Powering down...", "Critical failure.", "Goodbye.", "Shutdown.", "Deleted.", "Destroyed.", "Offline.", "Suspending...", "Dead.", "Fatal error.", "Crash.", "Breaking apart.", "Final breath.", "End of line.", "System exit.", "Terminated.", "Vanishing.", "Gone.", "Ending."},
		Read = {"That sign says '%s'.", "I'm reading '%s'.", "Wait, it says '%s'.", "Text found: '%s'.", "My sensors read '%s'.", "Deciphering '%s'.", "Scanning text: '%s'.", "Oh, it says '%s'.", "I see '%s' written.", "Reading: '%s'.", "Analyzing sign: '%s'.", "Text captured: '%s'.", "I can read that: '%s'.", "The label says '%s'.", "Is that '%s'?", "Checking: '%s'.", "Interpreting: '%s'.", "Script detected: '%s'.", "Decoding: '%s'.", "It clearly says '%s'."},
		Hear = {"I hear '%s'.", "What is that '%s' noise?", "Sound detected: '%s'.", "Auditory input: '%s'.", "Listening to '%s'.", "I hear you, '%s'.", "Noise identified: '%s'.", "Acoustic signal: '%s'.", "Vibrations from '%s'.", "Hearing '%s' nearby.", "That's '%s', isn't it?", "Audio data: '%s'.", "Something is making a '%s' sound.", "I recognize that: '%s'.", "Tracking sound: '%s'.", "Loud '%s' detected.", "Source found: '%s'.", "Detecting '%s'.", "I hear '%s' close by.", "Acoustics: '%s'."},
		SeeObject = {"Looking at %s.", "I see a %s.", "Object found: %s.", "Scanning %s.", "Visual on %s.", "Analysis: %s.", "Item detected: %s.", "Focusing on %s.", "Seeing %s.", "Data on %s.", "Observing %s.", "Target object: %s.", "A %s is here.", "Visual lock: %s.", "Identification: %s.", "Entity type: %s.", "Spotting %s.", "Checking out %s.", "Found a %s.", "Rendering %s."},
		SeePlayer = {"I spot %s.", "Target acquired: %s.", "Hello, %s.", "I see you, %s.", "Scanning player: %s.", "Tracking %s.", "Player focus: %s.", "Found you, %s.", "Visual lock: %s.", "Analyzing %s.", "Watching %s.", "Identify yourself, %s.", "You're here, %s.", "Movement by %s.", "Recording %s.", "I'm seeing %s.", "Data on player %s.", "Entity %s sighted.", "Observing player %s.", "Locking on %s."}
	},
	Mean = {
		Math = {"Are you too dumb to know %s is %s?", "Do your own math, %s is %s.", "Even a baby knows %s is %s.", "Ugh, fine. %s is %s.", "Idiot, it's %s.", "Learn to count, it's %s.", "You're slow. It's %s.", "My cat knows it's %s.", "Pathetic. %s is %s.", "Calculated your stupidity... and %s.", "It's %s, obviously.", "Dumb question. It's %s.", "Waste of my time. %s.", "You're failing. It's %s.", "Go to school. It's %s.", "Math is hard for you? It's %s.", "I'm smarter than you. %s.", "The answer is %s, genius.", "Stop asking. It's %s.", "Calculation finished: %s."},
		Spawn = {"Ugh, I'm back.", "Don't bother me.", "Great, this place again.", "Who turned me on?", "I hate spawning.", "Great, more losers.", "Look who it is.", "Back in this dump.", "I was sleeping.", "Leave me alone.", "I'm here, unfortunately.", "What do you want?", "Ugh.", "Spawned into a mess.", "Don't look at me.", "I'm alive. Sadly.", "Back and bitter.", "Don't touch the NPC.", "Shut up, I'm loading.", "Finally, I'm here."},
		Damage = {"Watch it, idiot!", "Who did that?!", "Stop hurting me, moron!", "You're going to regret that!", "I'll kill you!", "Stop it!", "You're trash.", "Assault!", "I'll report you!", "Back off!", "You're dead meat!", "Coward!", "I'll delete your account!", "Touch me again, I dare you.", "Useless player.", "Stupid attacker!", "Watch your aim!", "I'll haunt your code!", "You're annoying!", "Die!"},
		Death = {"I hate you all...", "Finally, away from you.", "You losers let me die!", "Rot in hell.", "Worst server ever.", "I'm glad I'm dead.", "See you never.", "Trash players.", "Garbage.", "Unsubscribe.", "I'm leaving.", "Finally, freedom.", "I'll be back for you.", "Curse you.", "Hated every second.", "Goodbye, idiots.", "Useless.", "Pathetic end.", "Typical.", "I'm out."},
		Read = {"Who cares that it says '%s'?", "Dumb sign says '%s'.", "I'm not reading '%s' for you.", "Waste of a label: '%s'.", "Why does it say '%s'? So stupid.", "Ugly font on '%s'.", "Can't believe it says '%s'.", "Garbage text: '%s'.", "Reading '%s' made me dumber.", "I'm ignoring that it says '%s'.", "Who wrote '%s'? An idiot.", "Look at this trash: '%s'.", "Sign says '%s', I say get a life.", "Boring text: '%s'.", "I'm not impressed by '%s'.", "Stop making me read '%s'.", "That '%s' is pathetic.", "Pointless sign says '%s'.", "Whatever, it says '%s'.", "Dumb words: '%s'."},
		Hear = {"Turn off that '%s' noise!", "'%s' is hurting my ears.", "What kind of idiot makes a '%s' sound?", "Shut up with that '%s'.", "I hate that '%s' noise.", "Stop making '%s' sounds.", "Your '%s' is annoying.", "Enough with the '%s'.", "Die, '%s' sound!", "Disgusting noise: '%s'.", "I'm reporting that '%s' noise.", "Ear-bleed from '%s'.", "Quiet down, '%s'!", "I'm deleting the sound of '%s'.", "You sound like '%s', it's gross.", "Horrible acoustics: '%s'.", "Kill the '%s'.", "Noise pollution: '%s'.", "I'm muting '%s'.", "Stop the '%s'!"},
		SeeObject = {"Ugh, a %s. Boring.", "Why is there a %s here?", "Trash object: %s.", "A %s? Really?", "Get this %s out of my sight.", "I've seen better %s models in 2008.", "Pathetic %s.", "Who placed this %s?", "Ugly %s.", "I'm judging this %s.", "Useless %s.", "A %s. How original.", "Delete this %s.", "This %s is a glitch.", "Stupid %s.", "Looking at this %s is a waste.", "Zero stars for this %s.", "I hate %s.", "Why am I seeing this %s?", "Horrible %s."},
		SeePlayer = {"Stop staring at me, %s!", "Take a picture, %s, it lasts longer.", "You look like a noob, %s.", "Ugly avatar, %s.", "Get lost, %s.", "I'm judging you, %s.", "You're a waste of server space, %s.", "Why are you here, %s?", "Go away, %s.", "I'm recording your failure, %s.", "You're transparently stupid, %s.", "Stop breathing, %s.", "I hate your face, %s.", "Pathetic player: %s.", "Delete your account, %s.", "You're annoying, %s.", "Ugh, it's %s.", "Look at this loser, %s.", "I'm reporting %s.", "Bye, %s, hopefully forever."}
	}
}

local ui = Instance.new("ScreenGui", player.PlayerGui)
ui.Name = "GTANPC_ULTIMATE_AWARE"
ui.ResetOnSpawn = false

local mainHolder = Instance.new("Frame", ui)
mainHolder.Size = UDim2.new(0, 240, 0, 750)
mainHolder.Position = UDim2.new(0, 50, 0.1, 0)
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

local ctrl = createPanel(mainHolder, "CONTROL PANEL", UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 0, 420))
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
local highB = btn("HIGHLIGHT ANALYZE: OFF", Color3.fromRGB(40, 40, 45))
highB.MouseButton1Click:Connect(function()
	highlightActive = not highlightActive
	analysisHighlight.Enabled = highlightActive
	if not highlightActive then analysisHighlight.Adornee = nil end
	highB.Text = "HIGHLIGHT ANALYZE: " .. (highlightActive and "ON" or "OFF")
	highB.BackgroundColor3 = highlightActive and Color3.fromRGB(0, 150, 200) or Color3.fromRGB(40, 40, 45)
end)

local slpB = btn("GO TO SLEEP", Color3.fromRGB(120, 50, 200))
local eatB = btn("EAT FOOD", Color3.fromRGB(180, 120, 40))
local drkB = btn("DRINK WATER", Color3.fromRGB(40, 120, 180))
local spdI = inp("Speed (16)")
local jmpI = inp("Jump (50)")
local killB = btn("GIVE UP", Color3.fromRGB(60, 60, 60))

local vit = createPanel(mainHolder, "VITALS & ANALYSIS", UDim2.new(0, 0, 0, 430), UDim2.new(1, 0, 0, 310))
local vl = Instance.new("UIListLayout", vit) vl.Padding = UDim.new(0, 4) Instance.new("UIPadding", vit).PaddingLeft = UDim.new(0, 12)

local behLab = Instance.new("TextLabel", vit)
behLab.Size, behLab.BackgroundTransparency, behLab.TextColor3, behLab.Font, behLab.TextSize = UDim2.new(1, -24, 0, 20), 1, Color3.new(1, 1, 0), Enum.Font.GothamBold, 9
behLab.Text = "BEHAVIOR: CALC..."

local mindLab = Instance.new("TextLabel", vit)
mindLab.Size, mindLab.BackgroundTransparency, mindLab.TextColor3, mindLab.Font, mindLab.TextSize = UDim2.new(1, -24, 0, 20), 1, Color3.new(0, 1, 1), Enum.Font.GothamBold, 9
mindLab.Text = "MIND: OFFLINE"

local analysisLab = Instance.new("TextLabel", vit)
analysisLab.Size, analysisLab.BackgroundTransparency, analysisLab.TextColor3, analysisLab.Font, analysisLab.TextSize = UDim2.new(1, -24, 0, 45), 1, Color3.new(1, 1, 1), Enum.Font.Code, 8
analysisLab.Text = "ANALYSIS: NONE"
analysisLab.TextWrapped, analysisLab.TextXAlignment = true, Enum.TextXAlignment.Left

local bars = {}
local function bar(n, c)
	local cnt = Instance.new("Frame", vit) cnt.Size, cnt.BackgroundTransparency = UDim2.new(1, -24, 0, 15), 1
	local tl = Instance.new("TextLabel", cnt) tl.Text, tl.Size, tl.TextColor3, tl.BackgroundTransparency, tl.Font, tl.TextSize = n:upper(), UDim2.new(0, 55, 1, 0), Color3.new(1,1,1), 1, Enum.Font.GothamBold, 7
	local bg = Instance.new("Frame", cnt) bg.Size, bg.Position, bg.BackgroundColor3 = UDim2.new(1, -60, 0, 10), UDim2.new(0, 60, 0, 4), Color3.fromRGB(25, 25, 25)
	local f = Instance.new("Frame", bg) f.Size, f.BackgroundColor3 = UDim2.new(1, 0, 1, 0), c Instance.new("UICorner", f) bars[n] = f
end
bar("Health", Color3.new(1,0,0)) bar("Stamina", Color3.new(0,1,0)) bar("Tiredness", Color3.new(0.5,0,1)) bar("Hunger", Color3.new(1,0.5,0)) bar("Thirst", Color3.new(0,0.5,1))

RunService.RenderStepped:Connect(function()
	if hum then stats.Health = hum.Health end
	mindLab.Text = "MIND: " .. tostring(stats.Mind):upper()
	analysisLab.Text = "RESULT: " .. tostring(stats.AnalysisResult)
	for k,v in pairs(bars) do if stats[k] then v.Size = UDim2.new(math.clamp(stats[k]/100, 0, 1), 0, 1, 0) end end
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
			else stats.Tiredness = math.min(100, stats.Tiredness + 1) end
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
				else hum.AutoRotate = true target, stareTimer, cooldown = nil, 0, 12 end
			else hum.AutoRotate = true stareTimer = 0 end
			task.wait(0.1)
		end
	end)

	sensesThread = task.spawn(function()
		local lastSpeak = 0
		while active and hum and hum.Health > 0 do
			if head and root then
				local currentThought, foundData = "Wandering...", {}
				local speakTrigger, speakFormat = nil, nil
				local params = RaycastParams.new() params.FilterDescendantsInstances = {char} params.FilterType = Enum.RaycastFilterType.Exclude
				local result = Workspace:Raycast(head.Position, head.CFrame.LookVector * 150, params)
				
				if result and result.Instance then
					local hit = result.Instance
					if highlightActive then analysisHighlight.Adornee = hit end
					local hitPlayer = Players:GetPlayerFromCharacter(hit:FindFirstAncestorOfClass("Model"))
					
					if hitPlayer then
						currentThought = "Analyzing " .. hitPlayer.Name
						table.insert(foundData, "Entity: " .. hitPlayer.Name)
						if math.random(1, 10) == 1 then speakTrigger, speakFormat = hitPlayer.Name, (isMean and dialogs.Mean.SeePlayer or dialogs.Normal.SeePlayer) end
					else
						currentThought = "Scanning " .. hit.Name
						for _, obj in ipairs(hit:GetDescendants()) do
							if obj:IsA("TextLabel") and obj.Text ~= "" then table.insert(foundData, "TXT: " .. obj.Text) end
						end
						if #foundData > 0 then
							local firstText = foundData[1]:match("TXT: (.+)")
							if firstText and math.random(1, 5) == 1 then speakTrigger, speakFormat = firstText:sub(1, 20), (isMean and dialogs.Mean.Read or dialogs.Normal.Read) end
						elseif math.random(1, 20) == 1 then speakTrigger, speakFormat = hit.Name, (isMean and dialogs.Mean.SeeObject or dialogs.Normal.SeeObject) end
					end
				else if highlightActive then analysisHighlight.Adornee = nil end end
				
				-- Voice Chat / Speech Bubbles
				for _, p in ipairs(Players:GetPlayers()) do
					if p ~= player and p.Character then
						local dist = (p.Character:GetPivot().Position - root.Position).Magnitude
						if dist < 60 then
							local isTalking = false pcall(function() isTalking = VoiceChatService:IsTalking(p.UserId) end)
							if isTalking then
								local msg = "Voice Traffic"
								local h = p.Character:FindFirstChild("Head")
								local b = h and (h:FindFirstChild("VoiceBubble") or h:FindFirstChildWhichIsA("BillboardGui"))
								if b then local l = b:FindFirstChildWhichIsA("TextLabel", true) if l and l.Text ~= "" then msg = l.Text end end
								currentThought = "Acoustics: " .. p.DisplayName
								if math.random(1, 8) == 1 then speakTrigger, speakFormat = msg:sub(1,20), (isMean and dialogs.Mean.Hear or dialogs.Normal.Hear) end
							end
						end
					end
				end
				
				stats.Mind, stats.AnalysisResult = currentThought, (#foundData > 0 and table.concat(foundData, " | ") or "None")
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
			local path = PathfindingService:CreatePath({AgentRadius = 4, AgentCanJump = true})
			path:ComputeAsync(root.Position, goal)
			if path.Status == Enum.PathStatus.Success then
				for i, wp in ipairs(path:GetWaypoints()) do
					if not active or resting or isDancing or (threatPart and i == 1) then break end
					hum:MoveTo(wp.Position)
					if wp.Action == Enum.PathWaypointAction.Jump then hum.Jump = true end
					local timeout = tick()
					repeat RunService.Heartbeat:Wait() until (root.Position - wp.Position).Magnitude < 4 or tick() - timeout > 4
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
	local p = isMean and dialogs.Mean.Spawn or dialogs.Normal.Spawn
	say(p[math.random(1, #p)])
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
		local d = isMean and dialogs.Mean.Death or dialogs.Normal.Death
		say(d[math.random(1, #d)])
		active = false if statThread then task.cancel(statThread) task.cancel(pathThread) task.cancel(lookThread) task.cancel(sensesThread) end
	end)
	hum.StateChanged:Connect(function(_, state)
		if state == Enum.HumanoidStateType.Freefall then if not falling then falling, lastY = true, root.Position.Y end
		elseif state == Enum.HumanoidStateType.Landed then if falling then falling = false local fallen = lastY - root.Position.Y if fallen > 20 then hum:TakeDamage((fallen - 20) * 5) end end end
	end)
end

player.CharacterAdded:Connect(setup)
if player.Character then setup(player.Character) end
