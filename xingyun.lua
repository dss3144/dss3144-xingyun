local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui

CoreGui:SetCore("SendNotification", {
    -- Customizable
    Title = "白名单认证",
    Text = "白名单验证...",
    Duration = 3, --时间
})

local CoreGui = game:GetService("StarterGui") -- Variable of StarterGui

local Whitelisted = false;

if game.Players.LocalPlayer.Name == "dss3144" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "usualuspop" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "mcxiaoyan_114514" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "tgedujb" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "Sansman369" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "luo_xinze" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "vjeohbev_nb" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "kiun114514x" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "English58u" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "acti101010" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无i" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end

if game.Players.LocalPlayer.Name == "无" then 
Whitelisted = true 
end
if Whitelisted == true then

CoreGui:SetCore("SendNotification", {
    -- Customizable
    Title = "白名单认证",
    Text = "玩家:"..game.Players.LocalPlayer.Name.."，你是白名单玩家，稍后会加载脚本",
    Duration = 7, --时间
})

   
   repeat task.wait() until game:IsLoaded()
local library = {}
local ToggleUI = false
library.currentTab = nil
library.flags = {}

local services = setmetatable({}, {
  __index = function(t, k)
    return game.GetService(game, k)
  end
})

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
LBL.Text = "欢迎使用"
LBL.TextColor3 = Color3.new(250,250,250)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

Heartbeat:Connect(HeartbeatUpdate)
CoreGui:SetCore("SendNotification", {
    Title = "星云脚本",
    Text = "正在加载（反挂机已开启）",
    Duration = 5, 
})
print("反挂机开启")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
local OrionLib = loadstring(game:HttpGet('https://pastebin.com/raw/FUEx0f3G'))()
local Window = OrionLib:MakeWindow({Name = "星云脚本", HidePremium = false, SaveConfig = true,IntroText = "欢迎使用星云脚本", ConfigFolder = "欢迎使用星云脚本"})
local about = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")

