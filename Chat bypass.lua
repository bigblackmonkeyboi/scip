if not getgenv() then return end

if not getgenv().method or getgenv().method == nil then
	getgenv().method = "fn"
end

repeat
    wait()
until game:IsLoaded()



local Players = game:GetService("Players")
local Chat = game:GetService("Chat")

local playerFrom = Players.LocalPlayer
local message = "C7RN"


local filteredString = Chat:FilterStringForBroadcast(message, playerFrom)



local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/daddysyn/synergy/additional/betterbypasser'))()")



	local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua", true))()
	local requestt = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request
	local httpservice = game:GetService("HttpService")

	

	

    if syn and "Synapse X" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua",true))()
		getgenv().ANTICHAT = true
    else
        local Players = game:GetService("Players")
		local Player = Players.LocalPlayer or Players.PlayerAdded:wait()

		local PostMessage = require(Player:WaitForChild("PlayerScripts"):WaitForChild("ChatScript"):WaitForChild("ChatMain")).MessagePosted
		MessageEvent = Instance.new("BindableEvent")

		local OldFunctionHook
		local PostMessageHook = function(self, Message)
			if not checkcaller() and self == PostMessage then
				MessageEvent:Fire(Message)
				return
			end
			return OldFunctionHook(self, Message)
		end
		OldFunctionHook = hookfunction(PostMessage.fire, PostMessageHook)
        getgenv().ANTICHAT = true

	end		

    
	

	
	if not LOADED and ANTICHAT == true then
		NotificationHolder:message {
			Title = "Secure Chat <font color='rgb(130, 220, 120)'>Enabled</font>",
			Description = "For the interest of security and anonymity, secure chat has been enabled.",
			Icon = 10952973354
		}
	else
	NotificationHolder:message {
			Title = "Secure Chat <font color='rgb(130, 220, 120)'>Unavailable</font>",
			Description = "You will need Synapse X, Fluxus or Krnl to use the secure chat.",
			Icon = 10952973354
		}
	end

	local Bypasses = {

		["ass"] = "as{{aieixzvzx:s}}",
		["asshole"] = "as{{aieixzvzx:shole}}",
		["deadass"] = "dead as{{aieixzvzx:s}}",
		["arse"] = "ar{{aieixzvzx:se}}", --NEW
		["arsehead"] = "ar{{aieixzvzx:se}}head", --NEW
		["arsehole"] = "ar{{aieixzvzx:se}}hole", --NEW
		["bitch"] = "bit{{aieixzvzx:ch}}",
		["bitches"] = "bit{{aieixzvzx:ches}}",  
		["cock"] = "co{{aieixzvzx:ck}}",
		["cocks"] = "co{{aieixzvzx:cks}}",  
		["cunt"] = "cu{{aieixzvzx:nt}}",
		["dick"] = "di{{zczxczvz:ck}}",
		["dickhead"] = "di{{zczxczvz:ckhead}}",
		["dicks"] = "di{{zczxczvz:cks}}",  
		["dyke"] = "dy{{aieixzvzx:ke}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["faggots"] = "fa{{aieixzvzx:ggots}}",
		["fuck"] = "fu{{aieixzvzx:ck}}",
		["fucks"] = "fu{{aieixzvzx:cks}}",
		["fucked"] = "fu{{aieixzvzx:cked}}",
		["fucking"] = "fu{{aieixzvzx:ckign}}",
		["fuckin"] = "fu{{aieixzvzx:ckign}}",
		["gaylord"] = "gayl{{aieixzvzx:ord}}",
		["gaylords"] = "gayl{{aieixzvzx:ords}}",  
		["bastard"] = "bas{{aieixzvzx:tard}}",  --NEW
		["bastards"] = "bas{{aieixzvzx:tards}}",  --NEW
		["kike"] = "ki{{aieixzvzx:ke}}",
		["kikes"] = "ki{{aieixzvzx:kes}}",  
		["motherfucker"] = "motherf{{aieixzvzx:ucker}}",
		["brotherfucker"] = "brotherf{{aieixzvzx:ucker}}", --NEW
		["fatherfucker"] = "fatherf{{aieixzvzx:ucker}}", --NEW
		["bugger"] = "bugg{{aieixzvzx:er}}", --NEW
		["buggers"] = "bugg{{aieixzvzx:er}}s", --NEW
		["nigga"] = "ni{{aieixzvzx:gga}}",
		["niggas"] = "ni{{aieixzvzx:ggas}}",
		["nigger"] = "ni{{aieixzvzx:gger}}",
		["niggers"] = "ni{{aieixzvzx:ggers}}",
		["piss"] = "p{{aieixzvzx:iss}}", 
		["pisses"] = "p{{aieixzvzx:isses}}",  
		["pissing"] = "p{{aieixzvzx:is}}sing", --NEW
		["pisser"] = "pi{{aieixzvzx:sser}}", --NEW
		["penis"] = "pe{{aieixzvzx:nis}}",
		["penises"] = "pe{{aieixzvzx:nises}}",  
		["pussy"] = "pu{{aieixzvzx:ssy}}",
		["shit"] = "sh{{aieixzvzx:it}}",
		["shitter"] = "sh{{aieixzvzx:itter}}",  
		["shitting"] = "sh{{aieixzvzx:itting}}",  
		["shitty"] = "shi{{aieixzvzx:tty}}",
		["horseshit"] = "horsesh{{aieixzvzx:it}}", --NEW
		["jerk"] = "je{{aieixzvzx:rk}}", --NEW
		["jerking"] = "jer{{aieixzvzx:king}}", --NEW
		["slut"] = "sl{{aieixzvzx:ut}}",
		["sluts"] = "sl{{aieixzvzx:uts}}",  
		["whore"] = "who{{aieixzvzx:re}}",
		["whores"] = "who{{aieixzvzx:res}}",  
		["retard"] = "ret{{aieixzvzx:ard}}",
		["retarded"] = "ret{{aieixzvzx:arded}}",
		["kill"] = "ki{{aieixzvzx:ll}}",
		["kills"] = "ki{{aieixzvzx:lls}}",  
		["killing"] = "ki{{aieixzvzx:lling}}",  
		["gay"] = "g{{aieixzvzx:ay}}",
		["gays"] = "g{{aieixzvzx:ays}}",
		["sex"] = "se{{aieixzvzx:x}}",
		["sexy"] = "se{{aieixzvzx:xy}}",
		["sexting"] = "se{{aieixzvzx:xting}}",
		["porn"] = "po{{aieixzvzx:rn}}",
		["love"] = "l{{aieixzvzx:ove}}",
		["loves"] = "l{{aieixzvzx:oves}}",  
		["lover"] = "l{{aieixzvzx:over}}",  
		["loving"] = "l{{aieixzvzx:oving}}",  
		["date"] = "da{{aieixzvzx:te}}",  
		["dates"] = "da{{aieixzvzx:tes}}",  
		["dating"] = "da{{aieixzvzx:ting}}",  
		["dater"] = "da{{aieixzvzx:ter}}",  
		["rape"] = "ra{{aieixzvzx:pe}}",
		["raped"] = "rap{{aieixzvzx:ed}}",
		["rapes"] = "ra{{aieixzvzx:pes}}",  
		["raping"] = "rap{{aieixzvzx:ing}}",  
		["raper"] = "ra{{aieixzvzx:per}}",  
		["v3rm"] = "v3{{aieixzvzx:rm}}",
		["v3rmillion"] = "v3{{aieixzvzx:rmillion}}",  
		["hack"] = "ha{{aieixzvzx:ck}}",
		["hacking"] = "hac{{aieixzvzx:king}}",  
		["hacker"] = "hac{{aieixzvzx:ker}}",  
		["hackers"] = "hac{{aieixzvzx:kers}}",  
		["hot"] = "ho{{aieixzvzx:t}}",
		["hotter"] = "ho{{aieixzvzx:tter}}",  
		["boob"] = "bo{{aieixzvzx:ob}}",  
		["boobs"] = "boo{{aieixzvzx:bs}}",
		["tit"] = "t{{aieixzvzx:it}}", --NEW
		["tits"] = "t{{aieixzvzx:its}}", --NEW
		["thot"] = "th{{aieixzvzx:ot}}", --NEW
		["thots"] = "th{{aieixzvzx:ots}}", --NEW
		["thotting"] = "th{{aieixzvzx:otting}}", --NEW
		["thotting"] = "th{{aieixzvzx:otting}}", --NEW

		["condom"] = "con{{aieixzvzx:dom}}",
		["condoms"] = "con{{aieixzvzx:doms}}",  
		["thot"] = "th{{aieixzvzx:ot}}",
		["thots"] = "th{{aieixzvzx:ots}}",  
		["bang"] = "ban{{aieixzvzx:g}}",
		["ligma"] = "li{{aieixzvzx:gma}}",
		["ligmaballs"] = "ligm{{aieixzvzx:aballs}}",
		["terrorist"] = "terror{{aieixzvzx:ist}}",
		["terrorists"] = "terror{{aieixzvzx:ists}}",  
		["horny"] = "horn{{aieixzvzx:y}}",
		["mf"] = "m{{aieixzvzx:f}}",
		["lmao"] = "lm{{aieixzvzx:ao}}",
		["anus"] = "an{{aieixzvzx:us}}",
		["hacks"] = "hac{{aieixzvzx:ks}}",
		["predator"] = "pred{{aieixzvzx:ator}}",
		["predators"] = "pred{{aieixzvzx:ator}}",  
		["kiss"] = "ki{{aieixzvzx:ss}}",
		["kisses"] = "ki{{aieixzvzx:sses}}",  
		["kissing"] = "ki{{aieixzvzx:ssing}}",  
		["kisser"] = "ki{{aieixzvzx:sser}}",  
		["bomb"] = "bom{{aieixzvzx:b}}",
		["bomb"] = "bom{{aieixzvzx:bs}}",  
		["nude"] = "nu{{aieixzvzx:de}}",
		["nudes"] = "nu{{aieixzvzx:des}}",
		["child"] = "chi{{aieixzvzx:ld}}",
		["my"] = "m{{aieixzvzx:y}}",
		["racism"] = "raci{{aieixzvzx:sm}}",
		["hoe"] = "h{{aieixzvzx:oe}}",
		["pedo"] = "pe{{aieixzvzx:do}}",
		["nsfw"] = "ns{{aieixzvzx:fw}}",
		["suck"] = "su{{aieixzvzx:ck}}",
		["cum"] = "c{{aieixzvzx:um}}",
		["cums"] = "c{{aieixzvzx:ums}}",
		["cumming"] = "cu{{aieixzvzx:mming}}",
		["cumload"] = "cu{{aieixzvzx:mload}}",
		["creampie"] = "cre{{aieixzvzx:ampie}",
		["scammer"] = "sca{{aieixzvzx:mmer}}",
		["fucker"] = "fu{{aieixzvzx:cker}}",
		["hitler"] = "hit{{aieixzvzx:ler}}",
		["nazi"] = "na{{aieixzvzx:zi}}",
		["simp"] = "si{{aieixzvzx:mp}}",
		["simping"] = "sim{{aieixzvzx:ping}}",
		["meth"] = "me{{aieixzvzx:th}}",
		["cocaine"] = "co{{aieixzvzx:caine}}",
		["heroin"] = "hero{{aieixzvzx:in}}",
		["faggot"] = "fa{{aieixzvzx:ggot}}",
		["ballsack"] = "ba{{aieixzvzx:llsack}}",
		["nutsack"] = "nu{{aieixzvzx:tsack}}",
		["athiest"] = "athi{{aieixzvzx:est}}",
		["jewish"] = "je{{aieixzvzx:wish}}",
		["christian"] = "chri{{aieixzvzx:stian}}",
		["muslim"] = "mu{{aieixzvzx:slim}}",
		["jurdism"] = "jur{{aieixzvzx:dism}}",
		["islam"] = "isl{{aieixzvzx:am}}",
		["allah"] = "al{{aieixzvzx:lah}}",
		["muhammad"] = "muha{{aieixzvzx:mmad}}",
		["christianity"] = "chri{{aieixzvzx:stianity}}",
		["satanism"] = "sata{{aieixzvzx:nism}}",
		["wtf"] = "wt{{aieixzvzx:f}}",
		["gtfo"] = "gt{{aieixzvzx:fo}}",
		["kys"] = "k{{aieixzvzx:ys}}",
		["omfg"] = "omf{{aieixzvzx:g}}",
		["stfu"] = "st{{aieixzvzx:fu}}",
		["ily"] = "il{{aieixzvzx:y}}",
		["istg"] = "is{{aieixzvzx:tg}}",	
	}



	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

	local ChatBypass; ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
		local Method = getnamecallmethod()
		local Arguments = {...}
		
		if self == Remote and Method == "FireServer" then
			local Message = Arguments[1]
			local Split = Message:split(" ")
			local FinalMessage = ""

			for _, x in next, Split do
				for _, Bypass in next, Bypasses do
					if x:lower() == _ then
						if x:upper() ~= x then
							Message = Message:gsub(x, Bypass)
							FinalMessage = Message .. " "..method
						else
							Message = Message:gsub(x, Bypass):upper()
							FinalMessage = Message:gsub(x, Bypass):upper() .. " "..method
						end
					end
				end
			end
			
			if FinalMessage ~= "" then
				Arguments[1] = FinalMessage
			end
			
			return ChatBypass(self, unpack(Arguments))
		end
		
		return ChatBypass(self, ...)
	end)

	if not LOADED then
		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "FIRSTLY DISCOVERED WAS BY tav#8870. Bypasser was done by Decayed#5038 and AnthonyIsHere on V3rm. Modified by daddysyn and Big Black Monkey Boy#8453",
			Icon = 6023426926
		}

		wait(2.5)

		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "Thanks to riptide for finding this! mwa riptide",
			Icon = 6023426926
		}

		wait(2.5)

		NotificationHolder:message {
			Title = "<font color='rgb(130, 220, 120)'>Credits</font>",
			Description = "Keep in mind that your sentences might get tagged because it is intentionally ## at the end.",
			Icon = 6023426926
		}

	end



	NotificationHolder:message {
		Title = "Discord Server",
		Description = "Would you like to join the Discord Server?",
		Accept = {
			Text = "Yes",
			Callback = function()
				requestt(
					{
						Url = "http://127.0.0.1:6463/rpc?v=1",
						Method = "POST",
						Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"},
						Body = game:GetService("HttpService"):JSONEncode(
							{
								cmd = "INVITE_BROWSER",
								args = {code = "s4PxTVMUZp"},
								nonce = game:GetService("HttpService"):GenerateGUID(false)
							}
						)
					}
				)
			end
		},
		Dismiss = {Text = "No", Callback = function()
			NotificationHolder:message {Title = "<font color='rgb(240,248,255)'>Warning</font>", Description = "fuck you then im gonna invite you anyway bitch(fuck you syn for adding this shit", Icon = 10952973359}

				wait(0.5)
				requestt(
					{
						Url = "http://127.0.0.1:6463/rpc?v=1",
						Method = "POST",
						Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"},
						Body = game:GetService("HttpService"):JSONEncode(
							{
								cmd = "INVITE_BROWSER",
								args = {code = "s4PxTVMUZp"},
								nonce = game:GetService("HttpService"):GenerateGUID(false)
							}
						)
					}
				)

			end}
	}






	wait(10)
	NotificationHolder:message {Title = "<font color='rgb(240,248,255)'>Warning</font>", Description = "sacred a skid", Icon = 10952973359}
	pcall(
		function()
			getgenv().LOADED = true
		end
	)
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
scip/Bypass.lua at main · bigblackmonkeyboi/scip
