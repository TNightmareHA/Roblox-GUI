local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Weapon Masters - V0.3", "Synapse")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Game-Function")
Section:NewToggle("Auto Swing", "It will automatically swing for you!", function(state)
    if state then
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.SwordService.Swing:FireServer()
    else
        print("Auto Swing has been turned off")
    end
end)

Section:NewToggle("Auto Rebirth", "It will automatically rebirth for you!", function(state)
    if state then
        local args = {
            [1] = 1,
            [2] = true
        }

        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
    else
        print("Auto Rebirth has been turned off")
    end
end)

Section:NewToggle("Auto Prestige", "It will automatically prestige for you!", function(state)
    if state then
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.PrestigeService.Prestige:InvokeServer()
    else
        print("Auto Prestige has been turned off")
    end
end)
