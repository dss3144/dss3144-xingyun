local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/M2Xe4yMB"))()
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
local Window = OrionLib:MakeWindow({Name = "星云脚本", HidePremium = false, SaveConfig = true,IntroText = "星云脚本", ConfigFolder = "星云脚本"})
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "星云脚本"; Text ="星云脚本"; Duration = 4; })

local about = Window:MakeTab({
    Name = "云制作",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("本脚本完全免费")
about:AddParagraph("禁止被圈")
about:AddParagraph("更新日志：内脏与黑火药 back door")

local Tab =Window:MakeTab({
	Name = "公告",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制作者QQ",
	Callback = function()
     setclipboard("3369370682")
  	end
})

Tab:AddButton({
	Name = "复制QQ群",
	Callback = function()
     setclipboard("834451572")
  	end
})

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
    Name = "DOORS",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "门绘图显示",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/doors1"))()
  end
})
Tab:AddButton({
	Name = "DOORS变身脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
end
}) 

Tab:AddButton({
  Name = "磁铁",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
  end
})
Tab:AddButton({
  Name = "可以清除东西的枪",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
  end
})

Tab:AddButton({
  Name = "DOORS低回拉穿墙",
  Callback = function()
    loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
  end
})
Tab:AddButton({
  Name = "剪刀",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
  end
})
Tab:AddButton({
  Name = "骷髅钥匙",
  Callback = function ()
    local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack
  end
})

Tab:AddButton({
	Name = "紫色手电筒（在电梯购买东西的时候使用）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()
end
})  

Tab:AddButton({
	Name = "手电筒（没电会有bug）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
end
})      

Tab:AddButton({
  Name = "极端模式",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/39GKHD55"))()
  end
})
Tab:AddButton({
  Name = "微山",
  Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
  end
})
Tab:AddButton({
  Name = "DOORS多脚本",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/07P53fFE"))()
  end
})

local Tab = Window:MakeTab({
    Name = "灭霸模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
      Name = "出生/复活的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,153,-20)
      end
    })
Tab:AddButton({
      Name = "刷碎片/铸造的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,115,-695)
      end
   })
Tab:AddButton({
      Name = "商店/升级武器的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28,1061,1590)
      end
    })
Tab:AddButton({
      Name = "时间宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(444.5,117,443.5)
      end
    })
Tab:AddButton({
      Name = "空间宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-412,73,-444)
      end
    })
Tab:AddButton({
      Name = "现实宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-420,13,690)
      end
    })
Tab:AddButton({
      Name = "能量宝石怪的位置（建议开夜视）",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(433,55,-326)
      end
    })
Tab:AddButton({
      Name = "灭霸模拟器快速自杀",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999,-4985,99999)
      end
    })
local Tab = Window:MakeTab({
  Name = "脚本集(会覆盖)",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

Tab:AddButton({
  Name = "龙脚本",
  Callback = function()
    getgenv().long = "龙脚本，加载时间长请耐心"loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\108\121\121\97\105\110\105\47\108\111\110\47\109\97\105\110\47\108\105\115\119\109\34\41\41\40\41")()
  end
})

Tab:AddButton({
  Name = "USA（卡密：USA AER）",
  Callback = function()
    getgenv().USA="作者莫羽免费请勿倒卖"loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
  end
})

Tab:AddButton({
	Name = "波奇塔自制脚本",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,113,109,55,76,121,119,82,117})end)())))()
end
})    
Tab:AddButton({
  Name = "脚本中心",
  Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
  end
})

Tab:AddButton({
  Name = "MSDOORS2.4(纯英文)",
  Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
  end
})
local Tab = Window:MakeTab({
  Name = "DOORS娱乐十字架(只对自己召唤的怪有用)",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

Tab:AddButton({
  Name = "刷怪菜单",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shuaguai"))()
  end
})

Tab:AddButton({
  Name = "耶稣十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi2"))()
  end
})

Tab:AddButton({
  Name = "紫光十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi3"))()
  end
})

Tab:AddButton({
  Name = "万圣节十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi4"))()
  end
})

Tab:AddButton({
  Name = "普通十字架",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizizhen"))()
  end
})

local Tab = Window:MakeTab({
    Name = "内脏与黑火药",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "内脏与黑火药(不保证能用)",
	Callback = function()
loadstring(game:HttpGet("https://shz.al/~LIN_HONG/HongSha_Linni内脏与黑火药.lua"))()
end
})

local Tab = Window:MakeTab({
    Name = "backdoor",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "backdoor(云汉化)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dss3144/backdoor/main/backdoor.lua"))()
end
})

