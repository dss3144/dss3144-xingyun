local ScreenGui = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Key = Instance.new("TextBox")
local Start = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI.Name = "星云卡密系统"
UI.Parent = ScreenGui
UI.Active = true
UI.BackgroundColor3 = Color3.new(0, 0, 0.1)
UI.BackgroundTransparency = 1
UI.BorderSizePixel = 3
UI.Position = UDim2.new(0.5, -150, 0.5, -67)
UI.Size = UDim2.new(0, 260, 0, 260)
UI.Draggable = true

Title.Name = "Title"
Title.Parent = UI
Title.BackgroundColor3 = Color3.new(67, 67, 67)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 2
Title.Position = UDim2.new(0, 0, 0.02, 0)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "星云卡密系统"
Title.TextColor3 = Color3.new(0, 0, 250)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

Frame.Parent = Title
Frame.BackgroundColor3 = Color3.new(0, 0, 250)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.07, 0, 0.9, 0)
Frame.Size = UDim2.new(0.85, 0, 0, 6)

Key.Name = "Key"
Key.Parent = UI
Key.BackgroundColor3 = Color3.new(1, 1, 1)
Key.BorderSizePixel = 0
Key.Position = UDim2.new(0.1, 0, 0.31, 0)
Key.Size = UDim2.new(0.8, 0, 0, 50)
Key.Font = Enum.Font.SourceSans
Key.PlaceholderText = "输入密钥"
Key.Text = ""
Key.TextColor3 = Color3.new(0, 0, 0)
Key.TextScaled = true
Key.TextSize = 14
Key.TextWrapped = true

Start.Name = "Start"
Start.Parent = UI
Start.BackgroundColor3 = Color3.new(0, 0, 255)
Start.BackgroundTransparency = 0
Start.BorderSizePixel = 2
Start.Position = UDim2.new(0.25, 0, 0.65, 0)
Start.Size = UDim2.new(0.5, 0, 0, 45)
Start.Font = Enum.Font.Gotham
Start.Text = "检查卡密"
Start.TextColor3 = Color3.new(0, 0, 0)
Start.TextScaled = true
Start.TextSize = 10
Start.TextWrapped = true

Start.MouseButton1Click:Connect(function()
    if Key.Text == "W4apIfT8yWgQ" then
        ScreenGui:Destroy()
        
        
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/8z1thAWe"))()
local Window = OrionLib:MakeWindow({Name = "星云脚本", HidePremium = false, IntroText = "星云脚本"})
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "星云脚本"; Text ="欢迎使用"; Duration = 4; })

OrionLib:MakeNotification({
  Name = "密码正确，欢迎使用,作者QQ:3369370682",
  Content = "当前游戏ID为:" .. game.GameId .. ".",
  Image = "rbxassetid://7734068321",
  Time = 10
})