local about = Window:MakeTab({
    Name = "人物/通用",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddDropdown({
    Name = "传送玩家",
    Default = playerNames[1] or "No Players",
    Options = playerNames,
    Callback = function(selectedplrName)
        local targetPlayer = plrs:FindFirstChild(selectedplrName)
        
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            -- Teleporting your character to the selected player's position
            local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
            local localPlayerRoot = plrs.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            
            if localPlayerRoot then
                localPlayerRoot.CFrame = CFrame.new(targetPosition)
            end
        end
        print(selectedplrName)
    end    
})
Tab:AddTextbox({
	Name = "范围修改",
	Default = "",
	TextDisappear = true,
	Callback = function(value)
	  print(value)
_G.HeadSize = value
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
   end
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
Tabr:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
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

local player = Window:MakeTab({
	Name = "DOORS",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "手电筒(2024)",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()
  	end
})

player:AddButton({ 
	Name = "夜视仪(2024)",
	Callback = function()
  _G.TFPS = 114514 --自定义帧率
_G.B = "星云脚本" --自定义型号
_G.HighRes = true
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XT-CN/UwU/main/table')))()
  	end
})

player:AddButton({ 
	Name = "原版夜视仪(2024)",
	Callback = function()
  _G.TFPS = 30  --自定义帧率
_G.B = "NVCS-3000" --自定义型号
_G.HighRes = false
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XT-CN/UwU/main/table')))()
  	end
})

player:AddButton({ 
	Name = "永久维生素",
	Callback = function()
      	getgenv().CustomVitamins = {
    SpeedBoost = 7, -----速度设置
    EffectDuration = 99999 -----持续时间设置
}

loadstring(game:HttpGet("https://shz.al/~wss/维生素"))()
  	end
})

player:AddButton({ 
	Name = "(闪电侠)维生素(愚人节用)",
	Callback = function()
      	getgenv().CustomVitamins = {
    SpeedBoost = 99999999, -----速度设置
    EffectDuration = 5 -----持续时间设置
}

loadstring(game:HttpGet("https://shz.al/~wss/维生素"))()
  	end
})

player:AddButton({ 
	Name = "维生素",
	Callback = function()
      	getgenv().CustomVitamins = {
    SpeedBoost = 7, -----速度设置
    EffectDuration = 5 -----持续时间设置
}

loadstring(game:HttpGet("https://shz.al/~wss/维生素"))()
  	end
})

player:AddButton({ 
	Name = "夜视仪(可在商场购买2024)",
	Callback = function()
  loadstring(game:HttpGet(("https://shz.al/xdD4t4hyYYW8CJzKeepZKtEP"),true))()
  	end
})

player:AddButton({ 
	Name = "十字架(2024)",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/Doors/Crucifix.lua'))()
  	end
})

player:AddButton({ 
	Name = "无限十字架",
	Callback = function()
      	local function IsVisible(part)
    local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
    local onscreen = found and vec.Z > 0
    local cfg = RaycastParams.new()
    cfg.FilterType = Enum.RaycastFilterType.Blacklist
    cfg.FilterDescendantsInstances = {part}

    local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg)
    if onscreen then
        if cast and (cast and cast.Instance).Parent==game.Players.LocalPlayer.Character then
            return true
        end
    end
end

local Equipped = false

-- Edit this --
getgenv().spawnKey = Enum.KeyCode.F4
---------------

-- Services

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

-- Variables

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local Root = Char:WaitForChild("HumanoidRootPart")
local RightArm = Char:WaitForChild("RightUpperArm")
local LeftArm = Char:WaitForChild("LeftUpperArm")

local RightC1 = RightArm.RightShoulder.C1
local LeftC1 = LeftArm.LeftShoulder.C1

local SelfModules = {
    Functions = loadstring(
        game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua")
    )(),
    CustomShop = loadstring(
        game:HttpGet(
            "https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"
        )
    )(),
}

local ModuleScripts = {
    MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
    SeekIntro = require(Plr.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Cutscenes.SeekIntro),
}

-- Functions

local function setupCrucifix(tool)
    tool.Equipped:Connect(function()
        Equipped = true
        Char:SetAttribute("Hiding", true)
        for _, v in next, Hum:GetPlayingAnimationTracks() do
            v:Stop()
        end

        RightArm.Name = "R_Arm"
        LeftArm.Name = "L_Arm"

        RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
        LeftArm.LeftShoulder.C1 = LeftC1
            * CFrame.new(-0.2, -0.3, -0.5)
            * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
    end)

    tool.Unequipped:Connect(function()
        Equipped = false
        Char:SetAttribute("Hiding", nil)
        RightArm.Name = "RightUpperArm"
        LeftArm.Name = "LeftUpperArm"

        RightArm.RightShoulder.C1 = RightC1
        LeftArm.LeftShoulder.C1 = LeftC1
    end)
end

-- Scripts

local CrucifixTool = game:GetObjects("rbxassetid://12225327090")[1]
CrucifixTool.Name = "Crucifix"
CrucifixTool.Parent = game.Players.LocalPlayer.Backpack

-- game.UserInputService.InputBegan:Connect(function(input, proc)
--     if proc then return end

--     if input.KeyCode == input.KeyCode[getgenv().spawnKey] then
--         local CrucifixTool = game:GetObjects("rbxassetid://11746137630")[1]
--         CrucifixTool.Name = "Crucifix"
--         CrucifixTool.Parent = game.Players.LocalPlayer.Backpack
--     end
-- end)
-- Input handler

setupCrucifix(CrucifixTool)

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

-- Variables

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local Root = Char:WaitForChild("HumanoidRootPart")

local dupeCrucifix = Instance.new("BindableEvent")
local function func(ins)
    wait(.01) -- Wait for the attribute
    if ins:GetAttribute("IsCustomEntity")==true and ins:GetAttribute("ClonedByCrucifix")~=true then
        local Chains = game:GetObjects("rbxassetid://12225365736")[1]
        Chains.Parent = workspace
        local chained = true
        local posTime = false
        local rotTime = false
        local tweenTime = false
        local intFound = true

        game:GetService("RunService").RenderStepped:Connect(function()
            if Equipped then
                if ins.Parent~=nil and ins.PrimaryPart and IsVisible(ins.PrimaryPart) and (Root.Position-ins.PrimaryPart.Position).magnitude <= 25 then
                    local c=ins:Clone()
                    c:SetAttribute("ClonedByCrucifix", true)
                    c.RushNew.Anchored=true
                    c.Parent=ins.Parent
                    ins:Destroy()
                    dupeCrucifix:Fire(6,c.RushNew)


                    
                    -- Chains.PrimaryPart.Orientation = Chains.PrimaryPart.Orientation + Vector3.new(0, 3, 0)

                    local EntityRoot = c:FindFirstChild("RushNew")

                    if EntityRoot then



                        local Fake_FaceAttach = Instance.new("Attachment")
                        Fake_FaceAttach.Parent = EntityRoot
                        

                        for i, beam in pairs(Chains:GetDescendants()) do
                            if beam:IsA("BasePart") then
                                beam.CanCollide = false
                            end
                            if beam.Name == "Beam" then
                                beam.Attachment1 = Fake_FaceAttach
                            end
                        end
                        
                        if not posTime then
                            Chains:SetPrimaryPartCFrame(
                                EntityRoot.CFrame * CFrame.new(0, -3.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
                            )
                            posTime = true
                        end

                        task.wait(1.35)
                        if not tweenTime then

                            task.spawn(function()
                                while task.wait() do
                                    if Chains:FindFirstChild('Base') then
                                        Chains.Base.CFrame = Chains.Base.CFrame * CFrame.Angles(0,0 , math.rad(0.5))
                                    end
                                end
                            end)

                            task.spawn(function()
                                while task.wait() do
                                    for i, beam in pairs(Chains:GetDescendants()) do
                                        if beam.Name == "Beam" then
                                            beam.TextureLength = beam.TextureLength+0.035
                                        end
                                    end
                                end
                            end)


                            game.TweenService
                                :Create(
                                    EntityRoot,
                                    TweenInfo.new(6),
                                    { CFrame = EntityRoot.CFrame * CFrame.new(0, 50, 0) }
                                )
                                :Play()
                            

                            tweenTime = true
                            task.wait(1.5)
                            intFound = false
                            game:GetService("Debris"):AddItem(c, 0)
                            game:GetService("Debris"):AddItem(Chains, 0)
                        end
                    end
                end
            end
        end)
    elseif ins.Name=="Lookman" then
        local c=ins
        task.spawn(function()
            repeat task.wait() until IsVisible(c.Core) and Equipped and c.Core.Attachment.Eyes.Enabled==true
            local pos=c.Core.Position
            dupeCrucifix:Fire(18.364, c.Core)
            task.spawn(function()
                c:SetAttribute("Killing", true)
                ModuleScripts.MainGame.camShaker:ShakeOnce(10, 10, 5, 0.15)
                wait(5)
                c.Core.Initiate:Stop()
                for i=1,3 do
                    c.Core.Repent:Play()  
                    c.Core.Attachment.Angry.Enabled=true
                    ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, 1.3, 0.15)
                    delay(c.Core.Repent.TimeLength, function() c.Core.Attachment.Angry.Enabled=false end)
                    wait(4)
                end
                c.Core.Scream:Play();
                ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, c.Core.Scream.TimeLength, 0.15);
                (c.Core:FindFirstChild"whisper" or c.Core:FindFirstChild"Ambience"):Stop()
                for _, l in pairs(c:GetDescendants()) do
                    if l:IsA("PointLight") then
                        l.Enabled=false
                    end
                end
                game:GetService("TweenService"):Create(c.Core, TweenInfo.new(c.Core.Scream.TimeLength, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                    CFrame=CFrame.new(c.Core.CFrame.X, c.Core.CFrame.Y-12, c.Core.CFrame.Z)
                }):Play()
            end)
            local col=game.Players.LocalPlayer.Character.Collision

            local function CFrameToOrientation(cf)
                local x, y, z = cf:ToOrientation()
                return Vector3.new(math.deg(x), math.deg(y), math.deg(z))
            end
            
            while c.Parent~=nil and c.Core.Attachment.Eyes.Enabled==true do
                -- who's the boss now huh?
                col.Orientation = CFrameToOrientation(CFrame.lookAt(col.Position, pos)*CFrame.Angles(0, math.pi, 0))
                task.wait()
            end
        end)
    elseif ins.Name=="Shade" and ins.Parent==workspace.CurrentCamera and ins:GetAttribute("ClonedByCrucifix")==nil then
        task.spawn(function()
            repeat task.wait() until IsVisible(ins) and (Root.Position-ins.Position).Magnitude <= 12.5 and Equipped

            local clone = ins:Clone()

            clone.CFrame = ins.CFrame
            clone.Parent = ins.Parent
            clone.Anchored = true

            ins:Remove()

            dupeCrucifix:Fire(13, ins)
            ModuleScripts.MainGame.camShaker:ShakeOnce(40, 10, 5, 0.15)



            for _, thing in pairs(clone:GetDescendants()) do
                if thing:IsA("SpotLight") then
                    game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
                        Brightness=thing.Brightness*5
                    }):Play()
                elseif thing:IsA("Sound") and thing.Name~="Burst" then
                    game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
                        Volume=0
                    }):Play()
                elseif thing:IsA("TouchTransmitter") then thing:Destroy() end
            end

            for _, pc in pairs(clone:GetDescendants()) do
                if pc:IsA("ParticleEmitter") then
                        pc.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.48, Color3.fromRGB(182, 0, 3)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
                end
            end

            local Original_color = {}

            local light
            light = game.Lighting["Ambience_Shade"]
            game:GetService("TweenService"):Create(light, TweenInfo.new(1), {


            }):Play()

            wait(5)

            clone.Burst.PlaybackSpeed=0.5
            clone.Burst:Stop()
            clone.Burst:Play()
            light.TintColor = Color3.fromRGB(215,253,255)
            game:GetService("TweenService"):Create(clone, TweenInfo.new(6), {
                CFrame=CFrame.new(clone.CFrame.X, clone.CFrame.Y-12, clone.CFrame.Z)
            }):Play()
            wait(8.2)

            game:GetService("Debris"):AddItem(clone, 0)
            game.ReplicatedStorage.Bricks.ShadeResult:FireServer()
        end)
    end
