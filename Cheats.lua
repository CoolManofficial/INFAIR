local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/CoolManofficial/INFAIR/refs/heads/main/Themes.lua"))()

"RJTheme1"
"RJTheme2"
"Theme3
"RJTheme3"

local colors = {
    
    SchemeColor = Color3.fromRGB(150, 72, 148),
    
	Background = Color3.fromRGB(15,15,15),
	
    Header = Color3.fromRGB(15,15,15),

    TextColor = Color3.fromRGB(255,255,255),

    ElementColor = Color3.fromRGB(20, 20, 20)
}

local Window = Library.CreateLib("INFAIR", "RJTheme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("AutoFarm")

Section:NewLabel("LabelText")

Section:NewToggle(AutoFarmCoin", "AutoFarming coin", function(state)
    if state then
         for i,v in pairs (game:GetService("Workspace")
        if v.neme == 'Coin_Server' then
          v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    else
        print("Toggle Off")
    end
end)
