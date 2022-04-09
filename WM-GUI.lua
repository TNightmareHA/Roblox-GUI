local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Weapon Masters V0.1", "BloodTheme")

local Tab = Window:NewTab("Main")

local Tab1 = Window:NewTab("Game")
local Section1 = Tab1:NewSection("Game Function")


Section1:UpdateSection("Ultimate GUI")

Section1:NewToggle("Auto Click", "Makes the game to Click for you!", function(state)
    if state then
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.SwordService.Swing:FireServer()
    else
        print("AutoSwing has been turned off")
    end
end)

Section1:NewToggle("Auto Rebirth", "Makes the game to Auto Rebirth for you!", function(state)
    if state then
        game.GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
    else
        print("AutoRebirth has been turned off")
    end
end)

Section1:NewToggle("Auto Prestige", "Makes the game to Auto Prestige for you!", function(state)
    if state then
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.PrestigeService.Prestige:InvokeServer()
    else
        print("AutoPrestige has been turned off")
    end
end)
