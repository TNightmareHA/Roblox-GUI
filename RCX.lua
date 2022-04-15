getgenv().Clicker = false;
getgenv().Rebirth = false;


function doClick()
	spawn(function()
		while getgenv().Clicker == true do
			game:GetService("ReplicatedStorage").Events.Click3:FireServer()
			wait()
		end
	end)
end

function doReb(rebamt)
	spawn(function()
		while getgenv().Rebirth == true do
			game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(rebamt)
			wait()
		end
	end)
end



local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Wall.lua"))()

local w = lib:CreateWindow("Rebirth Champions X")

game.StarterGui:SetCore("SendNotification",{
    Title = "TNightmareHA A^X";
    Text = "Have fun.";
    Icon = "rbxassetid://9307520762";
    Duration = 5;
})

local GUI = w:CreateFolder("Destroy GUI")

GUI:DestroyGui()



local s = w:CreateFolder("Player")

s:Slider("WalkSpeed",{
    min = 16;
    max = 100;
    precise = true;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

s:Button("WS Info",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "WalkSpeed Information";
        Text = "Please do not use the slider(If you're on Mobile). Use the *BoxValue*";
        Duration = 10;
    })
end)

s:Slider("JumpPower",{
    min = 50;
    max = 500;
    precise = true;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

s:Button("JP Info",function()
    game.StarterGui:SetCore("SendNotification",{
        Title = "JumpPower Information";
        Text = "Please do not use the slider(If you're on Mobile). Use the *BoxValue*";
        Duration = 10;
    })
end)

s:Label("In-Game GUI",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})

s:Button("IY_FE",function()
	defaultsettings = { prefix = '!'; StayOpen = false; keepIY = true; logsEnabled = false; jLogsEnabled = false; aliases = {}; binds = {}; WayPoints = {}; PluginsTable = {}; } defaults = game:GetService("HttpService"):JSONEncode(defaultsettings) writefile("IY_FE.iy",defaults) loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

s:Button("Fly UI",function()
	loadstring(game:HttpGet("https://pastebin.com/raw/PztijdCc"))()
end)

s:Button("Keyboard UI",function()
    --This is only for Arceus X or whatever Mobile Android devices you're using.
    --Note: If you see or heard about iOS, well they might tricking you! Do not fall for their troll, there's nothing Exploit for iOS (iPhone/iPad) Devices!

    --Do not copy the loadstring below. Proceed to the Raw version of pastebin.
    --For an example: loadstring(game:HttpGet("https://pastebin.com/raw/code", true))() . So this is must be true! Then for the confusing part is why i put a "code" on >>/raw/code"<<? Because pastebin has a lot of creation random conditional code!

    --More example: https:pastebin.com/raw/RRq092XT . Remember that the code has 8 digits!
	loadstring(game:HttpGet("https://raw.githubusercontent.com/manimcool21/Keyboard-FE/main/Protected%20(3).lua"))()
end)

s:Button("Anti-Afk",function()
	loadstring(game:HttpGet("https://pastebin.com/raw/fiAZekfZ",true))()
end)



local so = w:CreateFolder("Game")

so:Label("Click Toggle",{
    TextSize = 20;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})

so:Toggle("Auto Click",function(bool)
	getgenv().Clicker = bool
	if bool then
		doClick();
	end
end)

so:Label("Rebirth Toggle",{
    TextSize = 20;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})

local selectreb;
so:Box("Rebirth Amount","number",function(value)
	selectreb = value;
 end)
so:Toggle("Auto Rebirth",function(bool)
	getgenv().Rebirth = bool
	if bool then
		doReb(selectreb);
	end
end)
