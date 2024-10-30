_G.AutoFarm = false

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("ShibaHub", "Synapse")
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
   while task.wait() do
        if _G.AutoFarm == true then
           print("A")
        else
           return
        end
    end
end)