end

workspace.ChildAdded:Connect(func)
workspace.CurrentCamera.ChildAdded:Connect(func)
for _, thing in pairs(workspace:GetChildren()) do
    func(thing)
end
dupeCrucifix.Event:Connect(function(time, entityRoot)
    local Cross = game:GetObjects("rbxassetid://11840790614")[1]
    Cross.Parent = workspace

    local fakeCross = Cross.Handle

    -- fakeCross:FindFirstChild("EffectLight").Enabled = true

    ModuleScripts.MainGame.camShaker:ShakeOnce(35, 25, 0.15, 0.15)
    -- you tell me i didnt make?
    fakeCross.CFrame = CFrame.lookAt(CrucifixTool.Handle.Position, entityRoot.Position)
    
    -- hl.Parent = model
    -- hl.FillTransparency = 1
    -- hl.OutlineColor = Color3.fromRGB(75, 177, 255)
    fakeCross.Anchored = true

    CrucifixTool:Destroy()

    -- for i, v in pairs(fakeCross:GetChildren()) do
    --     if v.Name == "E" and v:IsA("BasePart") then
    --         v.Transparency = 0
    --         v.CanCollide = false
    --     end
    --     if v:IsA("Motor6D") then
    --         v.Name = "Motor6D"
    --     end
    -- end

    task.wait(time)
    fakeCross.Anchored = false
    fakeCross.CanCollide = true
    task.wait(0.5)
    Cross:Remove()
end)

