--// Services
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

--// Variables
local localPlayer = Players.LocalPlayer
local originalPosition = localPlayer.Character:GetPivot()
local player = "" --> Empty the string to bring enemy to your location
local enemy = "" --> Empty the string to bring all the enemy

RunService.RenderStepped:Connect(function()
    settings().Physics.AllowSleep = false
    settings().Physics.ThrottleAdjustTime = math.huge - math.huge
    setsimulationradius(math.huge, math.huge)
end)

local function bring(enemy)
    task.spawn(function()
        local t = tick()
        while true do
            localPlayer.Character:PivotTo(workspace.NewDecor.HeliPad.fwa.CFrame)

            if enemy.targetting.Value == true or tick() - t > 4 then
                break
            end
            
            enemy:PivotTo(localPlayer.Character:GetPivot())
            task.wait()
        end

        localPlayer.Character:PivotTo(originalPosition)
        for _, user in pairs(Players:GetPlayers()) do
            if string.lower(user.Name) == tostring(player) then
                player = user
            end
        end

        if typeof(player) == "string" then
            player = localPlayer
        end

        if player.Character.PrimaryPart then
            enemy:PivotTo(player.Character:GetPivot())
        end
    end)
end

if enemy == "" then
    for _, enemy in pairs(workspace.activeHostiles:GetChildren()) do
        if enemy.PrimaryPart then
            bring(enemy)
        end
    end
else
    for _, hostile in pairs(workspace.activeHostiles:GetChildren()) do
        if string.lower(hostile.Name) == tostring(enemy) then
            enemy = hostile
        end
    end

    if typeof(enemy) ~= "string" then
        if enemy.PrimaryPart then
            bring(enemy)
        end
    end
end

localPlayer.Character:PivotTo(originalPosition)