local Tab = Window:MakeTab({
    Name = "自然灾害",
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
    Name = "备用战场",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "备用战场（自动闪避）",
	Callback = function()	
	
--[Made by ThroughTheFireAndFlames#9925]
--[https://www.roblox.com/games/8573962925/Alternate-Battlegrounds-apil-fools]--

getgenv().AutoExecute = true 

getgenv().Keybind = "V"
getgenv().Distance = 35

getgenv().Aura = true 
getgenv().Sounds = true

getgenv().LookAtNearestPlayer = false
getgenv().LookAtDistance  = 25
getgenv().LookAtKeybind = "V" 

loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/AB/main/Ui"))();
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
	Name = "红圈格挡⭕️(中文)",
	Callback = function()
loadstring(game:HttpGet("https://shz.al/~xiaoye/red⭕️AutoBlock.txt"))()
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

local Tab = Window:MakeTab({
	Name = "超级大力士模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local Section = Tab:AddSection({
	Name = "超级大力士模拟器"
})
 
Tab:AddButton({
	Name = "传送到开始区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, -198.07127380371094)
  	end    
})
 
Tab:AddButton({
	Name = "传送到健身区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, -10.266206741333008)
  	end    
})
 
Tab:AddButton({
	Name = "传送到食物区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
  	end    
})
 
Tab:AddButton({
	Name = "传送到街机区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到农场区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到城堡区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到蒸汽朋克区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到迪斯科区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到太空区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到糖果区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到实验室区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到热带区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到恐龙区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到复古区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到冬季区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到深海区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到狂野西部区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到豪华公寓区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到宝剑战斗区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到童话区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976562, 11.313281059265137, 14034.50390625)
  	end    
})
 
Tab:AddButton({
	Name = "传送到桃花区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到厨房区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到下水道区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
  	end    
})

local Tab = Window:MakeTab({
    Name = "灭霸模拟器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
      Name = "出生/复活的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,153,-20)
      end
    })
Tab:AddButton({
      Name = "刷碎片/铸造的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20,115,-695)
      end
   })
Tab:AddButton({
      Name = "商店/升级武器的地方",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-28,1061,1590)
      end
    })
Tab:AddButton({
      Name = "时间宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(444.5,117,443.5)
      end
    })
Tab:AddButton({
      Name = "空间宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-412,73,-444)
      end
    })
Tab:AddButton({
      Name = "现实宝石的位置",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-420,13,690)
      end
    })
Tab:AddButton({
      Name = "能量宝石怪的位置（建议开夜视）",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(433,55,-326)
      end
    })
Tab:AddButton({
      Name = "灭霸模拟器快速自杀",
      Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999,-4985,99999)
      end
    })

local Tab = Window:MakeTab({
    Name = "脚本",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "操b脚本",
	Callback = function()
	--Variables
 
 
local SimpleSexGUI = Instance.new("ScreenGui")
 
local FGUI = Instance.new("Frame")
 
local btnNaked = Instance.new("TextButton")
 
local btnSex = Instance.new("TextButton")
 
local tbxVictim = Instance.new("TextBox")
 
local lblFUCKEMALL = Instance.new("TextLabel")
 
local ImageLabel = Instance.new("ImageLabel")
 
local lbltitle = Instance.new("TextLabel")
 
local TextLabel = Instance.new("TextLabel")
 
 
 
 
 
 
 
 
--Properties
 
SimpleSexGUI.Name = "SimpleSexGUI"
SimpleSexGUI.Parent = game.CoreGui
 
 
FGUI.Name = "FGUI"
FGUI.Parent = SimpleSexGUI
FGUI.BackgroundColor3 = Color3.new(255,255,255)
FGUI.BorderSizePixel = 1
FGUI.Position = UDim2.new(0,0, 0.667, 0)
FGUI.Size = UDim2.new(0,317, 0,271)
FGUI.Draggable = true
 
 
 
lbltitle.Name = "Title"
lbltitle.Parent = FGUI
lbltitle.BackgroundColor3 = Color3.new(255,255,255)
lbltitle.BorderSizePixel = 1
lbltitle.Position = UDim2.new (0, 0,-0.122, 0)
lbltitle.Size = UDim2.new (0, 317,0, 33)
lbltitle.Visible = true
lbltitle.Active = true
lbltitle.Draggable = false
lbltitle.Selectable = true
lbltitle.Font = Enum.Font.SourceSansBold
lbltitle.Text = "一个简单的操蛋脚本!!"
lbltitle.TextColor3 = Color3.new(0, 0, 0)
lbltitle.TextSize = 20
 
 
 
 
 
btnSex.Name = "Sex"
btnSex.Parent = FGUI
btnSex.BackgroundColor3 = Color3.new(255,255,255)
btnSex.BorderSizePixel = 1
btnSex.Position = UDim2.new (0.044, 0,0.229, 0)
btnSex.Size = UDim2.new (0, 99,0, 31)
btnSex.Visible = true
btnSex.Active = true
btnSex.Draggable = false
btnSex.Selectable = true
btnSex.Font = Enum.Font.SourceSansBold
btnSex.Text = "让我们操蛋吧!!"
btnSex.TextColor3 = Color3.new(0, 0, 0)
btnSex.TextSize = 20
 
 
 
 
tbxVictim.Name = "VictimTEXT"
tbxVictim.Parent = FGUI
tbxVictim.BackgroundColor3 = Color3.new(255,255,255)
tbxVictim.BorderSizePixel = 1
tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0)
tbxVictim.Size = UDim2.new (0, 133,0, 27)
tbxVictim.Visible = true
tbxVictim.Active = true
tbxVictim.Draggable = false
tbxVictim.Selectable = true
tbxVictim.Font = Enum.Font.SourceSansBold
tbxVictim.Text = "名字"
tbxVictim.TextColor3 = Color3.new(0, 0, 0)
tbxVictim.TextSize = 20
 
lblFUCKEMALL.Name = "FUCKEMALL"
lblFUCKEMALL.Parent = FGUI
lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255)
lblFUCKEMALL.BorderSizePixel = 1
lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0)
lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27)
lblFUCKEMALL.Visible = true
lblFUCKEMALL.Font = Enum.Font.SourceSansBold
lblFUCKEMALL.Text = "操蛋和操蛋"
lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
lblFUCKEMALL.TextSize = 20
 
