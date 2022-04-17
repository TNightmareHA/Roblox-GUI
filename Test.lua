local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local w = lib.new("Specter Hub", 5013109572)

local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

local p = w:addPage("Main", 5012544693)
local s = p:addSection("Maps")

s:addButton("Family Home", "Coming Soon" function(text)
    w:Notify("Map", text)
end)

s:addButton("Luxury Home", "Coming Soon" function(text)
    w:Notify("Map", text)
end)

-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end

-- load
venyx:SelectPage(venyx.pages[1], true)

local gui = game:GetService("CoreGui").Venyx
local frame = gui:FindFirstChild("Main")
frame.Active = true
frame.Draggable = true