-- credits
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "唔，十字架114514xhxh")
-- alex W
-- alex W

-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
  	end
})

player:AddButton({ 
	Name = "十字架",
	Callback = function()
  loadstring(game:HttpGet('https://gist.githubusercontent.com/C00LBOZO/0c78ad8c74ca26324c87ede16ce8b387/raw/c0887ac0d24fde80bea11ab1a6a696ec296af272/Crucifix'))()
  	end
})

player:AddButton({ 
	Name = "神圣炸弹",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
  	end
})

player:AddButton({ 
	Name = "手电筒",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
  	end
})

player:AddButton({ 
	Name = "吸铁石",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
   end
})

player:AddButton({ 
	Name = "剪刀",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
   end
})

player:AddButton({ 
	Name = "夜视仪",
	Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
   end
})

player:AddButton({ 
	Name = "骷髅钥匙",
	Callback = function()
  local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack
   end
})

player:AddButton({ 
	Name = "耶稣十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi2"))()
   end
})

player:AddButton({ 
	Name = "紫光十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi3"))()
   end
})

player:AddButton({ 
	Name = "万圣节十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi4"))()
   end
})

player:AddButton({ 
	Name = "Zepsyy十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/Crucifix"))()
   end
})

player:AddButton({ 
	Name = "Screech十字架",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/W1AzELhb"))()
   end
})

