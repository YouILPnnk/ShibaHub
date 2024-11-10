_G.AutoFarm = false
_G.AutoBuyTool = false

local function MobileSupport()
    for _,v in pairs(game.CoreGui:GetDescendants()) do
        if v.Name == "Main" then
            v.Active = true
            v.Draggable = true
        end
    end
end
local function AutoBuyTool()
    local a1 = {
        [1] = "Painting Tool",
        [2] = 1
    }
    local a2 = {
        [1] = "Binding Tool",
        [2] = 1
    }
    local a3 = {
        [1] = "Property Tool",
        [2] = 1
    }
    local a4 = {
        [1] = "Scaling Tool",
        [2] = 1
    }
    local a5 = {
        [1] = "Trowel Tool",
        [2] = 1
    }
    workspace.ItemBoughtFromShop:InvokeServer(unpack(a1))
    workspace.ItemBoughtFromShop:InvokeServer(unpack(a2))
    workspace.ItemBoughtFromShop:InvokeServer(unpack(a3))
    workspace.ItemBoughtFromShop:InvokeServer(unpack(a4))
    workspace.ItemBoughtFromShop:InvokeServer(unpack(a5))
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ShibaHub : Build A Boat", "GrapeTheme")
local Tab = Window:NewTab("General")
local S1 = Tab:NewSection("Main")
local S2 = Tab:NewSection("Misc")
S1:NewToggle("AutoFarm", "Version :  1", function(_)
    if _ then
        _G.AutoFarm = true
    else
        _G.AutoFarm = false
    end
end)
S2:NewToggle("AutoBuyTool", "Version : 1", function(_)
    if _ then
        _G.AutoBuyTool = true
    else
        _G.AutoBuyTool = false
    end
end)
MobileSupport()

spawn(function()
    while task.wait() do
        if _G.AutoBuyTool == true then
            AutoBuyTool()
        else
            return
        end
    end
end)
spawn(function()
    while task.wait() do
        if _G.AutoFarm == true then
            print("Run")
        else
            return
        end
    end
end)
