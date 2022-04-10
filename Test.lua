local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Test", "Synapse")
local Tab = Window:NewTab("Test Name")
local Section = Tab:NewSection("Test Section")
Section:NewButton("ButtonTest", "XXX", function()
    print("Button Clicked")
end)
