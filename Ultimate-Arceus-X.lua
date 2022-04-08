local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Обычный эксплойт")
local q = w:CreateFolder("Гуманоидный подвиг")
local e = w:CreateFolder("Игровой эксплойт GUI")

q:Label("Нормальный",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
    
})

q:Button("IY_FE",function()
    defaultsettings = { prefix = '!'; StayOpen = false; keepIY = true; logsEnabled = false; jLogsEnabled = false; aliases = {}; binds = {}; WayPoints = {}; PluginsTable = {}; } defaults = game:GetService("HttpService"):JSONEncode(defaultsettings) writefile("IY_FE.iy",defaults) loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

q:Button("Fly UI",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/PztijdCc"))()
end)

q:Button("Keyboard UI",function()
    --This is only for Arceus X or whatever Mobile Android devices you're using.
    --Note: If you see or heard about iOS, well they might tricking you! Do not fall for their troll, there's nothing Exploit for iOS (iPhone/iPad) Devices!

    --Do not copy the loadstring below. Proceed to the Raw version of pastebin.
    --For an example: loadstring(game:HttpGet("https://pastebin.com/raw/code", true))() . So this is must be true! Then for the confusing part is why i put a "code" on >>/raw/code"<<? Because pastebin has a lot of creation random conditional code!

    --More example: https:pastebin.com/raw/RRq092XT . Remember that the code has 8 digits!
    loadstring(game:HttpGet("https://raw.githubusercontent.com/manimcool21/Keyboard-FE/main/Protected%20(3).lua"))()
end)

q:Slider("Walkspeed",{
    default = 16;
    min = 16;
    max = 100;
    flag = "SPEED"
    precise = true;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(q:Slider.flags.SPEED)
end)

e:Label("Игры",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
    
})

e:Button("Specter GUI",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DaC9489/DaHub/main/specter",true))()
end)

e:Button("Pet Simulator X",function()
    game.StarterGui:SetCore("SendNotification",{
    Title = "Alert";
    Text = "Графического интерфейса пока нет...";
    Duration = 5;
})
end)

e:Button("Ragdoll Engine",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/martinelcrac/cryptonichub/main/Ragdollengine.lua"))()
end)
