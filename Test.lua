local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🍕Eating Simulator🍕 Made By NAYPRAMX#0562", "BloodTheme")
local Tab = Window:NewTab("Auto-Farm")
local Section = Tab:NewSection("Normal Function")

SelectedEggs = ""
Eggs = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Eggs:GetChildren()) do
    table.insert(Eggs,v.Name)
end
Section:NewToggle("Auto Eat", "XXX", function(bool)
_G.d = bool
while _G.d do wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v.Name == "swing" then
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
    end
    end
game:GetService'VirtualUser':Button1Down(Vector2.new(1,1))
end
end)
Section:NewToggle("Auto Sell", "XXX", function(bool)

_G.x = bool

while _G.x do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16.686979293823, 11.525447845459, -6.6648082733154) -- Change this teleport to island if u want
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25.561155319214, -1.3697438240051, -6.9260401725769)
wait(2)
end
end)

local Tab = Window:NewTab("Auto-Buy")
local Section = Tab:NewSection("AutoBuy Function")
Section:NewToggle("Auto Buy Food", "XXX", function(bool)
_G.z = bool

while _G.z do wait()
    -- Auto Buy Food

local args = {
    [1] = "Bats"
}

game:GetService("ReplicatedStorage").Knit.Services.ShopService.RE.buyAll:FireServer(unpack(args))

    end
end)
Section:NewToggle("Auto Buy DNA", "XXX", function(bool)
_G.f = bool

while _G.f do wait()
-- Auto Buy DNA

local args = {
    [1] = "DNA"
}

game:GetService("ReplicatedStorage").Knit.Services.ShopService.RE.buyAll:FireServer(unpack(args))

    end
end)
local Tab = Window:NewTab("Auto-Egg")
local Section = Tab:NewSection("Egg Function")
Section:NewDropdown("Selected Eggs", "DropdownInf", Eggs, function(dd)
    SelectedEggs = dd
end)

Section:NewToggle("Auto Buy DNA", "XXX", function(bool)
    _G.k = bool
    while _G.k do wait()
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = SelectedEggs
}

game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.buy1Egg:InvokeServer(unpack(args))
end
end)
local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Misc Function")
Section:NewToggle("Anti AFK", "XXX", function(bool)
    _G.t = bool
    while _G.t do wait()
        local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
    end
end)

local Tab = Window:NewTab("Credit")
local Section = Tab:NewSection("Credit")
Section:NewButton("Discord Server Copy Link", "Clipboard", function()
setclipboard("https://discord.com/invite/gdPXZEGUW3")
end)
