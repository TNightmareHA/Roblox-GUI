local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Ordinary exploit")
local GUI = w:CreateFolder("Destroy GUI")
local q = w:CreateFolder("Гуманоидный эксплойт")
local e = w:CreateFolder("Игровой эксплойт GUI")
local d = w:CreateFolder("ServerSide")

game.StarterGui:SetCore("SendNotification",{
    Title = "TNightmareHA A^X";
    Text = "Have a good time using my сценарий!";
    Icon = "rbxassetid://9307520762";
    Duration = 5;
})

GUI:DestroyGui()

q:Label("Нормальный",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})

q:Slider("WalkSpeed",{
    min = 16;
    max = 100;
    precise = true;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

q:Button("WS Info",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "WalkSpeed Information";
        Text = "Please do not use the slider(If you're on Mobile). Use the *BoxValue*";
        Duration = 10;
})
end)

q:Slider("JumpPower",{
    min = 50;
    max = 500;
    precise = true;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

q:Button("JP Info",function()
    game.StarterGui:SetCore("SendNotification",{
    Title = "JP Info";
    Text = "Please do not use the slider(If you're on Mobile). Use the *BoxValue*";
    Duration = 10;
})
end)

q:Label("Обычный эксплойт GUI",{
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

q:Button("Anti-Afk",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/fiAZekfZ",true))()
end)

e:Label("Внутриигровые скрипты",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})

e:Button("Ragdoll Engine",function()
    game.StarterGui:SetCore("SendNotification",{
    Title = "TNightmareHA A^X";
    Text = "You must be in the game before executing this Script GUI";
    Duration = 5;
})
    loadstring(game:HttpGet('https://raw.githubusercontent.com/martinelcrac/cryptonichub/main/Ragdollengine.lua'))()
end)

e:Button("Specter",function()
    game.StarterGui:SetCore("SendNotification",{
    Title = "TNightmareHA A^X";
    Text = "You must be in the game before executing this Script GUI";
    Duration = 5;
})
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DaC9489/DaHub/main/specter"))()
end)

e:Button("Lumber Tycoon 2",function()
    game.StarterGui:SetCore("SendNotification",{
    Title = "TNightmareHA A^X";
    Text = "You must be in the game before executing this Script GUI";
    Duration = 5;
})
    loadstring(game:HttpGet("https://pastebin.com/raw/qzsLHpF9"))()
end)

d:Label("Scan Game",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})

d:Button("Detect SS",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua",true))()
end)

d:Label("Require Скрипты",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})

d:Button("Adrian Latest GUI",function()
    game.StarterGui:SetCore("SendNotification",{
    Title = "Master SS";
    Text = "The require сценарий has been copied to clipboard";
    Duration = 10;
end)
        
d:Button("Coming Soon",function()
    game.StarterGui:SetCore("SendNotification",{
    Title = "Master SS";
    Text = "More require scripts coming soon!";
    Duration = 10;
end)
