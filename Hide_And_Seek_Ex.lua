local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hide and Seek Extreme", "Synapse")
	
	-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main") 

MainSection:NewButton("Teleport Safe", "Teleporting to safe place that seek cant find you.", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(289, 159, -38)
end)

MainSection:NewSlider("WalkSpeed", "Makes Walking Faster by using this.", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
	
MainSection:NewSlider("Jumppower", "Makes Jumping High by using this.", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.Jummpower = s
end)

local Farm = Window:NewTab("Farm")
local FarmSection = Farm:NewSection("Farm") 

FarmSection:NewButton("Get All Coins", "Getting All coins by pressing button.", function ()
		for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Credit' then
    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
    end
end)

local Info = Window:NewTab("Info")
local InfoSection = Info:NewSection("Info") 

InfoSection:NewLabel("Made By ilyax?#9961")

InfoSection:NewButton("Discord Server", "Clipboard Discord Server", function()
    setclipboard("https://discord.gg/WXpTH55csw")
end)