local Tab = Window:MakeTab({
    Name = "关于",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddParagraph("作者云","")
Tab:AddParagraph("作者QQ3369370682","")
Tab:AddParagraph("脚本免费请勿倒卖","")

local Tab = Window:MakeTab({
    Name = "公告",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddParagraph("更新2个游戏","")
Tab:AddParagraph("一共支持30种游戏","")
Tab:AddParagraph("越狱,巨人生存","")

local Tab = Window:MakeTab({
    Name = "通用功能",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddSlider({
	Name = "速度",
	Min = 16,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
Tab:AddSlider({
	Name = "跳跃高度",
	Min = 50,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})
Tab:AddTextbox({
	Name = "移动速度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

Tab:AddButton({
	Name = "键盘",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end
})
Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
Tab:AddButton({
	Name = "IY指令",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
})

Tab:AddButton({
	Name = "汽车飞行",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/VRVxqGAE"))()
end
})
Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})
Tab:AddButton({
	Name = "无限跳跃",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/4jbsfvwH"))()
end
})
Tab:AddButton({
	Name = "范围",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/eWH26KPn"))()
end
})

Tab:AddButton({
	Name = "空中行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end
})
Tab:AddButton({
    Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "透视3",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()
	end 
})

Tab:AddButton({
	Name = "透视",
	Callback = function()
local esp_settings = { 
    textsize = 8,
    colour = 255,255,255
}
 
local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel",gui)
 
 
 
gui.Name = "Cracked esp";
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
esp.Text = ""
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
esp.BorderSizePixel = 4;
esp.BorderColor3 = Color3.new(esp_settings.colour)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = esp_settings.textsize
esp.TextColor3 = Color3.fromRGB(esp_settings.colour) -- text colour
 
game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs (game:GetService("Players"):GetPlayers()) do
        if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Cracked esp")==nil  then
            esp.Text = "{"..v.Name.."}"
            gui:Clone().Parent = v.Character.Head
    end
end
end)
   end
})

Tab:AddButton({
	Name = "飞行V3",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/sRYn4RJ0"))()
end
})

player:AddButton({ 
	Name = "光影(浅)",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
  	end
})
player:AddButton({ 
	Name = "光影(深)",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "DOORS",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "KING DOORS",
	Callback = function()
--credits to the owner--
loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
end
})    
Tab:AddButton({
	Name = "MS DOORS",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/poopdoors_edited/main/poopdoors_edited.lua"),true))()
end
})
local Tab = Window:MakeTab({
    Name = "其他脚本",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddParagraph("剑客需要加入群组","")

Tab:AddButton({
	Name = "脚本中心",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
end
})    
Tab:AddButton({
	Name = "剑客V4",
	Callback = function()
jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://shz.al/~JianKeV4')))()
end
})
Tab:AddButton({
	Name = "导管中心(会覆盖)",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
end
})
Tab:AddButton({
	Name = "白脚本(需要白名单)",
	Callback = function()
_G["白脚本作者修狗"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))() 
end
})

Tab:AddButton({
	Name = "皇脚本",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
end
})

Tab:AddButton({
	Name = "地岩脚本(需要白名单)",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
end
})

Tab:AddButton({
	Name = "忍脚本",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,52,81,74,109,75,50,99,72})end)())))();
end
})

Tab:AddButton({
	Name = "鸭HUB",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
end
})

Tab:AddButton({
	Name = "Fish Script",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\71\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\120\105\97\111\120\105\97\111\121\117\50\50\51\51\47\120\105\97\111\120\105\97\111\121\117\47\109\97\105\110\47\120\105\97\111\120\105\97\111\121\117\34\41\41\40\41\10")()
end
})

Tab:AddButton({
	Name = "狼脚本",
	Callback = function()
loadstring(game:HttpGet(('https://shz.al/~wolfScriptFree')))()
end
})

local Tab = Window:MakeTab({
    Name = "动感星期五",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "动感星期五(部分可能用不了)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nadir3709/RandomScript/main/FunkyFridayMobile"))()
end
})
local Tab = Window:MakeTab({
    Name = "基本上是FNF",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "基本上是FNF",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/BasicallyFNF", true))()
end
})
local Tab = Window:MakeTab({
    Name = "BF",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "HOHO HUB(可能要卡密)",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))() 
end
})

Tab:AddButton({
	Name = "BF脚本",
	Callback = function()
loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()
end
})

local Tab = Window:MakeTab({
    Name = "巴掌大战但是糟糕",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "搞手套",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/BaconScripterLua/main/SBBB%20Badges%20Hub.lua"))()
end
})
Tab:AddButton({
	Name = "脚本2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheScriptMaster1/RSZ-Hub/main/loadstring.lua"))()
end
})
local Tab = Window:MakeTab({
    Name = "刀刃球",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "刀刃球1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/eng"))()
end
})
Tab:AddButton({
	Name = "刀刃球2",
	Callback = function()
loadstring(game:HttpGet("https://paste.gg/p/anonymous/1734a4ee207844b994df2f36157afacd/files/1e79ac12fc8a47ef8263d5e9d43b7137/raw"))()
end
})

local Tab = Window:MakeTab({
    Name = "奇怪的严格爸爸",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "奇怪的严格爸爸",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/yBloodz/Free-scripts/main/Weird%20Strict%20Dad"))()
end
})
local Tab = Window:MakeTab({
    Name = "彩虹朋友",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "彩虹朋友",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
end
})
local Tab = Window:MakeTab({
    Name = "忍者传奇",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "忍者传奇",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/5repo/main/script4.lua"))()
end
})

Tab:AddButton({
	Name = "忍者传奇2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/why-png/scriptstuffz/master/ninjaleg2", true))()
