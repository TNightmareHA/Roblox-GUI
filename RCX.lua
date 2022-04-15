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

function doReb(RebAmt)
	spawn(function()
		while getgenv().Rebirth == true do
			game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(RebAmt)
			wait()
		end
	end)
end



local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/W.lua"))()

local w = lib:NewWindow("Rebirth Champions X")
local t = w:NewSection("Game")

t:CreateToggle("Auto Click", function(bool)
	getgenv().Clicker = bool
	if bool then
		doClick();
	end
end)

local RebAmt;
t:CreateTextbox("RebAmt", function(value)
	RebAmt = value;
	print(value)
 end)
t:CreateToggle("Auto Rebirth", function(bool)
		getgenv().Rebirth = bool
	if bool then
		doReb(RebAmt);
		print("Working")
	end
end)

--[[t:CreateDropdown("Rebirth Amount", {"1", "2", "3"}, 2, function(value)
	
end)

t:CreateButton("Button", function()
	print("HI")
end)

t:CreateTextbox("TextBox", function(text)
	print(text)
end)

t:CreateToggle("Auto Click", function(value)
	print(value)
end)

t:CreateDropdown("DropDown", {"Hello", "World", "Hello World"}, 2, function(text)
	print(text)
end)

t:CreateSlider("Slider", 0, 100, 15, false, function(value)
	print(value)
 end)

t:CreateColorPicker("Picker", Color3.new(255, 255, 255), function(value)
	print(value)
end)]]
