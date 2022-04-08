

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Обычный эксплойт")
local Collide = w:CreateFolder("Гуманоидный подвиг")
local Multiverse = w:CreateFolder("Игровой эксплойт GUI")

Collide:Label("GUI",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
    
}) 

Collide:Button("IY_FE",function()
    defaultsettings = { prefix = '!'; StayOpen = false; keepIY = true; logsEnabled = false; jLogsEnabled = false; aliases = {}; binds = {}; WayPoints = {}; PluginsTable = {}; } defaults = game:GetService("HttpService"):JSONEncode(defaultsettings) writefile("IY_FE.iy",defaults) loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Collide:Button("Fly GUI",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/PztijdCc"))()
end)

Collide:Slider("Walkspeed",{
    default = 16;
    min = 16;
    max = 100;
    flag = "SPEED"
    precise = true;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Collide:Slider.flags.SPEED)
end)

Collide:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color)
    print(color.." <-- Thanks for using with Color")
end)

Multiverse:Button("Specter GUI",function()
    loadstring(game:HttpGet("
