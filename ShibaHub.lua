local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
_G.AutoFarm = false
local Window = Library.CreateLib("ShibaHub", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main function")
    Section:NewToggle("AutoFarm", "AutoFarm is "..tostring(_G.AutoFarm), function(state)
        if state then
            _G.AutoFarm = true
        else
            _G.AutoFarm = false
        end
        spawn(function()
            while task.wait(1) do
                if _G.AutoFarm = true then
                    print("A")
                else
                    print("B")
            end
        end)
    end)