ImageLabel.Name = "ImageLabel"
ImageLabel.Parent = FGUI
ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..."
ImageLabel.BorderSizePixel = 1
ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0)
ImageLabel.Size = UDim2.new (0, 106,0, 121)
 
 
 
 
--Scripts
 
 
btnSex.MouseButton1Click:Connect(function()
 
local player = tbxVictim.Text
local stupid = Instance.new('Animation')
stupid.AnimationId = 'rbxassetid://148840371'
hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
pcall(function()
    hummy.Parent.Pants:Destroy()
end)
pcall(function()
    hummy.Parent.Shirt:Destroy()
end)
local notfunny = hummy:LoadAnimation(stupid)
notfunny:Play()
notfunny:AdjustSpeed(10)
while hummy.Parent.Parent ~= nil do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
end
end)
end
})

local Tab = Window:MakeTab({
    Name = "一路向西",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "防摔",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040712770")[1].Source)()
	end
})
Tab:AddButton({
	Name = "防套",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040719318")[1].Source)()
	end
})
Tab:AddButton({
	Name = "范围",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040722920")[1].Source)()
	end
})
Tab:AddButton({
	Name = "无后座，无限，超级",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
	end
})

Tab:AddButton({
	Name = "小云V1.0.4)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/XiaoYunbarkV1.0.4.lua"))()
end
})
Tab:AddButton({
	Name = "小云V1.0.6)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/XiaoYun_currentedition_beta.lua"))()
end
})
Tab:AddButton({
	Name = "云脚本2.0",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/Xiao______________________________________________________________Yun__________________________________________________________________________betaV2.0.lua"))()
end
})

Tab:AddButton({
	Name = "微山白脚本",
	Callback = function()
	--白脚本0.0.5(微山工作室)[已修复]loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\75\113\117\97\68\70\53\120\34\41\41\40\41\10")()
	end
})

Tab:AddButton({
	Name = "bf",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "10",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-HUB/HUB/main/Mobile-V2"))()
	end
})
Tab:AddButton({
	Name = "9",
	Callback = function()
		loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\101\115\116\120\101\109\99\104\117\97\47\97\103\97\103\97\103\97\113\47\109\97\105\110\47\85\105\47\104\104\104\46\108\117\97\34\41\41\40\41\10")()
	end
})
Tab:AddButton({
	Name = "7",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BlodyXHub/ZeusHub/main/Loading_Ui"))()
	end
})
Tab:AddButton({
	Name = "6",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
	end
})
Tab:AddButton({
	Name = "5",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/STRAW%20HUB%20RELEASE", true))()
	end
})
Tab:AddButton({
	Name = "4",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Sixnumz/ZamexMobile/main/Zamex_Mobile.lua'))()
	end
})

local Tab = Window:MakeTab({
    Name = "变异微笑",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

local Section = other:AddSection({
	Name = "↓开始吧！USA！↓"
})

other:AddButton({
	Name = "变异微笑",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/InfectiousSmile.lua", true))()
  	end
})

local Tab = Window:MakeTab({
    Name = "寻宝任务",
	Icon = "rbxassetid://16385658023",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "寻宝任务",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Megziku/FreeTest/main/TreasureQuestOPSCRIPT"))()
  	end    
})