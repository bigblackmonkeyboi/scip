local P = game:GetService("Workspace").Interactables
local EP = game:GetService("Workspace").activeHostiles
local Rand = math.random(10000, 1000000)

local UIS = game:GetService("UserInputService")

function GetDist(P1, P2)
	return  (P1.Position - P2.Position).Magnitude
end
local wanteditemslist = {"AgentCD","HStim","M60-E6 Fabricator", "FN M249 Fabricator","BPack","UMP","APack","IbuP","MRVolver","FAid","DEFStim","SStim","AdrStim","DStim","SPDStim","IntSniper","FNLMG","SubLMG"}
local wanteditems = {
    ["AgentCD"] = "PICK THIS SHIT UP",
    ["HStim"] = "'Perithesene'",
    ["M60-E6 Fabricator"] = "M60 FAB",
    ["FN M249 Fabricator"] = "M249 FAB",
    ["BPack"] = "Backpack",
    ["UMP"] = "BEST GUN",
    ["APack"] = "Armor",
    ["IbuP"] = "AntiB",
    ["MRVolver"] = "REDEEMER",
    ["FAid"] = "IFAK",
    ["DEFStim"] = "I4S",
    ["SStim"] = "BL1",
    ["AdrStim"] = "Adreneline",
    ["SPDStim"] = "S11",
    ["IntSniper"] = "Intervention",
    ["FNLMG"] = "M249",
    ["SubLMG"] = "M60",
    ["DStim"] = "CBStim",
}
function CreateESP(Ins, C, N, IsEnemy, Hum)
    if Ins:FindFirstChild("TestingLol") then
        else
	local BillboardGui = Instance.new("BillboardGui")
	local Name = Instance.new("TextLabel")
	local Dist = Instance.new("TextLabel")

	--Properties:

	BillboardGui.Parent = Ins
	BillboardGui.AlwaysOnTop = true
	BillboardGui.Name = "TestingLol"
	BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BillboardGui.Active = true
	BillboardGui.LightInfluence = 1.000
	BillboardGui.Size = UDim2.new(20, 0, 20, 0)
	BillboardGui.StudsOffsetWorldSpace = Vector3.new(0, 8, 0)


	Name.Name = "Name"
	Name.Parent = BillboardGui
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0, 0, 0.100000001, 0)
	Name.Size = UDim2.new(1, 0, 0.300000012, 0)
	Name.Font = Enum.Font.Gotham
	Name.Text = N
	Name.TextColor3 = C
	Name.TextScaled = false
	Name.TextSize = 10
	Name.TextWrapped = true
	if table.find(wanteditemslist,Name.Text) then
	    Name.TextStrokeColor3 = Color3.fromRGB(255,135,0)
	    Name.Text = wanteditems[Name.Text]
	    end
	if Name.Text == "BossFunRuiner" then
	    Name.Text = "Queen"
	    Name.TextSize = 28
	    	Name.TextWrapped = false
	elseif Name.Text == "HyperlyMoment" then
        Name.Text = "Ryder"
        Name.TextSize = 28
        	Name.TextWrapped = false
	elseif Name.Text == "BossScav" then
	    Name.Text = "Yosef"
	     Name.TextSize = 28
        	Name.TextWrapped = false
    elseif Name.Text == "BossZealot" then
        Name.Text = "Zealot 'Void'"
        Name.TextSize = 28
        	Name.TextWrapped = false
    elseif Name.Text == "ShadowSickler" then
        Name.Text = "Sickler"
        Name.TextSize = 28
        	Name.TextWrapped = false
    elseif Name.Text == "BucketDude" then
        Name.Text = "BITCH"
        Name.TextSize = 28
        	Name.TextWrapped = false
    elseif Name.Text == "BossRedeemers" then
        Name.Text = "Emperor"
        Name.TextSize = 28
        	Name.TextWrapped = false
    elseif Name.Text == "BossCommander" then
        Name.Text = "Commander"
        Name.TextSize = 28
        	Name.TextWrapped = false
	    end
	Name.TextStrokeTransparency = 0.000
	

	Dist.Name = "Dist"
	Dist.Parent = BillboardGui
	Dist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Dist.BackgroundTransparency = 1.000
	Dist.Position = UDim2.new(0, 0, 0.629999995, 0)
	Dist.Size = UDim2.new(1, 0, 0.300000012, 0)
	Dist.Font = Enum.Font.Gotham
	Dist.Text = "N/A"
	if IsEnemy == true then
	    Dist.Text = Hum.Health .. "/" .. Hum.MaxHealth
	    spawn(function()
	        Hum:GetPropertyChangedSignal("Health"):Connect(function()
	            Dist.Text = Hum.Health .. "/" .. Hum.MaxHealth
	        end)
	    end)
	    else
	        Dist.Visible = false
	end
	Dist.TextColor3 = C
	Dist.TextScaled = false
	Dist.TextSize = 10
	Dist.TextStrokeTransparency = 0.000
	Dist.TextWrapped = true
	end
end

function ClearESP()
	for _, v in pairs(P:GetDescendants()) do
		if v.Name == Rand then
			v:Destroy()
		end
	end	
end

function ClearConsole()
	rconsoleclear()
end

function PrintToConsole(String)
	ClearConsole()
	rconsoleprint(String)
end

local function round(n)
	return math.floor(n + 0.5)
end

function Refresh()
	ClearESP()
	local Crates = {}
	local Ammo = {}
	local Meds = {}
		local Fabricators = {}
	local Enemies = {}
	
	for _, v in pairs(P:GetChildren()) do
		if v.Name == "Crate" then
			table.insert(Crates, v)
		end
		if string.split(v.Name, " ")[2] == "Ammo" then
			table.insert(Ammo, v)
		end
		if string.split(v.Name, " ")[2] == "Fabricator" or string.find(v.Name, "Fabricator") then
			table.insert(Fabricators, v)
		end
		if v.Name == "Medical Cabinet" then
			table.insert(Meds, v)
		end
	end
	
	for _, v in pairs(EP:GetChildren()) do
		table.insert(Enemies, v)
	end
	
	for _, v in pairs(Enemies) do
	    if v:FindFirstChild("FunnyHighlightThing") then
	        else
	    local newhighlight = Instance.new("Highlight")
	    newhighlight.FillTransparency = 0.9
	    newhighlight.OutlineTransparency = 0.5
	    newhighlight.Name = "FunnyHighlightThing"
	    newhighlight.Parent = v
	    end
	    if v:FindFirstChild("Head") then
		CreateESP(v:FindFirstChild("Head"), Color3.fromRGB(255, 0, 0), v.ai_type.Value, true, v:FindFirstChild("Humanoid"))
	    end
end
	
	for _, v in pairs(Crates) do
		CreateESP(v, Color3.fromRGB(255, 255, 255), v.Name)
	end
	for _, v in pairs(Ammo) do
		CreateESP(v:FindFirstChild("Interact"), Color3.fromRGB(255, 255, 127), v.Name)
	end
	for _, v in pairs(Fabricators) do
		CreateESP(v:FindFirstChild("Interact"), Color3.fromRGB(0, 255, 255), v.Name)
	end
	for _, v in ipairs(game.Workspace.WeaponDrops:GetChildren()) do
	    if v:FindFirstChild("Model") then
	    	CreateESP(v, Color3.fromRGB(205, 0, 125), v.Name)
	    end
	end
end

UIS.InputBegan:Connect(function(Input)
	if Input.KeyCode == Enum.KeyCode.M then
		Refresh()
	end
end)

Refresh()
