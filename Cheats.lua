local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/CoolManofficial/INFAIR/refs/heads/main/Themes.lua"))

local Player = game.Player.LocalPlayer.HumanoidRootPart.CFrame

local Window = Library.CreateLib("INFAIR", "Theme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("AutoFarm")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
       for i,v in pairs (game:GetService("Workspace")
        if v.neme == 'Coin_Server' then
          Player = v.CFrame
    else
          print("Toogle Off")
    end
end)

        
