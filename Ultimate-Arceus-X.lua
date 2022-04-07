local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("A") -- Creates the window

local b = w:CreateFolder("B") -- Creates the folder(U will put here your buttons,etc)

local numero = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16,17,18,19,20,21,22,23,24,25,26,27,28,29,30

b:Label("TNightmareHA GUI",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("IY A^X",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/qLqkzqN8"))()
end)

b:Button("",function(bool)
    shared.toggle = bool
    print(shared.toggle)
end)

b:Slider("Walkspeed",{
    min = 16;
    max = 100;
    precise = true; -- max 2 decimals
},function(value)
    do numero
end)

b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
    print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)

b:DestroyGui()

--[[
How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
How to refresh a label:
1)Create your label and save it in a variable
local yourvariable = b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})
2)Refresh it using the function
yourvariable:Refresh("Hello") It will only change the text ofc
]]
