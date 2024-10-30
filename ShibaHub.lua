_G.AutoFarm = false
_G.ChestFarm = false
_G.FastAttack = false
_G.AutoRandomFruit = false

HubName = "ShibaHub"

local function Tweenfunc(p)
    local HumanoidRootPart = game.Players.LocalPlayer.HumanoidRootPart
    local Dis = (p.Position - HumanoidRootPart.Position).Magnitude
    local gettween = game.TweenService
    local info = TweenInfo.new(
        Dis/350,
        Enum.EasingStyle.Linear
)
    local Tween = gettween:Create(HumanoidRootPart,info,{CFrame = p})
    Tween:Play()
end
local function AutoFarmCheckLevel()
    local Level = game.Players.LocalPlayer:WaitForChild("Data"):WaitForChild("Level")
    if Level.Value <= 250  then
        v1 = ""
        v2 = ""
        v3 = ""
        v4 = ""
        v5 = ""
        v6 = ""
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib(tostring(HubName), "Ocean")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main function")
Section:NewToggle("AutoFarm", "", function(state)
    if state then
        _G.AutoFarm = true
    else
        _G.AutoFarm = false
    end
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if _G.AutoFarm == true then
               AutoFarmCheckLevel()
            else
               
            end
        end
    end)
end)
