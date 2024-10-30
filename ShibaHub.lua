_G.AutoFarm = false

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("ShibaHub", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main function")
Section:NewToggle("AutoFarm", "", function(state)
    if state then
        _G.AutoFarm = false
    else
        _G.AutoFarm = true
    end
end)
spawn(function()
   while task.wait() do
        if _G.AutoFarm = false then
           print("A")
        else
           print("B")
        end
    end
end)
