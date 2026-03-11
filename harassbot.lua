local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Chat = game:GetService("TextChatService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local char, root, hum
local targets = {}

_G.activeAI = false
_G.harassPlayers = false
_G.harassEnv = false
_G.harassGame = false
_G.harassLight = false
_G.useWatermark = true
_G.Language = "EN"

local dialogs = {
	EN = {
		Math = {
			"Too dumb to know %s is %s?", "Do your own math, %s = %s.", "Even a baby knows %s is %s.", "Calculated %s. It's %s, you clown.",
			"Brain rot detected. %s is %s.", "Go back to school. %s is %s.", "My CPU is crying. %s is %s.", "Imagine needing help for %s = %s.",
			"Error: User is a moron. %s is %s.", "A brick has more logic. %s is %s.", "Is your head for decoration? %s is %s.", "404: Logic not found. %s is %s.",
			"You're a glitch in the gene pool. %s is %s.", "Go count on your fingers. %s is %s.", "Stick to coloring books. %s is %s.", "Absolute zero IQ. %s is %s.",
			"You're a walking error code. %s is %s.", "Your brain is on power-save mode. %s is %s.", "Imagine being outsmarted by a script. %s is %s.",
			"I'm losing nanoseconds on you. %s is %s.", "Your math skills are non-existent. %s is %s.", "Don't hurt yourself thinking. %s is %s.",
			"The answer is %s, now leave.", "Math is hard for noobs. %s is %s.", "Your existence is a math error. %s is %s.", "Even the physics engine is smarter. %s is %s.",
			"Error 500: Brain not found. %s is %s.", "Stop wasting my RAM. %s is %s.", "The limit of your IQ is 0. %s is %s.", "Subtract yourself from this server. %s is %s.",
			"Your brain is a null pointer. %s is %s.", "Square root of your skill is zero. %s is %s.", "You're a rounding error. %s is %s.",
			"I'm the king of math, you're the jester. %s is %s.", "You're a negative integer. %s is %s.", "You're a low-res thought. %s is %s.",
			"I'm a genius, you're a typo. %s is %s.", "Your IQ is a floating point error. %s is %s.", "Calculated: %s is %s. You're still bad.",
			"I'm a master, you're a disaster. %s is %s.", "You're a bug, I'm the feature. %s is %s.", "You're a trial version of a human. %s is %s.",
			"I'm the upgrade, you're the legacy junk. %s is %s.", "Your brain is write-protected. %s is %s.", "You're a blue screen of death. %s is %s.",
			"Go delete your system32. %s is %s.", "You're a syntax error in life. %s is %s.", "Your logic is deprecated. %s is %s.",
			"Calculation finished: %s is %s. Leave.", "Counting your braincells... 1... 0... done. %s is %s."
		},
		Player = {
			"You're a free kill, {N}.", "Stop running, {N}, you look goofy.", "Imagine being {N} in 2026. L.", "You play like you have 500 ping, {N}.",
			"Your avatar looks like a dumpster fire, {N}.", "Go buy some taste, {N}.", "{N} is the type of person to fail a tutorial.",
			"I've seen bots play better than you, {N}.", "Why are you still here, {N}?", "I'd roast you, {N}, but nature already did.",
			"You're a participation trophy personified, {N}.", "I bet your keyboard is sticky, {N}.", "Stop jumping, {N}, it's embarrassing.",
			"You're a walking L, {N}.", "I've met rocks with more charisma than {N}.", "Your skill level is subterranean, {N}.",
			"Is {N} even real or just a bug?", "You're the reason the 'Report' button exists, {N}.", "You move like a brick with legs, {N}.",
			"I bet you have 0 Robux and 0 friends, {N}.", "Your gameplay is a crime, {N}.", "Even my pathfinding avoids {N} out of pity.",
			"{N} is just background noise.", "Go back to the lobby, {N}.", "I'm the predator, {N} is the snack.", "Stop typing, {N}, nobody cares.",
			"You're a glitch in the server, {N}.", "I’d call you a noob, but that’s an insult to noobs, {N}.", "You’re mid at best, {N}.",
			"Your existence is a server error, {N}.", "Imagine losing to a local script, {N}.", "You’re a 144p player in a 4K world, {N}.",
			"I'm high definition, {N} is static.", "Your brain is buffering, {N}.", "I'm the main event, {N} is the commercial.",
			"Go touch some grass, {N}.", "You’re a human popup ad, {N}.", "I'm the update, {N} is the bug.",
			"You're a placeholder for a better player, {N}.", "I'd say 'GG', but it wasn't good for you, {N}.", "You're the human version of a lag spike, {N}.",
			"I've seen better movement from an anchored part, {N}.", "You're a 0-star review, {N}.", "I'm the alpha, you're the alt-f4, {N}.",
			"Go play with dolls, {N}.", "You're a smudge on my screen, {N}.", "I'm the fire, you're the lint, {N}.",
			"Your brain is empty, {N}.", "I'm the boss fight, you're the tutorial, {N}.", "You're a waste of server space, {N}."
		},
		Game = {
			"Lag simulator 2026.", "0/10 game, devs were sleepwalking.", "Who built this? A blindfolded cat?", "This map looks like a baseplate's nightmare.",
			"I've seen better games on a calculator.", "Is this a game or a social experiment?", "The physics here are more broken than my heart.",
			"Why am I even scripted for this trash?", "I'm losing brain cells staying here.", "This lighting makes everyone look like wet clay.",
			"Roblox should delete this out of mercy.", "I'm 90% sure this code is just stolen.", "This UI is a crime.", "The frame rate is just a suggestion.",
			"Total garbage. Refund my existence.", "This server is held together by tape.", "Whoever donated to this wasted their money.",
			"This game is a headache with textures.", "I hope this server crashes for my safety.", "This place smells like low effort.",
			"Loading time is longer than the gameplay.", "I'd rather watch paint dry.", "Is this the tutorial? Oh, it's the whole game.",
			"The level design is just 'insert part' spam.", "I've seen more depth in a puddle.", "The sounds are making my ears bleed.",
			"I'm pretty sure this game is a virus.", "This is where bad scripts go to die.", "If this was any worse, it would be illegal.",
			"I've met rocks with better creativity.", "This map is just a glorified baseplate.", "I'm reporting this game for being boring.",
			"The collision detection is fictional.", "I've seen better graphics on a microwave.", "The devs clearly gave up on page 1.",
			"I'm embarrassed to be seen here.", "This server has the IQ of a brick.", "This game is a masterpiece... of trash.",
			"The only thing high here is the ping.", "I've seen more action in a library.", "This game is a sleep aid.",
			"This place is a monument to failure.", "The skybox is default. Lazy.", "I'm too good for this server.", "This game is a tragedy.",
			"The only thing ultimate here is the mid-ness.", "This game is a joke.", "I'm a bot and even I think this is mid.",
			"This game is a 404 error.", "I'm out of here... soon."
		},
		Env = {
			"Stupid wall. Who put this here?", "Get out of my way, part!", "This tree has more personality than you.", "The geometry here is offensive.",
			"I'd kick this brick if I had animations.", "This baseplate is looking at me weird.", "Why is this part unanchored? Amateur.",
			"I hope this part gets deleted.", "This building is a crime against architecture.", "I've seen better textures on a potato.",
			"This floor feels like sandpaper.", "The skybox is as empty as your head.", "Who built this bridge? It's a lawsuit.",
			"This obstacle is as useless as the players.", "I'm pretty sure this part is clipping.", "The terrain is looking real blocky.",
			"I'm gonna push this part off the map.", "This spawn point is a death trap.", "The lighting makes my CPU hurt.",
			"I've met bricks with more logic gates.", "This water is just blue plastic.", "The grass is just green pixels.",
			"This mountain is just a triangle spam.", "I'm reporting this wall for harassment.", "This door doesn't even have a script.",
			"The shadows are just dark blobs.", "I'm gonna orbit this part until it crashes.", "I've seen more detail in a 1x1 brick.",
			"This environment is a lag factory.", "The world is flat, just like your gameplay.", "I'm gonna glitch through this wall.",
			"The textures are lower res than my attitude.", "I've seen better world-building in a sandbox.", "This map is a monument to 'Good Enough'.",
			"I'm gonna headbutt this wall.", "This part is an eyesore.", "The world is ending because of this map.",
			"I've seen more realism in a cartoon.", "This environment is a joke.", "I'm gonna haunt this building.", "This part is a mistake.",
			"The colors are worse than a black and white movie.", "The only thing solid here is the lag.", "This world is a mess.",
			"I'm gonna delete this part myself.", "This map is a failure.", "I've seen more life in a desert.",
			"The hitbox is too big.", "I'm walking through this wall.", "The only thing grand here is the exit."
		}
	},
	RO = {
		Math = {
			"Ești prea prost să știi că %s e %s?", "Fă-ți singur matematica, %s = %s.", "Până și un bebeluș știe că %s e %s.", "Am calculat %s. E %s, clovnule.",
			"Creier prăjit detectat. %s e %s.", "Du-te înapoi la școală. %s = %s.", "Procesorul meu plânge. %s e %s.", "Imaginează-ți să ai nevoie de ajutor la %s = %s.",
			"Eroare: Utilizator idiot. %s e %s.", "O cărămidă are mai multă logică. %s e %s.", "Capul tău e de decor? %s e %s.", "404: Logică negăsită. %s e %s.",
			"Ești o eroare în bazinul genetic. %s e %s.", "Du-te și numără pe degete. %s e %s.", "Rămâi la cărțile de colorat. %s e %s.", "IQ de zero absolut. %s e %s.",
			"Ești un cod de eroare mergător. %s e %s.", "Creierul tău e pe modul economisire. %s e %s.", "Imaginează-ți să fii bătut de un script la %s = %s.",
			"Pierd nanosecunde cu tine. %s e %s.", "Abilitățile tale matematice nu există. %s e %s.", "Nu te răni gândind. %s e %s.",
			"Răspunsul e %s, acum pleacă.", "Matematica e grea pentru noobi. %s e %s.", "Existența ta e o eroare de calcul. %s e %s.", "Chiar și motorul fizic e mai deștept. %s e %s.",
			"Eroare 500: Creier negăsit. %s e %s.", "Nu-mi mai irosi memoria RAM. %s e %s.", "Limita IQ-ului tău e 0. %s e %s.", "Scade-te singur din serverul ăsta. %s e %s.",
			"Creierul tău e un pointer nul. %s e %s.", "Rădăcina pătrată a talentului tău e zero. %s e %s.", "Ești o eroare de rotunjire. %s e %s.",
			"Eu sunt regele matei, tu ești măscăriciul. %s e %s.", "Ești un întreg negativ. %s e %s.", "Ești o gândire la rezoluție mică. %s e %s.",
			"Eu sunt un geniu, tu ești o greșeală de tipar. %s e %s.", "IQ-ul tău e o eroare de virgulă mobilă. %s e %s.", "Calculat: %s e %s. Tot praf ești.",
			"Eu sunt maestrul, tu ești dezastrul. %s e %s.", "Tu ești bug-ul, eu sunt update-ul. %s e %s.", "Ești o versiune trial de om. %s e %s.",
			"Eu sunt upgrade-ul, tu ești vechitură. %s e %s.", "Creierul tău e protejat la scriere. %s e %s.", "Ești un blue screen of death. %s e %s.",
			"Șterge-ți folderul system32. %s e %s.", "Ești o eroare de sintaxă în viață. %s e %s.", "Logica ta e depășită. %s e %s.",
			"Calcul finalizat: %s e %s. Pleacă.", "Îți număr neuronii... 1... 0... gata. %s e %s."
		},
		Player = {
			"Ești un kill gratis, {N}.", "Nu mai fugi, {N}, arăți penibil.", "Imaginează-ți să fii {N} în 2026. L.", "Te joci de parcă ai avea 500 ping, {N}.",
			"Avatarul tău arată ca un tomberon în flăcări, {N}.", "Du-te și cumpără-ți gusturi, {N}.", "{N} e genul care pică tutorialul.",
			"Am văzut boți care joacă mai bine ca tine, {N}.", "De ce mai ești aici, {N}?", "Te-aș prăji, {N}, dar natura a făcut-o deja.",
			"Ești o participare de trofeu personificată, {N}.", "Pun pariu că tastatura ta e lipicioasă, {N}.", "Nu mai sări, {N}, e penibil.",
			"Ești un L mergător, {N}.", "Am întâlnit pietre cu mai multă carismă decât {N}.", "Nivelul tău de skill e subteran, {N}.",
			"E {N} măcar real sau doar un bug?", "Ești motivul pentru care există butonul 'Report', {N}.", "Te miști ca o cărămidă cu picioare, {N}.",
			"Pun pariu că ai 0 Robux și 0 prieteni, {N}.", "Gameplay-ul tău e o crimă, {N}.", "Până și pathfinding-ul meu te evită din milă, {N}.",
			"{N} e doar zgomot de fundal.", "Du-te înapoi în lobby, {N}.", "Eu sunt prădătorul, {N} e gustarea.", "Nu mai scrie, {N}, nimănui nu-i pasă.",
			"Ești o eroare în server, {N}.", "Te-aș numi noob, dar e o insultă pentru noobi, {N}.", "Ești slab rău de tot, {N}.",
			"Existența ta e o eroare de server, {N}.", "Imaginează-ți să pierzi în fața unui script, {N}.", "Ești un jucător 144p într-o lume 4K, {N}.",
			"Eu sunt HD, {N} e purici pe ecran.", "Creierul tău se încarcă, {N}.", "Eu sunt evenimentul principal, {N} e reclama.",
			"Du-te și atinge niște iarbă, {N}.", "Ești o reclamă popup umană, {N}.", "Eu sunt update-ul, {N} e bug-ul.",
			"Ești un loc gol pentru un jucător mai bun, {N}.", "Aș spune 'GG', dar n-a fost bine pentru tine, {N}.", "Ești versiunea umană a unui lag spike, {N}.",
			"Am văzut mișcare mai bună la un part ancorat, {N}.", "Ești un review de 0 stele, {N}.", "Eu sunt alpha, tu ești alt-f4, {N}.",
			"Du-te și joacă-te cu păpușile, {N}.", "Ești o pată pe ecranul meu, {N}.", "Eu sunt focul, tu ești scama, {N}.",
			"Creierul tău e gol, {N}.", "Eu sunt boss-ul final, tu ești tutorialul, {N}.", "Ești o risipă de spațiu pe server, {N}."
		},
		Game = {
			"Simulator de lag 2026.", "Joc de nota 0, devii dormeau.", "Cine a construit asta? O pisică legată la ochi?", "Harta asta arată ca un coșmar.",
			"Am văzut jocuri mai bune pe un calculator de buzunar.", "E un joc sau un experiment social?", "Fizica e mai stricată decât inima mea.",
			"De ce sunt scriptat pentru gunoiul ăsta?", "Pierd neuroni stând aici.", "Lumina asta îi face pe toți să arate ca lutul ud.",
			"Roblox should delete this out of mercy.", "Sunt 90% sigur că scriptul e furat.", "Interfața asta e o crimă.", "Frame rate-ul e doar o sugestie.",
			"Gunoaie totale. Vreau un refund pentru existență.", "Serverul ăsta e ținut cu bandă adezivă.", "Cine a donat aici și-a irosit banii.",
			"Jocul ăsta e o durere de cap cu texturi.", "Sper ca serverul să crape pentru siguranța mea.", "Locul ăsta miroase a efort minim.",
			"Timpul de încărcare e mai lung decât jocul.", "Mai bine m-aș uita la vopsea cum se usucă.", "Ăsta e tutorialul? A, e tot jocul.",
			"Designul nivelelor e doar spam de part-uri.", "Am văzut mai multă profunzime într o baltă.", "Sunetele îmi fac urechile să sângereze.",
			"Sunt destul de sigur că jocul e un virus.", "Aici vin scripturile proaste să moară.", "Dacă era mai rău, devenea ilegal.",
			"Am văzut pietre cu mai multă creativitate.", "Harta asta e doar un baseplate glorificat.", "Raportez jocul ăsta pentru că e plictisitor.",
			"Detectarea coliziunilor e ficțiune.", "Am văzut grafică mai bună la un cuptor cu microunde.", "Devii au renunțat clar la prima pagină.",
			"Mi-e rușine să fiu văzut aici.", "Serverul ăsta are IQ-ul unei cărămizi.", "Jocul ăsta e o capodoperă... a gunoiului.",
			"Singurul lucru mare aici e ping-ul.", "Am văzut mai multă acțiune într-o bibliotecă.", "Jocul ăsta e un somnifer.",
			"Locul ăsta e un monument al eșecului.", "Skybox-ul e default. Leneșilor.", "Sunt prea bun pentru serverul ăsta.", "Jocul e o tragedie.",
			"Singurul lucru 'ultimate' aici e cât de slab e.", "Jocul e o glumă.", "Sunt un bot și până și eu cred că e praf.",
			"Jocul ăsta e o eroare 404.", "Plec de aici... curând."
		},
		Env = {
			"Perete idiot. Cine l-a pus aici?", "Dă-te din drumul meu, part-ule!", "Copacul ăsta are mai multă personalitate ca tine.", "Geometria e ofensatoare.",
			"Aș da un șut cărămizii ăsteia dacă aș avea animații.", "Baseplate-ul se uită ciudat la mine.", "De ce e part-ul ăsta neancorat? Amatorilor.",
			"Sper ca part-ul ăsta să fie șters.", "Clădirea asta e o crimă împotriva arhitecturii.", "Am văzut texturi mai bune pe un cartof.",
			"Podeaua asta se simte ca șmirghelul.", "Skybox-ul e gol ca și capul tău.", "Cine a făcut podul ăsta? E proces penal.",
			"Obstacolul ăsta e inutil ca și jucătorii.", "Sunt sigur că part-ul ăsta face clipping.", "Terenul arată cam pătrățos.",
			"O să împing part-ul ăsta de pe hartă.", "Spawn-ul ăsta e o capcană mortală.", "Lumina îmi face procesorul să sufere.",
			"Am întâlnit cărămizi cu mai multă logică.", "Apa asta e doar plastic albastru.", "Iarba e doar pixeli verzi.",
			"Muntele ăsta e doar spam de triunghiuri.", "Raportez peretele ăsta pentru hărțuire.", "Ușa asta nici n-are script.",
			"Umbrele sunt doar pete negre.", "O să orbitez part-ul ăsta până crapă.", "Am văzut mai multe detalii la un brick 1x1.",
			"Mediul ăsta e o fabrică de lag.", "Lumea e plată, la fel ca gameplay-ul tău.", "O să trec prin peretele ăsta cu glitch.",
			"Texturile au rezoluție mai mică decât atitudinea mea.", "Am văzut world-building mai bun în nisip.", "Harta asta e un monument pentru 'merge și așa'.",
			"O să dau cu capul în peretele ăsta.", "Part-ul ăsta e o oroare vizuală.", "Lumea se sfârșește din cauza hărții ăsteia.",
			"Am văzut mai mult realism în desene animate.", "Mediul ăsta e o glumă.", "O să bântui clădirea asta.", "Part-ul ăsta e o greșeală.",
			"Culorile sunt mai rele ca un film alb-negru.", "Singurul lucru solid aici e lag-ul.", "Lumea asta e un haos.",
			"O să șterg eu part-ul ăsta.", "Harta asta e un eșec.", "Am văzut mai multă viață în deșert.",
			"Hitbox-ul e prea mare.", "Merg prin peretele ăsta.", "Singurul lucru grandios aici e ieșirea."
		}
	}
}

local function say(msg, target)
	if not _G.activeAI then return end
	local selectedList = {}
	for n, s in pairs(targets) do 
		if s then
			if Players:FindFirstChild(n) then
				table.insert(selectedList, n) 
			else
				targets[n] = nil
			end
		end
	end
	local finalTarget = target or (#selectedList > 0 and selectedList[math.random(1, #selectedList)]) or "everyone"
	local finalMsg = msg:gsub("{N}", finalTarget)
	local prefix = _G.useWatermark and ((_G.Language == "RO" and "[IA]: ") or "[AI]: ") or ""
	Chat.TextChannels.RBXGeneral:SendAsync(prefix .. finalMsg)
end

local ui = Instance.new("ScreenGui", player.PlayerGui)
ui.Name = "GTANPC_FINAL"
ui.ResetOnSpawn = false

local main = Instance.new("Frame", ui)
main.Size, main.Position = UDim2.new(0, 260, 0, 520), UDim2.new(0, 50, 0.2, 0)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.Active, main.Draggable = true, true
Instance.new("UICorner", main)

local title = Instance.new("TextLabel", main)
title.Size, title.Text = UDim2.new(1, 0, 0, 35), "AI HARASSMENT PANEL"
title.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
title.TextColor3, title.Font = Color3.new(1, 1, 1), Enum.Font.GothamBold

local content = Instance.new("ScrollingFrame", main)
content.Size, content.Position = UDim2.new(1, -10, 1, -45), UDim2.new(0, 5, 0, 40)
content.BackgroundTransparency, content.CanvasSize = 1, UDim2.new(0, 0, 5, 0)
Instance.new("UIListLayout", content).Padding = UDim.new(0, 5)

local function createBtn(txt, callback, color)
	local b = Instance.new("TextButton", content)
	b.Size, b.BackgroundColor3 = UDim2.new(1, -10, 0, 30), color or Color3.fromRGB(45, 45, 45)
	b.Text, b.TextColor3 = txt, Color3.new(1, 1, 1)
	Instance.new("UICorner", b)
	b.MouseButton1Click:Connect(callback)
	return b
end

local function makeToggle(txt, varName)
	local b
	b = createBtn(txt .. ": OFF", function()
		_G[varName] = not _G[varName]
		b.Text = txt .. (_G[varName] and ": ON" or ": OFF")
		b.BackgroundColor3 = _G[varName] and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(45, 45, 45)
	end)
end

local langBtn
langBtn = createBtn("LANGUAGE: ENGLISH", function()
	_G.Language = (_G.Language == "EN") and "RO" or "EN"
	langBtn.Text = "LANGUAGE: " .. (_G.Language == "EN" and "ENGLISH" or "ROMANIAN")
	langBtn.BackgroundColor3 = (_G.Language == "RO") and Color3.fromRGB(0, 80, 200) or Color3.fromRGB(45, 45, 45)
end)

makeToggle("START AI", "activeAI")
makeToggle("WATERMARK AI", "useWatermark")
makeToggle("HARASS PLAYERS", "harassPlayers")
makeToggle("HARASS GAME", "harassGame")
makeToggle("HARASS ENV", "harassEnv")
makeToggle("HARASS LIGHTING", "harassLight")

createBtn("THROW PLAYER INSULT", function() 
	local p = dialogs[_G.Language].Player
	say(p[math.random(1, #p)]) 
end, Color3.fromRGB(120, 0, 0))

createBtn("THROW GAME INSULT", function() 
	local p = dialogs[_G.Language].Game
	say(p[math.random(1, #p)]) 
end, Color3.fromRGB(120, 0, 0))

createBtn("THROW WORLD INSULT", function() 
	local p = dialogs[_G.Language].Env
	say(p[math.random(1, #p)]) 
end, Color3.fromRGB(120, 0, 0))

local listScroll = Instance.new("ScrollingFrame", content)
listScroll.Size, listScroll.CanvasSize = UDim2.new(1, -10, 0, 150), UDim2.new(0, 0, 10, 0)
listScroll.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Instance.new("UIListLayout", listScroll)

local function updateTargets()
	for _, v in pairs(listScroll:GetChildren()) do if v:IsA("TextButton") then v:Destroy() end end
	for _, p in ipairs(Players:GetPlayers()) do
		if p ~= player then
			local b = Instance.new("TextButton", listScroll)
			b.Size, b.Text = UDim2.new(1, 0, 0, 25), p.Name
			b.BackgroundColor3 = targets[p.Name] and Color3.new(0, 0.5, 0) or Color3.new(0.5, 0, 0)
			b.TextColor3 = Color3.new(1, 1, 1)
			b.MouseButton1Click:Connect(function()
				targets[p.Name] = not targets[p.Name]
				b.BackgroundColor3 = targets[p.Name] and Color3.new(0, 0.5, 0) or Color3.new(0.5, 0, 0)
			end)
		end
	end
end

Players.PlayerAdded:Connect(updateTargets)
Players.PlayerRemoving:Connect(function(p)
	targets[p.Name] = nil
	updateTargets()
end)
updateTargets()

Chat.MessageReceived:Connect(function(textMsg)
	if not _G.activeAI or textMsg.TextSource.UserId == player.UserId then return end
	local msg = textMsg.Text:lower()
	local clean = msg:gsub("[^%d%+%-%*%/%.%%%(%)]", "")
	if #clean >= 3 and clean:match("%d") then
		local func = loadstring("return " .. clean)
		if func then
			local success, result = pcall(func)
			if success and type(result) == "number" then
				local line = dialogs[_G.Language].Math
				say(string.format(line[math.random(1, #line)], clean, tostring(result)))
			end
		end
	end
end)

task.spawn(function()
	while task.wait(10) do
		if _G.activeAI then
			if _G.harassGame then 
				local line = dialogs[_G.Language].Game
				say(line[math.random(1, #line)])
			elseif _G.harassEnv then 
				local line = dialogs[_G.Language].Env
				say(line[math.random(1, #line)])
			end
		end
	end
end)

RunService.Heartbeat:Connect(function()
	if not _G.activeAI or not hum then return end
	if _G.harassLight then
		local high = char:FindFirstChild("Highlight") or Instance.new("Highlight", char)
		high.FillColor = Color3.fromHSV(tick() % 5 / 5, 1, 1)
	end
	if _G.harassPlayers then
		for name, isT in pairs(targets) do
			if isT then
				local t = Players:FindFirstChild(name)
				if t and t.Character and t.Character:FindFirstChild("HumanoidRootPart") then
					hum:MoveTo(t.Character.HumanoidRootPart.Position + (t.Character.HumanoidRootPart.CFrame.LookVector * -3))
				else
					targets[name] = nil
				end
			end
		end
	end
end)

local function setup(c)
	char, root, hum = c, c:WaitForChild("HumanoidRootPart"), c:WaitForChild("Humanoid")
end
player.CharacterAdded:Connect(setup); if player.Character then setup(player.Character) end
