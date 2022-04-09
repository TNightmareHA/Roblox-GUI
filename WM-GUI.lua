local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua")))()

local w = library.CreateLib("Weapon Masters V0.1", "BloodTheme")

local a = w:NewTab("Game")
local b = a:NewSection("Auto Farm")



b:NewToggle("Auto Click", "Makes the game to Click for you!", function(state)
    if state then
        --[[game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.SwordService.Swing:FireServer()]]print("Boom")
    else
        print("AutoSwing has been turned off")
    end
end)

b:NewToggle("Auto Rebirth", "Makes the game to Auto Rebirth for you!", function(state)
    if state then
        --[[game.GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))]]print("Boom")
    else
        print("AutoRebirth has been turned off")
    end
end)

b:NewToggle("Auto Prestige", "Makes the game to Auto Prestige for you!", function(state)
    if state then
        --[[game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.PrestigeService.Prestige:InvokeServer()]]print("Boom")
    else
        print("AutoPrestige has been turned off")
    end
end)

