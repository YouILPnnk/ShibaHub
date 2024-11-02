_G.AutoFarm = false
_G.AutoBuyTool = false

local function MobileSupport()
    for _,v in pairs(game.CoreGui:GetDescendants()) do
        if v.Name == "Main" then
            v.Active = true
        end
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ShibaHub : Build A Boat", "GrapeTheme")
MobileSupport()
local Tab = Window:NewTab("General")
local Section = Tab:NewSection("Main")
Section:NewToggle("AutoFarm", "Version :  0", function(state)
    if state then
        _G.AutoFarm = true
    else
        _G.AutoFarm = false
    end
end)
Section:NewToggle("AutoBuyTool", "Version :  0", function(state)
    if state then
        _G.AutoBuyTool = true
    else
        _G.AutoBuyTool = false
    end
end)
print("Beta")
