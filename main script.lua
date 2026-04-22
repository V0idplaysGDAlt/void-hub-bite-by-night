local Players = game:GetService("Players")
local player = Players.LocalPlayer
local GAMES = {
    [7179131287]     = "https://pastebin.com/raw/qskARXjF",
    [1122519450]     = "https://pastebin.com/raw/VFayEmjP",
    [111530421351096]= "https://pastebin.com/raw/pqVEG2uw",
    [1502601752]     = "https://pastebin.com/raw/wxPPZcrQ",
    [9872472334]     = "https://pastebin.com/raw/my7VXuwQ",
    [537413528]      = "https://pastebin.com/raw/Ea5cFyRb",
    [7809570930]     = "https://pastebin.com/raw/1PpcdiWc",
    [738339342]      = "https://pastebin.com/raw/CiLYdYtw",
    [662417684]      = "https://pastebin.com/raw/eWSCpig8",
    [2248408710]     = "https://pastebin.com/raw/bxyh2ivJ",
    [13559635034]    = "https://pastebin.com/raw/JDYmC3td",
    [5777099015]     = "https://pastebin.com/raw/KAGezdZU",
    [70845479499574] = "https://pastebin.com/raw/ZDwAwg0J",
}
local url = GAMES[game.PlaceId]
if not url then
    player:Kick("Unsupported game.")
    return
end
if _G.SLWarned then
    player:Kick("You were warned lol.")
    return
end
if _G.SLLoaded then
    _G.SLWarned = true
    local sg = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    sg.ResetOnSpawn = false
    local f = Instance.new("Frame", sg)
    f.Size = UDim2.new(0,340,0,80)
    f.Position = UDim2.new(0.5,-170,0.5,-40)
    f.BackgroundColor3 = Color3.fromRGB(200,40,40)
    f.BorderSizePixel = 0
    Instance.new("UICorner", f).CornerRadius = UDim.new(0,10)
    local t = Instance.new("TextLabel", f)
    t.Size = UDim2.new(1,0,1,0)
    t.BackgroundTransparency = 1
    t.Text = "DONT RUN IT AGAIN IF IN THE SAME GAME,\nIF YOU DO IT AGAIN, YOU WILL BE KICKED"
    t.TextColor3 = Color3.fromRGB(255,255,255)
    t.TextSize = 13
    t.Font = Enum.Font.GothamBold
    t.TextWrapped = true
    task.delay(5, function() sg:Destroy() end)
    return
end
_G.SLLoaded = true
loadstring(game:HttpGet(url))()