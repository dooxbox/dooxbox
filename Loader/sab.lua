local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DooxBoxLoader"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 320, 0, 180)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -90)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local Outline = Instance.new("UIStroke")
Outline.Color = Color3.fromRGB(255, 0, 0)
Outline.Thickness = 2
Outline.Parent = MainFrame

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 8)
Corner.Parent = MainFrame

local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 90, 1, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Sidebar.BorderSizePixel = 0
Sidebar.Parent = MainFrame

local SideCorner = Instance.new("UICorner")
SideCorner.CornerRadius = UDim.new(0, 8)
SideCorner.Parent = Sidebar

local SideFix = Instance.new("Frame")
SideFix.Size = UDim2.new(0, 15, 1, 0)
SideFix.Position = UDim2.new(1, -15, 0, 0)
SideFix.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SideFix.BorderSizePixel = 0
SideFix.Parent = Sidebar

local Pfp = Instance.new("ImageLabel")
Pfp.Size = UDim2.new(0, 60, 0, 60)
Pfp.Position = UDim2.new(0.5, -30, 0, 15)
Pfp.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Pfp.Image = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
Pfp.Parent = Sidebar

local PfpCorner = Instance.new("UICorner")
PfpCorner.CornerRadius = UDim.new(1, 0)
PfpCorner.Parent = Pfp

local PfpStroke = Instance.new("UIStroke")
PfpStroke.Color = Color3.fromRGB(255, 0, 0)
PfpStroke.Thickness = 1.5
PfpStroke.Parent = Pfp

local DiscordBtn = Instance.new("TextButton")
DiscordBtn.Size = UDim2.new(0, 70, 0, 25)
DiscordBtn.Position = UDim2.new(0.5, -35, 0, 85)
DiscordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
DiscordBtn.Text = "Discord"
DiscordBtn.TextColor3 = Color3.new(1, 1, 1)
DiscordBtn.Font = Enum.Font.GothamBold
DiscordBtn.TextSize = 12
DiscordBtn.Parent = Sidebar

local DiscordCorner = Instance.new("UICorner")
DiscordCorner.CornerRadius = UDim.new(0, 4)
DiscordCorner.Parent = DiscordBtn

DiscordBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard("https://discord.gg/qYraTpHJAt")
	end
end)

local Title = Instance.new("TextLabel")
Title.Text = "DOOXBOX HUB"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -100, 0, 30)
Title.Position = UDim2.new(0, 90, 0, 15)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.TextStrokeTransparency = 0.8
Title.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
Title.Parent = MainFrame

local TitleGradient = Instance.new("UIGradient")
TitleGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))
})
TitleGradient.Parent = Title

local SubTitle = Instance.new("TextLabel")
SubTitle.Text = "Select your game mode"
SubTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
SubTitle.BackgroundTransparency = 1
SubTitle.Size = UDim2.new(1, -100, 0, 20)
SubTitle.Position = UDim2.new(0, 90, 0, 45)
SubTitle.Font = Enum.Font.Gotham
SubTitle.TextSize = 14
SubTitle.Parent = MainFrame

local SabBtn = Instance.new("TextButton")
SabBtn.Size = UDim2.new(0, 100, 0, 35)
SabBtn.Position = UDim2.new(0, 100, 0, 95)
SabBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SabBtn.Text = "SAB"
SabBtn.TextColor3 = Color3.new(1, 1, 1)
SabBtn.Font = Enum.Font.GothamBold
SabBtn.TextSize = 16
SabBtn.Parent = MainFrame

local SabCorner = Instance.new("UICorner")
SabCorner.CornerRadius = UDim.new(0, 6)
SabCorner.Parent = SabBtn

local SabStroke = Instance.new("UIStroke")
SabStroke.Color = Color3.fromRGB(255, 0, 0)
SabStroke.Thickness = 1
SabStroke.Parent = SabBtn

local DuelBtn = Instance.new("TextButton")
DuelBtn.Size = UDim2.new(0, 100, 0, 35)
DuelBtn.Position = UDim2.new(0, 210, 0, 95)
DuelBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
DuelBtn.Text = "DUEL"
DuelBtn.TextColor3 = Color3.new(1, 1, 1)
DuelBtn.Font = Enum.Font.GothamBold
DuelBtn.TextSize = 16
DuelBtn.Parent = MainFrame

local DuelCorner = Instance.new("UICorner")
DuelCorner.CornerRadius = UDim.new(0, 6)
DuelCorner.Parent = DuelBtn

local DuelStroke = Instance.new("UIStroke")
DuelStroke.Color = Color3.fromRGB(255, 0, 0)
DuelStroke.Thickness = 1
DuelStroke.Parent = DuelBtn

local CreditLabel = Instance.new("TextLabel")
CreditLabel.Text = "discord.gg/qYraTpHJAt"
CreditLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
CreditLabel.BackgroundTransparency = 1
CreditLabel.Size = UDim2.new(1, -100, 0, 20)
CreditLabel.Position = UDim2.new(0, 90, 0, 145)
CreditLabel.Font = Enum.Font.Gotham
CreditLabel.TextSize = 11
CreditLabel.Parent = MainFrame

local function NotifyDiscord()
	local notification = Instance.new("Frame")
	notification.Size = UDim2.new(0, 250, 0, 50)
	notification.Position = UDim2.new(0.5, -125, 0.5, -25)
	notification.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	notification.BorderSizePixel = 0
	notification.Parent = ScreenGui

	local notifCorner = Instance.new("UICorner")
	notifCorner.CornerRadius = UDim.new(0, 6)
	notifCorner.Parent = notification

	local notifStroke = Instance.new("UIStroke")
	notifStroke.Color = Color3.fromRGB(88, 101, 242)
	notifStroke.Thickness = 2
	notifStroke.Parent = notification

	local notifText = Instance.new("TextLabel")
	notifText.Size = UDim2.new(1, -20, 1, 0)
	notifText.Position = UDim2.new(0, 10, 0, 0)
	notifText.BackgroundTransparency = 1
	notifText.Text = "Discord link copied to clipboard!"
	notifText.TextColor3 = Color3.new(1, 1, 1)
	notifText.Font = Enum.Font.GothamBold
	notifText.TextSize = 14
	notifText.Parent = notification

	task.wait(2)
	notification:Destroy()
end

DiscordBtn.MouseButton1Click:Connect(NotifyDiscord)

