local v1 = game.PlaceId
if v1 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/YouILPnnk/Map/main/"..v1..".lua"))()
else
    game.Players.LocalPlayer:Kick("[MFCS]")
end