player:AddButton({ 
	Name = "闪电⚡️",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Zeus%20Lightning"))()
   end
})

player:AddButton({ 
	Name = "火焰🔥魔法书",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book"))()
   end
})

player:AddButton({ 
	Name = "seek枪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/seekgun.lua"))()
   end
})

player:AddButton({ 
	Name = "炮",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/%E8%BD%B0%E7%82%B8.lua"))()
   end
})

player:AddButton({ 
	Name = "上帝（商场用）",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/j2Gad4gQ'))()
   end
})

player:AddButton({ 
	Name = "手电筒",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/Jub8w6jz"))()
   end
})

player:AddButton({ 
	Name = "Halt十字架",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/Xfj1mfnV'))()
   end
})

player:AddButton({ 
	Name = "十字架",
	Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Johnny39871/assets/main/crucifixo'))()
   end
})

player:AddButton({ 
	Name = "每件物品蓝光",
	Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/StupidProAArsenal/main/main/deer%20customs',true))()
   end
})

player:AddButton({ 
	Name = "把seek变成只因",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Chicken%20Mod.lua", true))()
   end
})

player:AddButton({ 
	Name = "Doors自走A-1000",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/wjNJccfz'))()
   end
})

player:AddButton({ 
	Name = "魔鬼辣火腿肠",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/musical-pancake/main/huo.txt"))()
   end
})

player:AddButton({ 
	Name = "喷火枪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Flamethrower"))()
   end
})

player:AddButton({ 
	Name = "小鸡在手上",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/PFERptU5", true))()
   end
})

player:AddButton({ 
	Name = "木棍（0门用）",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Debug%20Stick"))()
   end
})

player:AddButton({ 
	Name = "瞄准用枪",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/uNTM7sa1'))()
   end
})

player:AddButton({ 
	Name = "火柜（商场用",
	Callback = function()
  local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "火炬（114514xhxh(魔改)",
    Desc = "一个火炬",
    Reason = "享受吧！",
    Image = "https://cdn.discordapp.com/attachments/882940450288324658/1046404183101800558/image.png",
})

local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://3499523244")

CustomShop.CreateItem(exampleTool, {
    Title = "火炬",
    Desc = "114514xhxh优化",
    Image = "https://cdn.discordapp.com/attachments/882940450288324658/1046404183101800558/image.png",
    Price = 0,
    Stack = 1,
})
   end
})

player:AddButton({ 
	Name = "雪球",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/every-gun/main/christmas%20balls"))()
   end
})

player:AddButton({ 
	Name = "让大厅成为快餐店",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/MCDonalds"))()
   end
})

player:AddButton({ 
	Name = "召唤黑洞",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua"))()
   end
})

player:AddButton({ 
	Name = "夜视仪2（商场用",
	Callback = function()
  local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "可能有些注入器用不了。（114514xhxh(魔改)",
    Desc = "我看得到一切！",
    Reason = "（获得夜视仪）",
    Image = "https://tr.rbxcdn.com/f081ec175b5cf6fa3158a40e3aa315c2/420/420/Decal/Png",
})

local Functions = loadstring(game:HttpGet('https://pastebin.com/raw/bucRxAMi'))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://4483345998")

CustomShop.CreateItem(exampleTool, {
    Title = "夜视仪",
    Desc = "我看得到一切！",
    Image = "https://tr.rbxcdn.com/f081ec175b5cf6fa3158a40e3aa315c2/420/420/Decal/Png",
    Price = 100000,
    Stack = 1,
})
   end
})

player:AddButton({ 
	Name = "rush",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/XdK7"))()
   end
})

player:AddButton({ 
	Name = "夜视仪3",
	Callback = function()
  _G.UpdateStars = false -- stars disappear after picking up a book/breaker pole | false: a little lag
		_G.OnShop = true -- can buy on pre run shop
		_G.Price = 10 -- tablet price on shop
		_G.Description = "" -- tablet description on shop

		loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/doorsshexiang"))()
   end
})

player:AddButton({ 
	Name = "ak47",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Mye123/Roblox-Scripts/master/AK-47.lua"))()
   end
})