end
})

local Tab = Window:MakeTab({
    Name = "自然灾害模拟器",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "自然灾害",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/MrWitzbold/Natural-disaster-survival-GUI/main/main.lua'),true))()
end
})

local Tab = Window:MakeTab({
    Name = "兵工厂",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZinityDrops/OwlHubLink/master/OwlHubBack.lua"))();
end
})

local Tab = Window:MakeTab({
    Name = "破坏者谜团",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "脚本1",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script"),true))()
end
})

local Tab = Window:MakeTab({
    Name = "The Rake",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "The Rake",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jFn0k6Gz"))()
end
})
Tab:AddButton({
	Name = "The Rake脚本2",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/ikY8F7gv"))()
end
})


local Tab = Window:MakeTab({
    Name = "好玩的",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "猫娘脚本(NEKO)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
end
})

Tab:AddButton({
	Name = "变成蛇",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
end
})

local Tab = Window:MakeTab({
    Name = "EVADE",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "EVADE",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
end
})

local Tab = Window:MakeTab({
    Name = "伐木大亨",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "LuaWare",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
end
})

local Tab = Window:MakeTab({
    Name = "SCP角色扮演",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "SCP角色扮演",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/exehubrblx/SCP-Roleplay/main/script'),true))()
end
})

local Tab = Window:MakeTab({
    Name = "俄亥俄州",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "OHIO",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jaepe/Visurus/main/scripts/Ohio.lua"))()
end
})

Tab:AddButton({
	Name = "OHIO脚本2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Ohio1/main/Robloxgame1"))()
end
})

local Tab = Window:MakeTab({
    Name = "Bed wars(起床战争)",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "起床战争",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/OWJBWKQLAISH/Inferno-X/main/inferno%20X%20V2"))()
end
})

local Tab = Window:MakeTab({
    Name = "迈尔克的僵尸",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "脚本1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/MichaelZombies.lua"))()
end
})

local Tab = Window:MakeTab({
    Name = "蜂群模拟器",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "蜂群脚本",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/AltsegoD/script/master/BeeSwarmSimulator.lua')))()
end
})

local Tab = Window:MakeTab({
    Name = "战争大亨",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "战争大亨脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivex123456/War-Tycoon/main/Script"))()
end
})

local Tab = Window:MakeTab({
    Name = "掌掴大战(巴掌模拟器)",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "巴掌模拟器1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/dizzy_hub/scripts/slap_battles.lua"))()
end
})

local Tab = Window:MakeTab({
    Name = "死亡球",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "死亡球",
	Callback = function()
loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua",true))()
end
})
local Tab = Window:MakeTab({
    Name = "监狱人生",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "监狱人生",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
end
})
Tab:AddButton({
	Name = "监狱人生脚本",
	Callback = function()
loadstring(game:HttpGet('https://paste.website/p/96d68817-3f1e-4fef-a8b8-9aafdc810329.txt'))()
end
})

local Tab = Window:MakeTab({
    Name = "最强战场",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "最强战场多功能",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SaitamaBattlegrounds.lua"))()
end
})

local Tab = Window:MakeTab({
    Name = "巨魔世界",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "巨魔世界",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RedZenXYZ/WorldOfTrollge/main/World%20Of%20Trollge"))()
end
})

local Tab = Window:MakeTab({
    Name = "力量传奇",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "力量传奇",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/littlegui/main/MuscleLegends"))()
end
})

local Tab = Window:MakeTab({
    Name = "鲨口求生",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "鲨口求生",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
end
})
local Tab = Window:MakeTab({
    Name = "KAT",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "KAT脚本",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/6rd91GZx", true))()
end
})

local Tab = Window:MakeTab({
    Name = "FE脚本",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "黑洞脚本",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/kPcENzLB"))()
end
})

local Tab = Window:MakeTab({
    Name = "越狱",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "越狱脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/opBandwidth/Magma-Core/main/Jailbreak/Main.lua"))()
end
})

local Tab = Window:MakeTab({
    Name = "巨人生存",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "HOHO",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end
})

--// ok actual code ends here

OrionLib:Init()

    else
        game.Players.LocalPlayer:Kick("卡密去加Q群：834451572")
    end
end)