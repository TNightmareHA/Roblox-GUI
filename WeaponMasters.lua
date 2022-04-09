local library = loadstring(game:HttpGet("https://pastebin.com/raw/egMXJcwB", true))()

local window = library:CreateWindow('Weapon Masters V0.1')
window:Section('Auto Farm')

local tab = window:Toggle('Swing Mode', {flag = "Swing"})
spawn(
function()
    while wait() do
        if window.flags.Swing then
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.SwordService.Swing:FireServer()
        end
    end
end)

local tab = window:Toggle('Rebirth Mode', {flag = "Rebirth"})
spawn(
function()
    while wait() do
        if window.flags.Rebirth then
            local args = {
                [1] = 1,
                [2] = true
            }

            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    end
end)


local tab = window:Toggle('Prestige Mode', {flag = "Prestige"})
spawn(
function()
    while wait() do
        if window.flags.Prestige then
            game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.PrestigeService.Prestige:InvokeServer()
        end
    end
end)

window:Section('Coming Soon')

local b = window:Button("Example Button", function()
    print(window.flags.toggle1)
end)
