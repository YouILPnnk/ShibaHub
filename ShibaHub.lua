_G.AutoFarm = false
_G.AutoBuyTool = false

local function MobileSupport()
    local Main = game.CoreGui[LibName]:WaitForChild("Main")
    Main.Active = true
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ShibaHub : Build A Boat", "GrapeTheme")
wait(1)
MobileSupport()
local Tab = Window:NewTab("General")
local Section = Tab:NewSection("Main")
local Section1 = Tab:NewSection("Tool")
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
Section1:NewButton("1", "", function()
    print("Clicked")
end)
for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
