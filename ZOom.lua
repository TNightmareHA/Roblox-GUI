--[[getgenv().Clicker = false;
getgenv().Rebirth = false;


function doClick()
	spawn(function()
		while getgenv().Clicker == true do
			game:GetService("ReplicatedStorage").Events.Click3:FireServer()
			wait()
		end
	end)
end

function doReb(RebAmt)
	spawn(function()
		while getgenv().Rebirth == true do
			game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(RebAmt)
			wait()
		end
	end)
end]]



local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Wall.lua"))()

local w = lib:NewWindow("War Simulator V1")

local b = w:NewSection("Main")
local e = w:NewSection("Mix")
local Worlds = "WorldWar1";

b:CreateToggle("Auto-Melee ", function(bool)
        shared.toggle = bool
        AutoMelee = bool;
end)

b:CreateToggle("Auto-Farm", function(bool)
	shared.toggle = bool
	AutoFarm = bool;
end)

b:CreateDropdown("World", {"Tribal", "Medieval", "Colonial", "WorldWar1", "OilWars", "WorldWar2", "Modern", "Future", "Western", "Ancient"}, true, function(World)
	Worlds = World;
end)

e:CreateToggle("AntiAfk", function(bool)
	shared.toggle = bool
	AntiAfk = bool
end)


game:GetService("RunService").Stepped:connect(
    function()
        if AutoMelee == true then
                for i,v in pairs(game:GetService("Players")[game.Players.LocalPlayer.Name].Backpack:GetChildren()) do
        if v:FindFirstChild("MeleeScript") then
                    local tool =
                    game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                    wait(0.1)
        end
    end
    game:service "VirtualUser":ClickButton1(Vector2.new())
        end
        if AutoFarm == true then
            for i, v in pairs(game:GetService("Workspace").MapAreas:GetChildren()) do
                for i, v1 in pairs(v:GetChildren()) do
                    if v1.Name == "Stage" then
                        if v.Stage.Value == Worlds then
                            for i, v2 in pairs(v1.Parent:GetChildren()) do
                                for i, v3 in pairs(v2:GetChildren()) do
                                    if v2.Name == "Mobs" then
                                        if not v3:FindFirstChild("IsTank") then
                                            if v3:FindFirstChild("Humanoid") then
                                                for i, v4 in pairs(v3:GetChildren()) do
                                                    if v4.ClassName == "MeshPart" or v4.ClassName == "Part" then
                                                        v4.CFrame =
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                                                            CFrame.new(0, 0, -5)

                                                        v4.CanCollide = false
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        if AntiAfk == true then
            local bb = game:service "VirtualUser"
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        end
    end
)