player:AddButton({ 
	Name = "软糖手电筒",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Gummy%20Flashlight.lua"))()
   end
})

player:AddButton({ 
	Name = "火箭筒",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/rushbazooka.lua"))()
   end
})

player:AddButton({ 
	Name = "蜡烛",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Items/Candle.lua"))()
   end
})

player:AddButton({ 
	Name = "枪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/gffddhfdf/ssd/main/message%20(3).txt"))()
   end
})

player:AddButton({ 
	Name = "夜视仪4",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/4Vsv1Xwn"))()
   end
})

player:AddButton({ 
	Name = "可以清除东西的枪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
   end
})

player:AddButton({ 
	Name = "手电筒",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
   end
})

player:AddButton({ 
	Name = "时间裂缝",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/bucRxAMi'))()
   end
})

player:AddButton({ 
	Name = "jeff玩偶",
	Callback = function()
  local tool = game:GetObjects("rbxassetid://13069619857")[1]
tool.Parent = game.Players.LocalPlayer.Backpack
   end
})

player:AddButton({ 
	Name = "screech抱枕",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/W6LhkY6r'))()
   end
})

player:AddButton({ 
	Name = "火剑（商场用",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/6zqzsyQC'))()
   end
})

player:AddButton({ 
	Name = "彩虹剑（商场用",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/TGFuqWjw'))()
  	end
})

player:AddButton({ 
	Name = "万圣节十字架",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/Ge4kGwrG"))()
local Details = {
    Description = "我不该出现在这里",
    Title = "万圣节十字架",
    Reason =  ""
}

local LocalPlayer = game.Players.LocalPlayer;
local GUI = LocalPlayer.PlayerGui.MainUI
local TweenService = game:GetService("TweenService");
local AchievementsHolder = GUI.AchievementsHolder.Achievement:Clone();
AchievementsHolder.Size = UDim2.new(0, 0, 0, 0);
AchievementsHolder.Frame.Position = UDim2.new(1.1, 0, 0, 0);
AchievementsHolder.Name = "LiveAchievement";
AchievementsHolder.Visible = true;
AchievementsHolder.Parent = GUI.AchievementsHolder;
AchievementsHolder.Frame.Details.Desc.Text = Details.Description
AchievementsHolder.Frame.Details.Title.Text = Details.Title
AchievementsHolder.Frame.Details.Reason.Text = Details.Reason
AchievementsHolder.Sound:Play();
AchievementsHolder:TweenSize(UDim2.new(1, 0, 0.2, 0), "In", "Quad", 0.8, true);
wait(0.8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true);
TweenService:Create(AchievementsHolder.Frame.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
    ImageTransparency = 1
		}):Play();
		wait(8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(1.1, 0, 0, 0), "In", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:TweenSize(UDim2.new(1, 0, -0.1, 0), "InOut", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:Destroy();
  	end
})

player:AddButton({ 
	Name = "圣诞节十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/bbamxbbamxbbamx/codespaces-blank/main/%E5%8D%81%E5%AD%97%E6%9E%B6"))()
local Details = {
    Description = "这可真是个好地方",
    Title = "圣诞节十字架",
    Reason =  ""
}

local LocalPlayer = game.Players.LocalPlayer;
local GUI = LocalPlayer.PlayerGui.MainUI
local TweenService = game:GetService("TweenService");
local AchievementsHolder = GUI.AchievementsHolder.Achievement:Clone();
AchievementsHolder.Size = UDim2.new(0, 0, 0, 0);
AchievementsHolder.Frame.Position = UDim2.new(1.1, 0, 0, 0);
AchievementsHolder.Name = "LiveAchievement";
AchievementsHolder.Visible = true;
AchievementsHolder.Parent = GUI.AchievementsHolder;
AchievementsHolder.Frame.Details.Desc.Text = Details.Description
AchievementsHolder.Frame.Details.Title.Text = Details.Title
AchievementsHolder.Frame.Details.Reason.Text = Details.Reason
AchievementsHolder.Sound:Play();
AchievementsHolder:TweenSize(UDim2.new(1, 0, 0.2, 0), "In", "Quad", 0.8, true);
wait(0.8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true);
TweenService:Create(AchievementsHolder.Frame.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
    ImageTransparency = 1
		}):Play();
		wait(8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(1.1, 0, 0, 0), "In", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:TweenSize(UDim2.new(1, 0, -0.1, 0), "InOut", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:Destroy();
  	end
})