local function LoadSab()
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local TeleportService = game:GetService("TeleportService")
	local HttpService = game:GetService("HttpService")
	local TweenService = game:GetService("TweenService")
	local ProximityPromptService = game:GetService("ProximityPromptService")

	local character = Player.Character or Player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local rootPart = character:FindFirstChild("HumanoidRootPart")

	local isFloating = false
	local floatPlatform = nil
	local autoBat = false
	local noAnim = false
	local lastClick = 0
	local infiniteJumpEnabled = false
	local jumpPlatform = nil
	local antiLagEnabled = false
	local timerEspEnabled = false
	local autoLockEnabled = false
	local autoStealEnabled = false
	local currentStealPrompt = nil
	local stealStartTick = 0
	local speedStealEnabled = false
	local speedStealValue = 31
	local myPlotName = nil
	local lastUnlockState = false
	local antiRagdollEnabled = false
	local platformEnabled = false
	local antiBaseStealEnabled = false

	for _, plot in ipairs(workspace.Plots:GetChildren()) do
		local yourBase = plot:FindFirstChild("YourBase", true)
		if yourBase and yourBase.Enabled then
			myPlotName = plot.Name
			break
		end
	end

	spawn(function()
		while task.wait(0.1) do
			if myPlotName and workspace.Plots:FindFirstChild(myPlotName) then
				local hue = tick() % 5 / 5
				local color = Color3.fromHSV(hue, 1, 1)
				for _, part in pairs(workspace.Plots[myPlotName]:GetDescendants()) do
					if part:IsA("BasePart") and part.Name ~= "Platform" then
						part.Color = color
					end
				end
			end
		end
	end)

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "DooxBox"
	screenGui.ResetOnSpawn = false
	screenGui.Parent = PlayerGui

	local loadingFrame = Instance.new("Frame")
	loadingFrame.Name = "LoadingUI"
	loadingFrame.Size = UDim2.new(0, 200, 0, 70)
	loadingFrame.Position = UDim2.new(0.5, -100, 0.5, -35)
	loadingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	loadingFrame.BorderSizePixel = 0
	loadingFrame.Parent = screenGui
	local loadCorner = Instance.new("UICorner")
	loadCorner.CornerRadius = UDim.new(0, 10)
	loadCorner.Parent = loadingFrame
	local loadStroke = Instance.new("UIStroke")
	loadStroke.Color = Color3.fromRGB(255, 0, 0)
	loadStroke.Thickness = 2
	loadStroke.Parent = loadingFrame

	local loadPfp = Instance.new("ImageLabel")
	loadPfp.Size = UDim2.new(0, 50, 0, 50)
	loadPfp.Position = UDim2.new(0, 10, 0.5, -25)
	loadPfp.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	loadPfp.Parent = loadingFrame
	local loadPfpCorner = Instance.new("UICorner")
	loadPfpCorner.CornerRadius = UDim.new(1, 0)
	loadPfpCorner.Parent = loadPfp
	local loadPfpStroke = Instance.new("UIStroke")
	loadPfpStroke.Color = Color3.fromRGB(255, 0, 0)
	loadPfpStroke.Thickness = 2
	loadPfpStroke.Parent = loadPfp

	local loadUser = Instance.new("TextLabel")
	loadUser.Size = UDim2.new(1, -80, 0, 20)
	loadUser.Position = UDim2.new(0, 70, 0.5, -10)
	loadUser.BackgroundTransparency = 1
	loadUser.Text = Player.Name
	loadUser.TextColor3 = Color3.new(1, 1, 1)
	loadUser.Font = Enum.Font.GothamBold
	loadUser.TextSize = 16
	loadUser.TextXAlignment = Enum.TextXAlignment.Left
	loadUser.Parent = loadingFrame

	spawn(function()
		local content = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		loadPfp.Image = content
	end)

	task.wait(2)
	TweenService:Create(loadingFrame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -100, 0, -100)}):Play()
	task.wait(0.5)
	loadingFrame:Destroy()

	local toggleBtn = Instance.new("TextButton")
	toggleBtn.Name = "ToggleD"
	toggleBtn.Size = UDim2.new(0, 50, 0, 50)
	toggleBtn.Position = UDim2.new(0, 20, 0.5, -25)
	toggleBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	toggleBtn.Text = "D"
	toggleBtn.TextColor3 = Color3.new(1, 1, 1)
	toggleBtn.Font = Enum.Font.GothamBold
	toggleBtn.TextSize = 24
	toggleBtn.Active = true
	toggleBtn.Draggable = true
	toggleBtn.Visible = true
	toggleBtn.Parent = screenGui

	local toggleStroke = Instance.new("UIStroke")
	toggleStroke.Color = Color3.fromRGB(255, 0, 0)
	toggleStroke.Thickness = 2
	toggleStroke.Parent = toggleBtn

	local toggleCorner = Instance.new("UICorner")
	toggleCorner.CornerRadius = UDim.new(1, 0)
	toggleCorner.Parent = toggleBtn

	local notifContainer = Instance.new("Frame")
	notifContainer.Name = "NotifContainer"
	notifContainer.Size = UDim2.new(0, 250, 1, 0)
	notifContainer.Position = UDim2.new(1, -270, 0, 20)
	notifContainer.BackgroundTransparency = 1
	notifContainer.Parent = screenGui

	local function Notify(title, text, pfpUrl)
		local notif = Instance.new("Frame")
		notif.Size = UDim2.new(1, 0, 0, 70)
		notif.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		notif.BorderSizePixel = 0
		notif.Position = UDim2.new(1, 50, 0, 0)
		notif.Parent = notifContainer

		local stroke = Instance.new("UIStroke")
		stroke.Color = Color3.fromRGB(255, 0, 0)
		stroke.Thickness = 2
		stroke.Parent = notif

		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(0, 8)
		corner.Parent = notif

		if pfpUrl then
			local pfp = Instance.new("ImageLabel")
			pfp.Size = UDim2.new(0, 40, 0, 40)
			pfp.Position = UDim2.new(0, 10, 0.5, -20)
			pfp.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			pfp.Image = pfpUrl
			pfp.Parent = notif
			local pfpCorner = Instance.new("UICorner")
			pfpCorner.CornerRadius = UDim.new(1, 0)
			pfpCorner.Parent = pfp
		end

		local titleL = Instance.new("TextLabel")
		titleL.Size = UDim2.new(1, -20, 0, 20)
		titleL.Position = UDim2.new(0, pfpUrl and 60 or 10, 0, 10)
		titleL.BackgroundTransparency = 1
		titleL.Text = title
		titleL.TextColor3 = Color3.fromRGB(255, 0, 0)
		titleL.Font = Enum.Font.GothamBold
		titleL.TextSize = 16
		titleL.TextXAlignment = Enum.TextXAlignment.Left
		titleL.Parent = notif

		local textL = Instance.new("TextLabel")
		textL.Size = UDim2.new(1, -20, 0, 30)
		textL.Position = UDim2.new(0, pfpUrl and 60 or 10, 0, 32)
		textL.BackgroundTransparency = 1
		textL.Text = text
		textL.TextColor3 = Color3.new(1, 1, 1)
		textL.Font = Enum.Font.Gotham
		textL.TextSize = 14
		textL.TextXAlignment = Enum.TextXAlignment.Left
		textL.TextWrapped = true
		textL.Parent = notif

		TweenService:Create(notif, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {Position = UDim2.new(0, 0, 0, 0)}):Play()

		task.delay(4, function()
			TweenService:Create(notif, TweenInfo.new(0.5, Enum.EasingStyle.Quart), {Position = UDim2.new(1, 50, 0, 0)}):Play()
			task.wait(0.5)
			notif:Destroy()
		end)
	end

	local autoStealUI = Instance.new("Frame")
	autoStealUI.Name = "AutoStealUI"
	autoStealUI.Size = UDim2.new(0, 220, 0, 70)
	autoStealUI.Position = UDim2.new(0.5, -110, 0, 50)
	autoStealUI.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	autoStealUI.BorderSizePixel = 0
	autoStealUI.Visible = false
	autoStealUI.Parent = screenGui

	local asuCorner = Instance.new("UICorner")
	asuCorner.CornerRadius = UDim.new(0, 10)
	asuCorner.Parent = autoStealUI

	local asuStroke = Instance.new("UIStroke")
	asuStroke.Color = Color3.fromRGB(255, 0, 0)
	asuStroke.Thickness = 2
	asuStroke.Parent = autoStealUI

	local asuTitle = Instance.new("TextLabel")
	asuTitle.Size = UDim2.new(1, -20, 0, 25)
	asuTitle.Position = UDim2.new(0, 10, 0, 8)
	asuTitle.BackgroundTransparency = 1
	asuTitle.Text = "Stealing Brainrot..."
	asuTitle.TextColor3 = Color3.new(1, 1, 1)
	asuTitle.Font = Enum.Font.GothamBold
	asuTitle.TextSize = 16
	asuTitle.TextXAlignment = Enum.TextXAlignment.Left
	asuTitle.Parent = autoStealUI

	local asuPercent = Instance.new("TextLabel")
	asuPercent.Size = UDim2.new(0, 50, 0, 25)
	asuPercent.Position = UDim2.new(1, -55, 0, 8)
	asuPercent.BackgroundTransparency = 1
	asuPercent.Text = "0%"
	asuPercent.TextColor3 = Color3.fromRGB(255, 0, 0)
	asuPercent.Font = Enum.Font.GothamBold
	asuPercent.TextSize = 16
	asuPercent.Parent = autoStealUI

	local asuBarBg = Instance.new("Frame")
	asuBarBg.Size = UDim2.new(1, -20, 0, 18)
	asuBarBg.Position = UDim2.new(0, 10, 1, -28)
	asuBarBg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	asuBarBg.Parent = autoStealUI
	local asuBarBgCorner = Instance.new("UICorner")
	asuBarBgCorner.CornerRadius = UDim.new(0, 6)
	asuBarBgCorner.Parent = asuBarBg

	local asuBar = Instance.new("Frame")
	asuBar.Size = UDim2.new(0, 0, 1, 0)
	asuBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	asuBar.Parent = asuBarBg
	local asuBarCorner = Instance.new("UICorner")
	asuBarCorner.CornerRadius = UDim.new(0, 6)
	asuBarCorner.Parent = asuBar

	local mainFrame = Instance.new("Frame")
	mainFrame.Name = "MainFrame"
	mainFrame.Size = UDim2.new(0, 500, 0, 320)
	mainFrame.Position = UDim2.new(0.5, -250, 0.5, -160)
	mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	mainFrame.BorderSizePixel = 0
	mainFrame.Active = true
	mainFrame.Draggable = true
	mainFrame.Visible = false
	mainFrame.Parent = screenGui

	local mainStroke = Instance.new("UIStroke")
	mainStroke.Color = Color3.fromRGB(255, 0, 0)
	mainStroke.Thickness = 2
	mainStroke.Parent = mainFrame

	local mainCorner = Instance.new("UICorner")
	mainCorner.CornerRadius = UDim.new(0, 10)
	mainCorner.Parent = mainFrame

	local sideBar = Instance.new("Frame")
	sideBar.Name = "SideBar"
	sideBar.Size = UDim2.new(0, 110, 1, 0)
	sideBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	sideBar.BorderSizePixel = 0
	sideBar.Parent = mainFrame

	local sideCorner = Instance.new("UICorner")
	sideCorner.CornerRadius = UDim.new(0, 10)
	sideCorner.Parent = sideBar

	local sideFix = Instance.new("Frame")
	sideFix.Size = UDim2.new(0, 20, 1, 0)
	sideFix.Position = UDim2.new(1, -20, 0, 0)
	sideFix.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	sideFix.BorderSizePixel = 0
	sideFix.Parent = sideBar

	local uiTitle = Instance.new("TextLabel")
	uiTitle.Text = "DooxBox"
	uiTitle.TextColor3 = Color3.new(1, 1, 1)
	uiTitle.Size = UDim2.new(1, 0, 0, 25)
	uiTitle.Position = UDim2.new(0, 0, 0, 10)
	uiTitle.BackgroundTransparency = 1
	uiTitle.Font = Enum.Font.GothamBold
	uiTitle.TextSize = 16
	uiTitle.Parent = sideBar
	local titleGradient = Instance.new("UIGradient")
	titleGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
		ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))
	})
	titleGradient.Parent = uiTitle

	local uiSubTitle = Instance.new("TextLabel")
	uiSubTitle.Text = "SAB Edition"
	uiSubTitle.TextColor3 = Color3.fromRGB(150, 150, 150)
	uiSubTitle.Size = UDim2.new(1, 0, 0, 15)
	uiSubTitle.Position = UDim2.new(0, 0, 0, 32)
	uiSubTitle.BackgroundTransparency = 1
	uiSubTitle.Font = Enum.Font.Gotham
	uiSubTitle.TextSize = 11
	uiSubTitle.Parent = sideBar

	local pfp = Instance.new("ImageLabel")
	pfp.Size = UDim2.new(0, 50, 0, 50)
	pfp.Position = UDim2.new(0.5, -25, 1, -65)
	pfp.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	pfp.Parent = sideBar
	local pfpCorner = Instance.new("UICorner")
	pfpCorner.CornerRadius = UDim.new(1, 0)
	pfpCorner.Parent = pfp
	local pfpStroke = Instance.new("UIStroke")
	pfpStroke.Color = Color3.fromRGB(255, 0, 0)
	pfpStroke.Thickness = 2
	pfpStroke.Parent = pfp

	local usernameLabel = Instance.new("TextLabel")
	usernameLabel.Size = UDim2.new(1, 0, 0, 20)
	usernameLabel.Position = UDim2.new(0, 0, 1, -20)
	usernameLabel.BackgroundTransparency = 1
	usernameLabel.Text = Player.Name
	usernameLabel.TextColor3 = Color3.new(1, 1, 1)
	usernameLabel.Font = Enum.Font.GothamBold
	usernameLabel.TextSize = 12
	usernameLabel.Parent = sideBar

	spawn(function()
		local content = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		pfp.Image = content
	end)

	local function createTabButton(name, yPos)
		local btn = Instance.new("TextButton")
		btn.Size = UDim2.new(1, -20, 0, 28)
		btn.Position = UDim2.new(0, 10, 0, yPos)
		btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		btn.Text = name
		btn.TextColor3 = Color3.new(1, 1, 1)
		btn.Font = Enum.Font.GothamBold
		btn.TextSize = 11
		btn.Parent = sideBar
		local btnCorner = Instance.new("UICorner")
		btnCorner.CornerRadius = UDim.new(0, 6)
		btnCorner.Parent = btn

		local btnStroke = Instance.new("UIStroke")
		btnStroke.Color = Color3.fromRGB(60, 60, 60)
		btnStroke.Thickness = 1
		btnStroke.Parent = btn

		return btn
	end

	local homeBtn = createTabButton("Home", 55)
	local movementBtn = createTabButton("Movement", 88)
	local helperBtn = createTabButton("Helper", 121)
	local stealerBtn = createTabButton("Stealer", 154)
	local settingsBtn = createTabButton("Settings", 187)

	local container = Instance.new("Frame")
	container.Size = UDim2.new(1, -120, 1, 0)
	container.Position = UDim2.new(0, 115, 0, 0)
	container.BackgroundTransparency = 1
	container.Parent = mainFrame

	local function createPage(name)
		local page = Instance.new("Frame")
		page.Name = name
		page.Size = UDim2.new(1, 0, 1, 0)
		page.BackgroundTransparency = 1
		page.Visible = false
		page.Parent = container
		return page
	end

	local homePage = createPage("Home")
	local movementPage = createPage("Movement")
	local helperPage = createPage("Helper")
	local stealerPage = createPage("Stealer")
	local settingsPage = createPage("Settings")

	local homeTitle = Instance.new("TextLabel")
	homeTitle.Text = "Welcome to DooxBox"
	homeTitle.TextColor3 = Color3.new(1, 1, 1)
	homeTitle.Size = UDim2.new(1, -20, 0, 40)
	homeTitle.Position = UDim2.new(0, 10, 0, 20)
	homeTitle.BackgroundTransparency = 1
	homeTitle.TextXAlignment = Enum.TextXAlignment.Left
	homeTitle.Font = Enum.Font.GothamBold
	homeTitle.TextSize = 20
	homeTitle.Parent = homePage

	local discordBtn = Instance.new("TextButton")
	discordBtn.Size = UDim2.new(0, 180, 0, 35)
	discordBtn.Position = UDim2.new(0, 10, 0, 70)
	discordBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	discordBtn.Text = "Copy Discord"
	discordBtn.TextColor3 = Color3.new(1, 1, 1)
	discordBtn.Font = Enum.Font.GothamBold
	discordBtn.TextSize = 14
	discordBtn.Parent = homePage
	local dbCorner = Instance.new("UICorner")
	dbCorner.CornerRadius = UDim.new(0, 6)
	dbCorner.Parent = discordBtn
	local dbStroke = Instance.new("UIStroke")
	dbStroke.Color = Color3.fromRGB(255, 0, 0)
	dbStroke.Thickness = 1
	dbStroke.Parent = discordBtn

	discordBtn.MouseButton1Click:Connect(function()
		if setclipboard then
			setclipboard("https://discord.gg/qYraTpHJAt")
			Notify("Discord", "Link copied to clipboard!", nil)
		end
	end)

	local function makeToggle(name, yPos, parent)
		local containerFrame = Instance.new("Frame")
		containerFrame.Size = UDim2.new(1, -20, 0, 35)
		containerFrame.Position = UDim2.new(0, 10, 0, yPos)
		containerFrame.BackgroundTransparency = 1
		containerFrame.Parent = parent

		local label = Instance.new("TextLabel")
		label.Text = name
		label.TextColor3 = Color3.new(1, 1, 1)
		label.BackgroundTransparency = 1
		label.Size = UDim2.new(0.6, 0, 1, 0)
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Font = Enum.Font.GothamBold
		label.TextSize = 14
		label.Parent = containerFrame

		local btn = Instance.new("TextButton")
		btn.Size = UDim2.new(0, 40, 0, 22)
		btn.Position = UDim2.new(1, -42, 0.5, -11)
		btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
		btn.Text = ""
		btn.Parent = containerFrame

		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = btn

		local knob = Instance.new("Frame")
		knob.Size = UDim2.new(0, 18, 0, 18)
		knob.Position = UDim2.new(0, 2, 0.5, -9)
		knob.BackgroundColor3 = Color3.new(1, 1, 1)
		knob.Parent = btn

		local knobCorner = Instance.new("UICorner")
		knobCorner.CornerRadius = UDim.new(1, 0)
		knobCorner.Parent = knob

		return btn, knob
	end

	local function makeButton(name, yPos, parent)
		local btn = Instance.new("TextButton")
		btn.Size = UDim2.new(1, -20, 0, 30)
		btn.Position = UDim2.new(0, 10, 0, yPos)
		btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		btn.Text = name
		btn.TextColor3 = Color3.new(1, 1, 1)
		btn.Font = Enum.Font.GothamBold
		btn.TextSize = 12
		btn.Parent = parent
		local btnCorner = Instance.new("UICorner")
		btnCorner.CornerRadius = UDim.new(0, 6)
		btnCorner.Parent = btn
		local btnStroke = Instance.new("UIStroke")
		btnStroke.Color = Color3.fromRGB(255, 0, 0)
		btnStroke.Thickness = 1
		btnStroke.Parent = btn
		return btn
	end

	local function makeSlider(name, yPos, parent, minVal, maxVal, defaultVal, callback)
		local containerFrame = Instance.new("Frame")
		containerFrame.Size = UDim2.new(1, -20, 0, 50)
		containerFrame.Position = UDim2.new(0, 10, 0, yPos)
		containerFrame.BackgroundTransparency = 1
		containerFrame.Parent = parent

		local label = Instance.new("TextLabel")
		label.Text = name
		label.TextColor3 = Color3.new(1, 1, 1)
		label.BackgroundTransparency = 1
		label.Size = UDim2.new(1, 0, 0, 20)
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Font = Enum.Font.GothamBold
		label.TextSize = 14
		label.Parent = containerFrame

		local valueLabel = Instance.new("TextLabel")
		valueLabel.Text = tostring(defaultVal)
		valueLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
		valueLabel.BackgroundTransparency = 1
		valueLabel.Size = UDim2.new(0, 30, 0, 20)
		valueLabel.Position = UDim2.new(1, -30, 0, 0)
		valueLabel.TextXAlignment = Enum.TextXAlignment.Right
		valueLabel.Font = Enum.Font.GothamBold
		valueLabel.TextSize = 14
		valueLabel.Parent = containerFrame

		local sliderBg = Instance.new("TextButton")
		sliderBg.Size = UDim2.new(1, 0, 0, 8)
		sliderBg.Position = UDim2.new(0, 0, 1, -15)
		sliderBg.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		sliderBg.Text = ""
		sliderBg.AutoButtonColor = false
		sliderBg.Parent = containerFrame
		local sliderBgCorner = Instance.new("UICorner")
		sliderBgCorner.CornerRadius = UDim.new(1, 0)
		sliderBgCorner.Parent = sliderBg

		local sliderFill = Instance.new("Frame")
		sliderFill.Size = UDim2.new((defaultVal - minVal) / (maxVal - minVal), 0, 1, 0)
		sliderFill.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		sliderFill.Parent = sliderBg
		local sliderFillCorner = Instance.new("UICorner")
		sliderFillCorner.CornerRadius = UDim.new(1, 0)
		sliderFillCorner.Parent = sliderFill

		local function updateSlider(input)
			local relX = math.clamp((input.Position.X - sliderBg.AbsolutePosition.X) / sliderBg.AbsoluteSize.X, 0, 1)
			sliderFill.Size = UDim2.new(relX, 0, 1, 0)
			local newValue = math.floor(minVal + (maxVal - minVal) * relX)
			valueLabel.Text = tostring(newValue)
			if callback then callback(newValue) end
		end

		sliderBg.MouseButton1Down:Connect(function()
			updateSlider(UserInputService:GetMouseLocation())
		end)

		sliderBg.MouseButton1Down:Connect(function()
			local conn
			conn = UserInputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					updateSlider(input)
				end
			end)

			local conn2
			conn2 = UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					conn:Disconnect()
					conn2:Disconnect()
				end
			end)
		end)

		return containerFrame
	end

	local floatBtn, floatKnob = makeToggle("Float", 20, movementPage)
	local infJumpBtn, infJumpKnob = makeToggle("InfiniteJump", 60, movementPage)
	local platformBtn, platformKnob = makeToggle("Platform", 100, movementPage)

	local animBtn, animKnob = makeToggle("NoAnimation", 20, helperPage)
	local antiLagBtn, antiLagKnob = makeToggle("Antilag", 60, helperPage)
	local timerEspBtn, timerEspKnob = makeToggle("TimerEsp", 100, helperPage)
	local autoLockBtn, autoLockKnob = makeToggle("Autolock", 140, helperPage)
	local antiRagdollBtn, antiRagdollKnob = makeToggle("AntiRagdoll", 180, helperPage)
	local antiBaseStealBtn, antiBaseStealKnob = makeToggle("AntibaseSteal", 220, helperPage)

	local batBtn, batKnob = makeToggle("AutoBat", 20, stealerPage)
	local autoStealBtn, autoStealKnob = makeToggle("Auto Steal Brainrots", 60, stealerPage)
	local speedStealBtn, speedStealKnob = makeToggle("SpeedSteal", 100, stealerPage)
	local speedStealSlider = makeSlider("Speed", 140, stealerPage, 1, 31, 31, function(val)
		speedStealValue = val
	end)

	local rejoinBtn = makeButton("Rejoin", 20, settingsPage)
	local serverhopBtn = makeButton("Server Hop", 60, settingsPage)
	local exitBtn = makeButton("Exit", 100, settingsPage)

	local tabs = {homePage, movementPage, helperPage, stealerPage, settingsPage}
	local buttons = {homeBtn, movementBtn, helperBtn, stealerBtn, settingsBtn}

	local function switchTab(index)
		for i, tab in ipairs(tabs) do tab.Visible = (i == index) end
		for i, btn in ipairs(buttons) do
			if i == index then
				btn.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
				btn.TextColor3 = Color3.new(1,1,1)
			else
				btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				btn.TextColor3 = Color3.new(1, 1, 1)
			end
		end
	end

	homeBtn.MouseButton1Click:Connect(function() switchTab(1) end)
	movementBtn.MouseButton1Click:Connect(function() switchTab(2) end)
	helperBtn.MouseButton1Click:Connect(function() switchTab(3) end)
	stealerBtn.MouseButton1Click:Connect(function() switchTab(4) end)
	settingsBtn.MouseButton1Click:Connect(function() switchTab(5) end)

	switchTab(1)

	Notify("DooxBox", "Loaded successfully!", "rbxthumb://type=Avatar&w=150&h=150&id=" .. Player.UserId)

	toggleBtn.MouseButton1Click:Connect(function()
		mainFrame.Visible = not mainFrame.Visible
	end)

	UserInputService.InputBegan:Connect(function(inp, proc)
		if proc then return end
		if inp.KeyCode == Enum.KeyCode.D then
			mainFrame.Visible = not mainFrame.Visible
		end
	end)

	local function setupChar()
		character = Player.Character or Player.CharacterAdded:Wait()
		humanoid = character:WaitForChild("Humanoid")
		rootPart = character:WaitForChild("HumanoidRootPart")
	end

	Player.CharacterAdded:Connect(setupChar)

	RunService.Stepped:Connect(function()
		if antiRagdollEnabled and character then
			for _, v in pairs(character:GetDescendants()) do
				if v:IsA("NumberValue") and v.Name == "Ragdoll" then
					v.Value = 0
				end
			end
			if humanoid then
				humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
				humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
				humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
			end
		end
	end)

	antiRagdollBtn.MouseButton1Click:Connect(function()
		antiRagdollEnabled = not antiRagdollEnabled
		if antiRagdollEnabled then
			antiRagdollBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			antiRagdollKnob.Position = UDim2.new(1, -20, 0.5, -9)
			Notify("AntiRagdoll", "Enabled", nil)
		else
			antiRagdollBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			antiRagdollKnob.Position = UDim2.new(0, 2, 0.5, -9)
		end
	end)

	antiBaseStealBtn.MouseButton1Click:Connect(function()
		antiBaseStealEnabled = not antiBaseStealEnabled
		if antiBaseStealEnabled then
			antiBaseStealBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			antiBaseStealKnob.Position = UDim2.new(1, -20, 0.5, -9)
			Notify("AntibaseSteal", "Watching your plot...", nil)
		else
			antiBaseStealBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			antiBaseStealKnob.Position = UDim2.new(0, 2, 0.5, -9)
		end
	end)

	local currentPlatform = nil
	platformBtn.MouseButton1Click:Connect(function()
		platformEnabled = not platformEnabled
		if platformEnabled then
			platformBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			platformKnob.Position = UDim2.new(1, -20, 0.5, -9)

			if currentPlatform then currentPlatform:Destroy() end
			currentPlatform = Instance.new("Part")
			currentPlatform.Size = Vector3.new(8, 1, 8)
			currentPlatform.Transparency = 0.5
			currentPlatform.Material = Enum.Material.Neon
			currentPlatform.Color = Color3.fromRGB(255, 0, 0)
			currentPlatform.Anchored = true
			currentPlatform.CanCollide = true
			currentPlatform.Parent = workspace
		else
			platformBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			platformKnob.Position = UDim2.new(0, 2, 0.5, -9)
			if currentPlatform then currentPlatform:Destroy() end
		end
	end)

	floatBtn.MouseButton1Click:Connect(function()
		isFloating = not isFloating
		if isFloating then
			floatBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			floatKnob.Position = UDim2.new(1, -20, 0.5, -9)
			if floatPlatform then floatPlatform:Destroy() end
			floatPlatform = Instance.new("Part")
			floatPlatform.Size = Vector3.new(6, 1, 6)
			floatPlatform.Transparency = 0.7
			floatPlatform.Material = Enum.Material.Neon
			floatPlatform.Color = Color3.fromRGB(255, 0, 0)
			floatPlatform.Anchored = true
			floatPlatform.CanCollide = true
			floatPlatform.Parent = workspace
		else
			floatBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			floatKnob.Position = UDim2.new(0, 2, 0.5, -9)
			if floatPlatform then floatPlatform:Destroy() end
		end
	end)

	UserInputService.JumpRequest:Connect(function()
		if infiniteJumpEnabled and character and jumpPlatform then
			local rootPart = character:FindFirstChild("HumanoidRootPart")
			if rootPart then
				jumpPlatform.CFrame = rootPart.CFrame * CFrame.new(0, -3.5, 0)
			end
		end
	end)

	infJumpBtn.MouseButton1Click:Connect(function()
		infiniteJumpEnabled = not infiniteJumpEnabled
		if infiniteJumpEnabled then
			infJumpBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			infJumpKnob.Position = UDim2.new(1, -20, 0.5, -9)
			if jumpPlatform then jumpPlatform:Destroy() end
			jumpPlatform = Instance.new("Part")
			jumpPlatform.Size = Vector3.new(6, 1, 6)
			jumpPlatform.Transparency = 1
			jumpPlatform.Anchored = true
			jumpPlatform.CanCollide = true
			jumpPlatform.Parent = workspace
		else
			infJumpBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			infJumpKnob.Position = UDim2.new(0, 2, 0.5, -9)
			if jumpPlatform then jumpPlatform:Destroy() end
		end
	end)

	local TARGET_TEXT = "Steal"

	autoStealBtn.MouseButton1Click:Connect(function()
		autoStealEnabled = not autoStealEnabled
		if autoStealEnabled then
			autoStealBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			autoStealKnob.Position = UDim2.new(1, -20, 0.5, -9)
		else
			autoStealBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			autoStealKnob.Position = UDim2.new(0, 2, 0.5, -9)
			autoStealUI.Visible = false
		end
	end)

	ProximityPromptService.PromptShown:Connect(function(prompt)
		if autoStealEnabled and prompt.KeyboardKeyCode == Enum.KeyCode.E then
			local isStealAction = string.find(prompt.ActionText, TARGET_TEXT) or string.find(prompt.ObjectText, TARGET_TEXT)
			if isStealAction then
				currentStealPrompt = prompt
				stealStartTick = tick()
				prompt:InputHoldBegin()
				autoStealUI.Visible = true
			end
		end
	end)

	ProximityPromptService.PromptHidden:Connect(function(prompt)
		if prompt == currentStealPrompt then
			prompt:InputHoldEnd()
			currentStealPrompt = nil
			autoStealUI.Visible = false
		end
	end)

	RunService.RenderStepped:Connect(function()
		if autoStealEnabled and currentStealPrompt and autoStealUI.Visible then
			local elapsed = tick() - stealStartTick
			local duration = 2
			local progress = math.clamp(elapsed / duration, 0, 1)

			asuBar.Size = UDim2.new(progress, 0, 1, 0)
			asuPercent.Text = math.floor(progress * 100) .. "%"
		end
	end)

	speedStealBtn.MouseButton1Click:Connect(function()
		speedStealEnabled = not speedStealEnabled
		if speedStealEnabled then
			speedStealBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			speedStealKnob.Position = UDim2.new(1, -20, 0.5, -9)
		else
			speedStealBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			speedStealKnob.Position = UDim2.new(0, 2, 0.5, -9)
		end
	end)

	RunService.Stepped:Connect(function()
		if speedStealEnabled and rootPart and humanoid then
			local moveDirection = humanoid.MoveDirection
			if moveDirection.Magnitude > 0 then
				rootPart.Velocity = Vector3.new(
					moveDirection.X * speedStealValue,
					rootPart.Velocity.Y,
					moveDirection.Z * speedStealValue
				)
			else
				rootPart.Velocity = Vector3.new(0, rootPart.Velocity.Y, 0)
			end
		end
	end)

	batBtn.MouseButton1Click:Connect(function()
		autoBat = not autoBat
		batBtn.BackgroundColor3 = autoBat and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(60, 60, 60)
		batKnob.Position = autoBat and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
	end)

	animBtn.MouseButton1Click:Connect(function()
		noAnim = not noAnim
		animBtn.BackgroundColor3 = noAnim and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(60, 60, 60)
		animKnob.Position = noAnim and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
		if noAnim and character then
			local anim = character:FindFirstChild("Animate")
			if anim then anim:Destroy() end
		end
	end)

	antiLagBtn.MouseButton1Click:Connect(function()
		antiLagEnabled = not antiLagEnabled
		antiLagBtn.BackgroundColor3 = antiLagEnabled and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(60, 60, 60)
		antiLagKnob.Position = antiLagEnabled and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
		if antiLagEnabled then
			settings().Rendering.QualityLevel = 1
			for _, v in pairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") then v.Material = Enum.Material.Plastic v.Reflectance = 0
				elseif v:IsA("Decal") or v:IsA("Texture") then v.Transparency = 1
				elseif v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then v.Enabled = false end
			end
		else
			settings().Rendering.QualityLevel = 3
		end
	end)

	timerEspBtn.MouseButton1Click:Connect(function()
		timerEspEnabled = not timerEspEnabled
		timerEspBtn.BackgroundColor3 = timerEspEnabled and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(60, 60, 60)
		timerEspKnob.Position = timerEspEnabled and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
		if not timerEspEnabled then
			for _, v in pairs(workspace:GetDescendants()) do if v.Name == "DooxBoxTimerESP" then v:Destroy() end end
		end
	end)

	autoLockBtn.MouseButton1Click:Connect(function()
		autoLockEnabled = not autoLockEnabled
		autoLockBtn.BackgroundColor3 = autoLockEnabled and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(60, 60, 60)
		autoLockKnob.Position = autoLockEnabled and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
	end)

	rejoinBtn.MouseButton1Click:Connect(function() TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Player) end)
	exitBtn.MouseButton1Click:Connect(function() game:Shutdown() end)
	serverhopBtn.MouseButton1Click:Connect(function()
		local PlaceID = game.PlaceId
		local AllIDs = {}
		local foundAnything = ""
		local actualHour = os.date("!*t").hour
		local File = pcall(function() AllIDs = HttpService:JSONDecode(readfile("NotSameServers.json")) end)
		if not File then table.insert(AllIDs, actualHour) writefile("NotSameServers.json", HttpService:JSONEncode(AllIDs)) end
		local function TPReturner()
			local Site = foundAnything == "" and HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100')) or HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
			if Site.nextPageCursor and Site.nextPageCursor ~= "null" then foundAnything = Site.nextPageCursor end
			for _, v in pairs(Site.data) do
				if tonumber(v.maxPlayers) > tonumber(v.playing) then
					local Possible = true
					for _, Existing in pairs(AllIDs) do if tostring(v.id) == tostring(Existing) then Possible = false end end
					if Possible then
						table.insert(AllIDs, v.id)
						pcall(function() writefile("NotSameServers.json", HttpService:JSONEncode(AllIDs)) end)
						TeleportService:TeleportToPlaceInstance(PlaceID, v.id, Player)
						task.wait(4)
					end
				end
			end
		end
		pcall(function() TPReturner() if foundAnything ~= "" then TPReturner() end end)
	end)

	spawn(function()
		while task.wait(0.5) do
			if noAnim and character then
				local anim = character:FindFirstChild("Animate")
				if anim then anim:Destroy() end
				if humanoid then for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do track:Stop() end end
			end

			if antiLagEnabled then
				for _, v in pairs(workspace:GetDescendants()) do
					if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") or v:IsA("Fire") or v:IsA("Sparkles") then v.Enabled = false end
				end
			end

			if timerEspEnabled and workspace:FindFirstChild("Plots") then
				for _, plot in pairs(workspace.Plots:GetChildren()) do
					local timeLabel = plot:FindFirstChild("Purchases", true) and plot.Purchases:FindFirstChild("PlotBlock", true) and plot.Purchases.PlotBlock.Main:FindFirstChild("BillboardGui", true) and plot.Purchases.PlotBlock.Main.BillboardGui:FindFirstChild("RemainingTime", true)
					if timeLabel and timeLabel:IsA("TextLabel") then
						local existingBillboard = plot:FindFirstChild("DooxBoxTimerESP")
						local displayText = timeLabel.Text
						if timeLabel.Text == "0s" then displayText = "UNLOCKED" end

						if not existingBillboard then
							local billboard = Instance.new("BillboardGui")
							billboard.Name = "DooxBoxTimerESP"
							billboard.Size = UDim2.new(0, 200, 0, 50)
							billboard.StudsOffset = Vector3.new(0, 5, 0)
							billboard.AlwaysOnTop = true
							billboard.Adornee = plot.Purchases.PlotBlock.Main
							local label = Instance.new("TextLabel")
							label.Text = displayText
							label.Size = UDim2.new(1, 0, 1, 0)
							label.BackgroundTransparency = 1
							label.TextScaled = true
							label.TextColor3 = Color3.fromRGB(255, 0, 0)
							label.TextStrokeColor3 = Color3.new(0, 0, 0)
							label.TextStrokeTransparency = 0
							label.Font = Enum.Font.GothamBold
							label.Parent = billboard
							billboard.Parent = plot
						else
							existingBillboard.TextLabel.Text = displayText
						end
					end
				end
			end

			if myPlotName and workspace.Plots:FindFirstChild(myPlotName) then
				local timeLabel = workspace.Plots[myPlotName]:FindFirstChild("Purchases", true) and workspace.Plots[myPlotName].Purchases:FindFirstChild("PlotBlock", true) and workspace.Plots[myPlotName].Purchases.PlotBlock.Main:FindFirstChild("BillboardGui", true) and workspace.Plots[myPlotName].Purchases.PlotBlock.Main.BillboardGui:FindFirstChild("RemainingTime", true)
				if timeLabel and timeLabel:IsA("TextLabel") then
					local isUnlocked = timeLabel.Text == "0s"

					if antiBaseStealEnabled then
						if isUnlocked and not lastUnlockState then
							Notify("AntibaseSteal", "Your plot is UNLOCKED! Go secure it!", nil)
						end
					end

					if autoLockEnabled then
						if isUnlocked and not lastUnlockState then
							Notify("Autolock", "Resetting character to lock base...", nil)
							task.wait(0.5)
							humanoid.Health = 0
						end
					end
					lastUnlockState = isUnlocked
				end
			end
		end
	end)

	RunService.Heartbeat:Connect(function()
		if not character then return end
		local rootPart = character:FindFirstChild("HumanoidRootPart")
		local hum = character:FindFirstChild("Humanoid")

		if isFloating and floatPlatform and rootPart then
			floatPlatform.CFrame = rootPart.CFrame * CFrame.new(0, -3.5, 0)
			if hum and hum.FloorMaterial == Enum.Material.Air then
				if rootPart.Velocity.Y < 0 then rootPart.Velocity = Vector3.new(rootPart.Velocity.X, -2, rootPart.Velocity.Z) end
			end
		end

		if platformEnabled and currentPlatform and rootPart then
			currentPlatform.CFrame = rootPart.CFrame * CFrame.new(0, -3.5, 0)
		end

		if autoBat and hum and rootPart then
			local tool = character:FindFirstChildOfClass("Tool")
			local holdingBat = tool and tool.Name == "Bat"
			local nearest, minDist = nil, 12
			for _, v in pairs(Players:GetPlayers()) do
				if v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
					local dist = (v.Character.HumanoidRootPart.Position - rootPart.Position).Magnitude
					if dist < minDist then minDist = dist nearest = v end
				end
			end
			if nearest then
				if not holdingBat then
					local bat = Player.Backpack:FindFirstChild("Bat")
					if bat then hum:EquipTool(bat) task.wait(0.1) end
				elseif holdingBat then
					if tick() - lastClick > 0.5 then tool:Activate() lastClick = tick() end
				end
			end
		end
	end)
