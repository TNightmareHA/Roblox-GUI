local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TNightmareHA/Backup/main/Source.lua"))()

local w = library.CreateLib("Test", "Synapse")
local t = w:NewTab("Test")
local s = t:NewSection("Test")

s:NewButton("Test", "Test", function()
    print("Clicked")
end)

s:NewToggle("Test", "Test", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)
