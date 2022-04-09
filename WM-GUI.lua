local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Weapon Masters V0.1", "Synapse")
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Game")



Section:NewToggle("Auto Click", "Makes the game to Click for you!", function(bool)
    if bool then
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.SwordService.Swing:FireServer()
    else
        print("AutoSwing has been turned off")
    end
end)

Section:NewToggle("Auto Rebirth", "Makes the game to Auto Rebirth for you!", function(bool)
    if bool then
        game.GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
    else
        print("AutoRebirth has been turned off")
    end
end)

Section:NewToggle("Auto Prestige", "Makes the game to Auto Prestige for you!", function(bool)
    if bool then
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.PrestigeService.Prestige:InvokeServer()
    else
        print("AutoPrestige has been turned off")
    end
end)