player:AddButton({ 
	Name = "自定义夜视仪",
	Callback = function()
      	loadstring(game:HttpGet("https://github.com/DocYogurt/script/raw/main/tablet"))()
  	end
})

player:AddButton({ 
	Name = "无眼十字架",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/xiFQRinF"))()
local Details = {
    Description = "这是哪里",
    Title = "figure十字架",
    Reason =  "我不因该在等待着你吗?"
}

local LocalPlayer = game.Players.LocalPlayer;
local GUI = LocalPlayer.PlayerGui.MainUI
local TweenService = game:GetService("TweenService");
local AchievementsHolder = GUI.AchievementsHolder.Achievement:Clone();
AchievementsHolder.Size = UDim2.new(0, 0, 0, 0);
AchievementsHolder.Frame.Position = UDim2.new(1.1, 0, 0, 0);
AchievementsHolder.Name = "LiveAchievement";
AchievementsHolder.Visible = true;
AchievementsHolder.Parent = GUI.AchievementsHolder;
AchievementsHolder.Frame.Details.Desc.Text = Details.Description
AchievementsHolder.Frame.Details.Title.Text = Details.Title
AchievementsHolder.Frame.Details.Reason.Text = Details.Reason
AchievementsHolder.Sound:Play();
AchievementsHolder:TweenSize(UDim2.new(1, 0, 0.2, 0), "In", "Quad", 0.8, true);
wait(0.8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true);
TweenService:Create(AchievementsHolder.Frame.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
    ImageTransparency = 1
		}):Play();
		wait(8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(1.1, 0, 0, 0), "In", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:TweenSize(UDim2.new(1, 0, -0.1, 0), "InOut", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:Destroy();
  	end
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
Tab:AddButton({
	Name = "最强脚本(汉化)",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
end
})    
Tab:AddButton({
    Name = "AND已汉化 推荐配合穿墙",
    Callback = function()
    --[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
    end
})
Tab:AddButton({
	Name = "穿墙(无拉回)",
	Callback = function()
loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
    end
})
Tab:AddButton({
  Name = "门绘图显示",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/doors1"))()
  end
})
local Tab =Window:MakeTab({
	Name = "驾驶帝国",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
    Name ="自动刷钱",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire"))()
    end
})

local Tab = Window:MakeTab({
	Name = "鲨口求生2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddDropdown({
	Name = "免费船只",
	Default = "1",
	Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},
	Callback = function(Value)
local ohString1 = (Value)
game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end
})
Tab:AddButton({
	Name = "自动杀鲨鱼🦈",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end
})

local Tab = Window:MakeTab({
	Name = "能量突击",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "能量突击",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Harley-HUB/Energy-Assault/main/Ene", true))()
    end
})

local Tab = Window:MakeTab({
	Name = "汽车经销大亨",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "英文版",
	Callback = function()
pcall(function()
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/03sAlt/BlueLockSeason2/main/README.md"))()
end)
    end
})

local Tab = Window:MakeTab({
    Name = "力量传奇",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "力量传奇修改力量",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})
local Section = Tab:AddSection({
	Name = "传送位置"
})
Tab:AddButton({
	Name = "传送到出生点",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
  	end    
})
Tab:AddButton({
	Name = "传送到冰霜健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
  	end    
})
Tab:AddButton({
	Name = "传送到神话健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
  	end    
})
Tab:AddButton({
	Name = "传送到永恒健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
  	end    
})
Tab:AddButton({
	Name = "传送到传说健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
  	end    
})
Tab:AddButton({
	Name = "传送到肌肉之王健身房",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
  	end    
})
Tab:AddButton({
	Name = "传送到安全岛",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
  	end    
})
Tab:AddButton({
	Name = "传送到幸运抽奖区域",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
  	end
})
local Tab = Window:MakeTab({
    Name = "通用",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name ="光影v4",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
    end
})

local Tab = Window:MakeTab({
    Name = "新更",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "普通范围",
  Callback = function ()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
  end
})
Tab:AddButton({
  Name = "中等范围",
  Callback = function ()
loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
  end
})
Tab:AddButton({
    Name="全图范围",
    Callback=function()
loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
    end
})
Tab:AddButton({
    Name="终极范围",
    Callback=function()
loadstring(game:HttpGet("https://pastebin.com/raw/CAQ9x4A7"))()
    end
})
Tab:AddButton({
    Name ="iw指令",
    Callback =function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end
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
    Name = "监狱人生",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "手里剑（秒杀）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
  	end
})
local Section = Tab:AddSection({
	Name = "传送位置"
})
Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})
Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})
Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})
Tab:AddButton({
	Name = "监狱室外",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})