end

local function LoadDuel()
	local RunService = game:GetService("RunService")
	local UserInputService = game:GetService("UserInputService")
	local ProximityPromptService = game:GetService("ProximityPromptService")

	local character = Player.Character or Player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local rootPart = character:FindFirstChild("HumanoidRootPart")

	local isFloating = false
	local floatPlatform = nil
	local autoBat = false
	local noAnim = false
	local lastClick = 0
	local infiniteJumpEnabled = false
	local jumpPlatform = nil
	local autoStealEnabled = false
	local currentStealPrompt = nil
	local stealStartTick = 0
	local speedStealEnabled = false
	local speedStealValue = 29

	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "DooxBox_Duel"
	screenGui.ResetOnSpawn = false
	screenGui.Parent = PlayerGui

	local mainFrame = Instance.new("Frame")
	mainFrame.Name = "MainFrame"
	mainFrame.Size = UDim2.new(0, 240, 0, 340)
	mainFrame.Position = UDim2.new(0.5, -120, 0, 50)
	mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	mainFrame.BorderSizePixel = 0
	mainFrame.Active = true
	mainFrame.Draggable = true
	mainFrame.Parent = screenGui

	local uiStroke = Instance.new("UIStroke")
	uiStroke.Color = Color3.fromRGB(255, 0, 0)
	uiStroke.Thickness = 2
	uiStroke.Parent = mainFrame

	local uiCorner = Instance.new("UICorner")
	uiCorner.CornerRadius = UDim.new(0, 8)
	uiCorner.Parent = mainFrame

	local pfp = Instance.new("ImageLabel")
	pfp.Size = UDim2.new(0, 45, 0, 45)
	pfp.Position = UDim2.new(1, -55, 0, 10)
	pfp.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	pfp.Parent = mainFrame
	local pfpCorner = Instance.new("UICorner")
	pfpCorner.CornerRadius = UDim.new(1, 0)
	pfpCorner.Parent = pfp
	local pfpStroke = Instance.new("UIStroke")
	pfpStroke.Color = Color3.fromRGB(255, 0, 0)
	pfpStroke.Thickness = 2
	pfpStroke.Parent = pfp

	spawn(function()
		local content = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		pfp.Image = content
	end)

	local usernameLabel = Instance.new("TextLabel")
	usernameLabel.Size = UDim2.new(0, 100, 0, 20)
	usernameLabel.Position = UDim2.new(1, -110, 0, 58)
	usernameLabel.BackgroundTransparency = 1
	usernameLabel.Text = Player.Name
	usernameLabel.TextColor3 = Color3.new(1, 1, 1)
	usernameLabel.Font = Enum.Font.GothamBold
	usernameLabel.TextSize = 12
	usernameLabel.TextXAlignment = Enum.TextXAlignment.Right
	usernameLabel.Parent = mainFrame

	local title = Instance.new("TextLabel")
	title.Text = "DOOXBOX - DUEL"
	title.TextColor3 = Color3.new(1, 1, 1)
	title.BackgroundTransparency = 1
	title.Size = UDim2.new(1, -120, 0, 30)
	title.Position = UDim2.new(0, 10, 0, 5)
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.Font = Enum.Font.GothamBold
	title.TextSize = 18
	title.TextStrokeTransparency = 0.7
	title.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
	title.Parent = mainFrame

	local titleGradient = Instance.new("UIGradient")
	titleGradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
		ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))
	})
	titleGradient.Parent = title

	local autoStealUI = Instance.new("Frame")
	autoStealUI.Name = "AutoStealUI"
	autoStealUI.Size = UDim2.new(0, 200, 0, 50)
	autoStealUI.Position = UDim2.new(0.5, -100, 0, 100)
	autoStealUI.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	autoStealUI.BorderSizePixel = 0
	autoStealUI.Visible = false
	autoStealUI.Parent = screenGui

	local asuCorner = Instance.new("UICorner")
	asuCorner.CornerRadius = UDim.new(0, 8)
	asuCorner.Parent = autoStealUI

	local asuStroke = Instance.new("UIStroke")
	asuStroke.Color = Color3.fromRGB(255, 0, 0)
	asuStroke.Thickness = 2
	asuStroke.Parent = autoStealUI

	local asuTitle = Instance.new("TextLabel")
	asuTitle.Size = UDim2.new(1, -60, 1, 0)
	asuTitle.Position = UDim2.new(0, 10, 0, 0)
	asuTitle.BackgroundTransparency = 1
	asuTitle.Text = "Stealing..."
	asuTitle.TextColor3 = Color3.new(1, 1, 1)
	asuTitle.Font = Enum.Font.GothamBold
	asuTitle.TextSize = 14
	asuTitle.TextXAlignment = Enum.TextXAlignment.Left
	asuTitle.Parent = autoStealUI

	local asuPercent = Instance.new("TextLabel")
	asuPercent.Size = UDim2.new(0, 50, 1, 0)
	asuPercent.Position = UDim2.new(1, -55, 0, 0)
	asuPercent.BackgroundTransparency = 1
	asuPercent.Text = "0%"
	asuPercent.TextColor3 = Color3.fromRGB(255, 0, 0)
	asuPercent.Font = Enum.Font.GothamBold
	asuPercent.TextSize = 14
	asuPercent.Parent = autoStealUI

	local allToggles = {}

	local function makeToggle(name, yPos)
		local container = Instance.new("Frame")
		container.Size = UDim2.new(1, -20, 0, 25)
		container.Position = UDim2.new(0, 10, 0, yPos)
		container.BackgroundTransparency = 1
		container.Parent = mainFrame

		local label = Instance.new("TextLabel")
		label.Text = name
		label.TextColor3 = Color3.new(1, 1, 1)
		label.BackgroundTransparency = 1
		label.Size = UDim2.new(0.6, 0, 1, 0)
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Font = Enum.Font.GothamBold
		label.TextSize = 15
		label.TextStrokeTransparency = 0.8
		label.Parent = container

		local btn = Instance.new("TextButton")
		btn.Name = name .. "Btn"
		btn.Size = UDim2.new(0, 50, 0, 26)
		btn.Position = UDim2.new(1, -52, 0.5, -13)
		btn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
		btn.Text = ""
		btn.Parent = container
		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(1, 0)
		corner.Parent = btn

		local knob = Instance.new("Frame")
		knob.Size = UDim2.new(0, 22, 0, 22)
		knob.Position = UDim2.new(0, 2, 0.5, -11)
		knob.BackgroundColor3 = Color3.new(1, 1, 1)
		knob.Parent = btn
		local knobCorner = Instance.new("UICorner")
		knobCorner.CornerRadius = UDim.new(1, 0)
		knobCorner.Parent = knob

		allToggles[name] = {Btn = btn, Knob = knob}
		return btn, knob
	end

	local floatBtn, floatKnob = makeToggle("Float", 85)
	local batBtn, batKnob = makeToggle("AutoBat", 115)
	local animBtn, animKnob = makeToggle("NoAnim", 145)
	local infJumpBtn, infJumpKnob = makeToggle("InfiniteJump", 175)
	local autoStealBtn, autoStealKnob = makeToggle("AutoSteal", 205)
	local speedStealBtn, speedStealKnob = makeToggle("SpeedSteal (29)", 235)

	local modAllBtn = Instance.new("TextButton")
	modAllBtn.Name = "ModAllBtn"
	modAllBtn.Size = UDim2.new(1, -20, 0, 30)
	modAllBtn.Position = UDim2.new(0, 10, 0, 270)
	modAllBtn.BackgroundColor3 = Color3.fromRGB(60, 0, 0)
	modAllBtn.Text = "MOD ALL"
	modAllBtn.TextColor3 = Color3.new(1, 1, 1)
	modAllBtn.Font = Enum.Font.GothamBold
	modAllBtn.TextSize = 14
	modAllBtn.Parent = mainFrame
	local modCorner = Instance.new("UICorner")
	modCorner.CornerRadius = UDim.new(0, 6)
	modCorner.Parent = modAllBtn
	local modStroke = Instance.new("UIStroke")
	modStroke.Color = Color3.fromRGB(255, 0, 0)
	modStroke.Thickness = 1
	modStroke.Parent = modAllBtn

	local function setupChar()
		character = Player.Character or Player.CharacterAdded:Wait()
		humanoid = character:WaitForChild("Humanoid")
		rootPart = character:FindFirstChild("HumanoidRootPart")
	end

	Player.CharacterAdded:Connect(setupChar)

	local function updateToggleUI(btn, knob, state)
		if state then
			btn.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
			knob.Position = UDim2.new(1, -24, 0.5, -11)
		else
			btn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
			knob.Position = UDim2.new(0, 2, 0.5, -11)
		end
	end

	floatBtn.MouseButton1Click:Connect(function()
		isFloating = not isFloating
		updateToggleUI(floatBtn, floatKnob, isFloating)
		if isFloating then
			if floatPlatform then floatPlatform:Destroy() end
			floatPlatform = Instance.new("Part")
			floatPlatform.Size = Vector3.new(6, 1, 6)
			floatPlatform.Transparency = 0.8
			floatPlatform.Material = Enum.Material.Neon
			floatPlatform.Color = Color3.fromRGB(255, 0, 0)
			floatPlatform.Anchored = true
			floatPlatform.CanCollide = true
			floatPlatform.Parent = workspace
		else
			if floatPlatform then floatPlatform:Destroy() end
		end
	end)

	batBtn.MouseButton1Click:Connect(function()
		autoBat = not autoBat
		updateToggleUI(batBtn, batKnob, autoBat)
	end)

	animBtn.MouseButton1Click:Connect(function()
		noAnim = not noAnim
		updateToggleUI(animBtn, animKnob, noAnim)
		if noAnim and character then
			local anim = character:FindFirstChild("Animate")
			if anim then anim:Destroy() end
		end
	end)

	infJumpBtn.MouseButton1Click:Connect(function()
		infiniteJumpEnabled = not infiniteJumpEnabled
		updateToggleUI(infJumpBtn, infJumpKnob, infiniteJumpEnabled)
		if infiniteJumpEnabled then
			if jumpPlatform then jumpPlatform:Destroy() end
			jumpPlatform = Instance.new("Part")
			jumpPlatform.Size = Vector3.new(6, 1, 6)
			jumpPlatform.Transparency = 1
			jumpPlatform.Anchored = true
			jumpPlatform.CanCollide = true
			jumpPlatform.Parent = workspace
		else
			if jumpPlatform then jumpPlatform:Destroy() end
		end
	end)

	UserInputService.JumpRequest:Connect(function()
		if infiniteJumpEnabled and character and jumpPlatform then
			local root = character:FindFirstChild("HumanoidRootPart")
			if root then
				jumpPlatform.CFrame = root.CFrame * CFrame.new(0, -3.5, 0)
			end
		end
	end)

	local TARGET_TEXT = "Steal"

	autoStealBtn.MouseButton1Click:Connect(function()
		autoStealEnabled = not autoStealEnabled
		updateToggleUI(autoStealBtn, autoStealKnob, autoStealEnabled)
		if not autoStealEnabled then
			autoStealUI.Visible = false
			if currentStealPrompt then
				currentStealPrompt:InputHoldEnd()
				currentStealPrompt = nil
			end
		end
	end)

	ProximityPromptService.PromptShown:Connect(function(prompt)
		if autoStealEnabled and prompt.KeyboardKeyCode == Enum.KeyCode.E then
			local isStealAction = string.find(prompt.ActionText, TARGET_TEXT) or string.find(prompt.ObjectText, TARGET_TEXT)
			if isStealAction then
				currentStealPrompt = prompt
				stealStartTick = tick()
				prompt:InputHoldBegin()
				autoStealUI.Visible = true
			end
		end
	end)

	ProximityPromptService.PromptHidden:Connect(function(prompt)
		if prompt == currentStealPrompt then
			prompt:InputHoldEnd()
			currentStealPrompt = nil
			autoStealUI.Visible = false
		end
	end)

	RunService.RenderStepped:Connect(function()
		if autoStealEnabled and currentStealPrompt and autoStealUI.Visible then
			local elapsed = tick() - stealStartTick
			local duration = 2
			local progress = math.clamp(elapsed / duration, 0, 1)
			asuPercent.Text = math.floor(progress * 100) .. "%"
		end
	end)

	speedStealBtn.MouseButton1Click:Connect(function()
		speedStealEnabled = not speedStealEnabled
		updateToggleUI(speedStealBtn, speedStealKnob, speedStealEnabled)
	end)

	modAllBtn.MouseButton1Click:Connect(function()
		isFloating = true
		autoBat = true
		noAnim = true
		infiniteJumpEnabled = true
		autoStealEnabled = true
		speedStealEnabled = true

		for name, data in pairs(allToggles) do
			updateToggleUI(data.Btn, data.Knob, true)
		end

		if floatPlatform then floatPlatform:Destroy() end
		floatPlatform = Instance.new("Part")
		floatPlatform.Size = Vector3.new(6, 1, 6)
		floatPlatform.Transparency = 0.8
		floatPlatform.Material = Enum.Material.Neon
		floatPlatform.Color = Color3.fromRGB(255, 0, 0)
		floatPlatform.Anchored = true
		floatPlatform.CanCollide = true
		floatPlatform.Parent = workspace

		if jumpPlatform then jumpPlatform:Destroy() end
		jumpPlatform = Instance.new("Part")
		jumpPlatform.Size = Vector3.new(6, 1, 6)
		jumpPlatform.Transparency = 1
		jumpPlatform.Anchored = true
		jumpPlatform.CanCollide = true
		jumpPlatform.Parent = workspace

		if character then
			local anim = character:FindFirstChild("Animate")
			if anim then anim:Destroy() end
		end
	end)

	spawn(function()
		while wait(0.5) do
			if noAnim and character then
				local anim = character:FindFirstChild("Animate")
				if anim then anim:Destroy() end
				if humanoid then
					local tracks = humanoid:GetPlayingAnimationTracks()
					for _, track in pairs(tracks) do track:Stop() end
				end
			end
		end
	end)

	RunService.Heartbeat:Connect(function()
		if not character then return end
		local rootPart = character:FindFirstChild("HumanoidRootPart")
		local hum = character:FindFirstChild("Humanoid")

		if isFloating and floatPlatform and rootPart then
			floatPlatform.CFrame = rootPart.CFrame * CFrame.new(0, -3.5, 0)
			if hum and hum.FloorMaterial == Enum.Material.Air then
				if rootPart.Velocity.Y < 0 then
					rootPart.Velocity = Vector3.new(rootPart.Velocity.X, -2, rootPart.Velocity.Z)
				end
			end
		end

		if speedStealEnabled and rootPart and hum then
			local moveDirection = hum.MoveDirection
			if moveDirection.Magnitude > 0 then
				rootPart.Velocity = Vector3.new(
					moveDirection.X * speedStealValue,
					rootPart.Velocity.Y,
					moveDirection.Z * speedStealValue
				)
			end
		end

		if autoBat and hum and rootPart then
			local tool = character:FindFirstChildOfClass("Tool")
			local holdingBat = tool and tool.Name == "Bat"
			local nearest = nil
			local minDist = 12

			for _, v in pairs(Players:GetPlayers()) do
				if v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
					local dist = (v.Character.HumanoidRootPart.Position - rootPart.Position).Magnitude
					if dist < minDist then
						minDist = dist
						nearest = v
					end
				end
			end

			if nearest then
				if not holdingBat then
					local bat = Player.Backpack:FindFirstChild("Bat")
					if bat then
						hum:EquipTool(bat)
						wait(0.1)
					end
				elseif holdingBat then
					if tick() - lastClick > 0.5 then
						tool:Activate()
						lastClick = tick()
					end
				end
			end
		end
	end)
end

SabBtn.MouseButton1Click:Connect(function()
	MainFrame:Destroy()
	LoadSab()
end)

DuelBtn.MouseButton1Click:Connect(function()
	MainFrame:Destroy()
	LoadDuel()
end)