local Tab = Window:MakeTab({
    Name = "动感星期五",
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
Tab:AddButton({
	Name = "红圈格挡",
	Callback = function()
loadstring(game:HttpGet("https://shz.al/~xiaoye/red⭕️AutoBlock.txt"))()
end
})

local Tab = Window:MakeTab({
    Name = "奇怪的严格爸爸",
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "巨魔世界",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RedZenXYZ/WorldOfTrollge/main/World%20Of%20Trollge"))()
end
})

local Tab = Window:MakeTab({
    Name = "KAT",
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "HOHO",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
end
})

local Tab = Window:MakeTab({
	Name = "脚本中心",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
    })
    
    Tab:AddButton({ 
	  Name = "星月交辉V3",
 	  Callback = function()
      local SCC_CharPool={
[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,116,97,110,103,120,105,97,110,99,104,117,47,53,53,48,87,95,86,51,47,109,97,105,110,47,53,53,48,87,95,86,51,46,116,120,116})end)()))}
--星月交辉 V3 模块加载
loadstring(game:HttpGet(SCC_CharPool[1]))()
      end    
      })
    
      Tab:AddButton({ 
	  Name = "剑客 v 3",
 	  Callback = function()
      jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
      end    
      })
      
      Tab:AddButton({ 
	Name = "☁云脚本☁",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/LOL/main/%E4%BA%91%E8%84%9A%E6%9C%ACCloud%20script.lua", true))() 
  	end
})

Tab:AddButton({ 
	Name = "鲨脚本", 
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/shark-shark-shark-shark-shark/main/shark-scriptlollol.txt",true))() 
    end 
})
      
      Tab:AddButton({ 
	  Name = "旋转脚本",
 	  Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
      end    
      })
  
      Tab:AddButton({
      Name = "USA脚本",
      Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
      end
      })
      
      Tab:AddButton({ 
    Name="龙脚本", 
    Callback=function()
        getgenv().long = "龙脚本，加载时间长请耐心"loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\108\121\121\97\105\110\105\47\108\111\110\47\109\97\105\110\47\108\105\115\119\109\34\41\41\40\41")() 
    end 
})

 
Tab:AddButton({ 
	Name = "青脚本", 
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/kkaaccnnbb/money/main/fix'))()
    end
})
 
Tab:AddButton({
	Name = "秋脚本", 
	Callback = function() 
local SCC_CharPool={
[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,87,83,56,53,55,57,54,48,47,45,47,109,97,105,110,47,37,69,55,37,65,55,37,56,66,37,67,50,37,66,55,37,69,56,37,56,55,37,65,65,37,69,53,37,56,56,37,66,54,37,69,56,37,56,52,37,57,65,37,69,54,37,57,67,37,65,67,37,69,54,37,57,54,37,66,48,37,69,54,37,66,65,37,57,48,37,69,55,37,65,48,37,56,49,46,116,120,116})end)()))}
loadstring(game:HttpGet(SCC_CharPool[1]))() 
    end 
})
 
Tab:AddButton({ 
	Name = "冰脚本", 
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/GR4ChWKv"))() 
    end 
})
  
      Tab:AddButton({
      Name = "河流脚本",
      Callback = function()
      loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\77\50\57\77\117\81\115\80"))()
      end
      })
      
      Tab:AddButton({
      Name = "BS脚本",
      Callback = function()
      loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,71,57,103,117,122,88,100,75})end)())))()--BS
      end
      })
 
      Tab:AddButton({
	Name = "地岩脚本",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
	end
})

Tab:AddButton({
	Name = "波奇塔脚本",
		Callback = function()
--波奇搭小脚本中心"
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,113,109,55,76,121,119,82,117})end)())))()
    end
})
else
game.Players.LocalPlayer:Kick("你没有白名单，加群834451572拿白名单")--踢人函数
   end
