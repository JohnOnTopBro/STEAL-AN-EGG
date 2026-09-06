--==================================================
-- JOHN ON TOP 👑
-- 1-PLAYER SERVER BROWSER
--==================================================

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer
local PlaceId = game.PlaceId

--==================================================
-- KEYS
--==================================================

local VALID_KEYS = {
    "JOHNONTOP",
}

--==================================================
-- REMOVE OLD GUI
--==================================================

pcall(function()
    local old = game:GetService("CoreGui"):FindFirstChild("JohnOnTopGUI")
    if old then
        old:Destroy()
    end
end)

pcall(function()
    if gethui then
        local old = gethui():FindFirstChild("JohnOnTopGUI")
        if old then
            old:Destroy()
        end
    end
end)

--==================================================
-- GUI
--==================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "JohnOnTopGUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if gethui then
    ScreenGui.Parent = gethui()
elseif syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
    ScreenGui.Parent = game:GetService("CoreGui")
else
    ScreenGui.Parent = game:GetService("CoreGui")
end

--==================================================
-- CIRCLE BUTTON
--==================================================

local CircleBtn = Instance.new("ImageButton")
CircleBtn.Name = "CircleToggle"
CircleBtn.Parent = ScreenGui
CircleBtn.Position = UDim2.new(0.05, 0, 0.45, 0)
CircleBtn.Size = UDim2.new(0, 55, 0, 55)
CircleBtn.BackgroundTransparency = 1
CircleBtn.BorderSizePixel = 0
CircleBtn.Image = "rbxassetid://134112829099529"
CircleBtn.ScaleType = Enum.ScaleType.Crop
CircleBtn.Visible = false
CircleBtn.Active = true
CircleBtn.Draggable = true
CircleBtn.AutoButtonColor = false
CircleBtn.ZIndex = 50

local CircleCorner = Instance.new("UICorner")
CircleCorner.CornerRadius = UDim.new(1, 0)
CircleCorner.Parent = CircleBtn

--==================================================
-- KEY GUI
--==================================================

local KeyFrame = Instance.new("Frame")
KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = ScreenGui
KeyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
KeyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
KeyFrame.Size = UDim2.new(0, 350, 0, 210)
KeyFrame.BackgroundColor3 = Color3.fromRGB(8, 18, 35)
KeyFrame.BorderSizePixel = 0
KeyFrame.Active = true
KeyFrame.Draggable = true
KeyFrame.ZIndex = 10

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 14)
KeyCorner.Parent = KeyFrame

local KeyStroke = Instance.new("UIStroke")
KeyStroke.Parent = KeyFrame
KeyStroke.Color = Color3.fromRGB(0, 170, 255)
KeyStroke.Thickness = 1.5

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Parent = KeyFrame
KeyTitle.BackgroundTransparency = 1
KeyTitle.Position = UDim2.new(0.06, 0, 0.08, 0)
KeyTitle.Size = UDim2.new(0.88, 0, 0, 32)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.Text = "JOHN ON TOP 👑"
KeyTitle.TextColor3 = Color3.fromRGB(70, 200, 255)
KeyTitle.TextSize = 20

local KeySubtitle = Instance.new("TextLabel")
KeySubtitle.Parent = KeyFrame
KeySubtitle.BackgroundTransparency = 1
KeySubtitle.Position = UDim2.new(0.06, 0, 0.27, 0)
KeySubtitle.Size = UDim2.new(0.88, 0, 0, 20)
KeySubtitle.Font = Enum.Font.Gotham
KeySubtitle.Text = "Enter your key"
KeySubtitle.TextColor3 = Color3.fromRGB(130, 170, 200)
KeySubtitle.TextSize = 12

local KeyBox = Instance.new("TextBox")
KeyBox.Parent = KeyFrame
KeyBox.BackgroundColor3 = Color3.fromRGB(5, 14, 28)
KeyBox.Position = UDim2.new(0.06, 0, 0.42, 0)
KeyBox.Size = UDim2.new(0.88, 0, 0, 42)
KeyBox.Font = Enum.Font.GothamMedium
KeyBox.PlaceholderText = "Enter key..."
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(220, 245, 255)
KeyBox.TextSize = 14
KeyBox.ClearTextOnFocus = false
KeyBox.ZIndex = 11

local KeyBoxCorner = Instance.new("UICorner")
KeyBoxCorner.CornerRadius = UDim.new(0, 9)
KeyBoxCorner.Parent = KeyBox

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Parent = KeyFrame
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 130, 220)
SubmitBtn.Position = UDim2.new(0.06, 0, 0.70, 0)
SubmitBtn.Size = UDim2.new(0.88, 0, 0, 38)
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.Text = "UNLOCK"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextSize = 13
SubmitBtn.ZIndex = 11

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 8)
SubmitCorner.Parent = SubmitBtn

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Parent = KeyFrame
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0.06, 0, 0.89, 0)
StatusLabel.Size = UDim2.new(0.88, 0, 0, 18)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 90, 90)
StatusLabel.TextSize = 11

--==================================================
-- LOADING GUI
--==================================================

local LoadingFrame = Instance.new("Frame")
LoadingFrame.Parent = ScreenGui
LoadingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
LoadingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
LoadingFrame.Size = UDim2.new(0, 285, 0, 285)
LoadingFrame.BackgroundColor3 = Color3.fromRGB(7, 16, 30)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Visible = false
LoadingFrame.ZIndex = 100

local LoadingCorner = Instance.new("UICorner")
LoadingCorner.CornerRadius = UDim.new(0, 20)
LoadingCorner.Parent = LoadingFrame

local LoadingStroke = Instance.new("UIStroke")
LoadingStroke.Parent = LoadingFrame
LoadingStroke.Color = Color3.fromRGB(0, 170, 255)
LoadingStroke.Thickness = 1.5

--==================================================
-- LOADING IMAGE
--==================================================

local LoadingPicture = Instance.new("ImageLabel")
LoadingPicture.Parent = LoadingFrame
LoadingPicture.AnchorPoint = Vector2.new(0.5, 0)
LoadingPicture.Position = UDim2.new(0.5, 0, 0.10, 0)
LoadingPicture.Size = UDim2.new(0, 110, 0, 110)
LoadingPicture.BackgroundTransparency = 1
LoadingPicture.Image = "rbxassetid://134112829099529"
LoadingPicture.ScaleType = Enum.ScaleType.Crop
LoadingPicture.ZIndex = 102

local PictureCorner = Instance.new("UICorner")
PictureCorner.CornerRadius = UDim.new(1, 0)
PictureCorner.Parent = LoadingPicture

local PictureStroke = Instance.new("UIStroke")
PictureStroke.Parent = LoadingPicture
PictureStroke.Color = Color3.fromRGB(0, 190, 255)
PictureStroke.Thickness = 2

--==================================================
-- LOADING TITLE
--==================================================

local LoadingTitle = Instance.new("TextLabel")
LoadingTitle.Parent = LoadingFrame
LoadingTitle.BackgroundTransparency = 1
LoadingTitle.Position = UDim2.new(0.05, 0, 0.55, 0)
LoadingTitle.Size = UDim2.new(0.9, 0, 0, 30)
LoadingTitle.Font = Enum.Font.GothamBold
LoadingTitle.Text = "JOHN ON TOP 👑"
LoadingTitle.TextColor3 = Color3.fromRGB(70, 200, 255)
LoadingTitle.TextSize = 20
LoadingTitle.ZIndex = 102

--==================================================
-- LOADING STATUS
--==================================================

local LoadingText = Instance.new("TextLabel")
LoadingText.Parent = LoadingFrame
LoadingText.BackgroundTransparency = 1
LoadingText.Position = UDim2.new(0.05, 0, 0.67, 0)
LoadingText.Size = UDim2.new(0.9, 0, 0, 20)
LoadingText.Font = Enum.Font.GothamMedium
LoadingText.Text = "Loading..."
LoadingText.TextColor3 = Color3.fromRGB(145, 185, 215)
LoadingText.TextSize = 12
LoadingText.ZIndex = 102

--==================================================
-- LOADING BAR
--==================================================

local LoadingBarBG = Instance.new("Frame")
LoadingBarBG.Parent = LoadingFrame
LoadingBarBG.Position = UDim2.new(0.10, 0, 0.79, 0)
LoadingBarBG.Size = UDim2.new(0.80, 0, 0, 8)
LoadingBarBG.BackgroundColor3 = Color3.fromRGB(4, 12, 24)
LoadingBarBG.BorderSizePixel = 0
LoadingBarBG.ZIndex = 102

local BarBGCorner = Instance.new("UICorner")
BarBGCorner.CornerRadius = UDim.new(1, 0)
BarBGCorner.Parent = LoadingBarBG

local LoadingBar = Instance.new("Frame")
LoadingBar.Parent = LoadingBarBG
LoadingBar.Size = UDim2.new(0, 0, 1, 0)
LoadingBar.BackgroundColor3 = Color3.fromRGB(0, 165, 255)
LoadingBar.BorderSizePixel = 0
LoadingBar.ZIndex = 103

local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(1, 0)
BarCorner.Parent = LoadingBar

--==================================================
-- PERCENT
--==================================================

local LoadingPercent = Instance.new("TextLabel")
LoadingPercent.Parent = LoadingFrame
LoadingPercent.BackgroundTransparency = 1
LoadingPercent.Position = UDim2.new(0.05, 0, 0.86, 0)
LoadingPercent.Size = UDim2.new(0.9, 0, 0, 18)
LoadingPercent.Font = Enum.Font.GothamBold
LoadingPercent.Text = "0%"
LoadingPercent.TextColor3 = Color3.fromRGB(95, 210, 255)
LoadingPercent.TextSize = 11
LoadingPercent.ZIndex = 102

--==================================================
-- MAIN GUI
--==================================================

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(8, 18, 35)
MainFrame.Size = UDim2.new(0, 350, 0, 420)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false
MainFrame.ZIndex = 5

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 14)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Parent = MainFrame
MainStroke.Color = Color3.fromRGB(0, 170, 255)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.25

--==================================================
-- TOP BAR
--==================================================

local TopBar = Instance.new("Frame")
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(10, 30, 55)
TopBar.Size = UDim2.new(1, 0, 0, 65)
TopBar.BorderSizePixel = 0
TopBar.ZIndex = 6

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0, 14)
TopCorner.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Parent = TopBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.06, 0, 0.12, 0)
Title.Size = UDim2.new(0, 250, 0, 28)
Title.Font = Enum.Font.GothamBold
Title.Text = "JOHN ON TOP 👑"
Title.TextColor3 = Color3.fromRGB(70, 200, 255)
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 7

local Subtitle = Instance.new("TextLabel")
Subtitle.Parent = TopBar
Subtitle.BackgroundTransparency = 1
Subtitle.Position = UDim2.new(0.06, 0, 0.55, 0)
Subtitle.Size = UDim2.new(0, 230, 0, 18)
Subtitle.Font = Enum.Font.Gotham
Subtitle.Text = "1-PLAYER SERVER BROWSER"
Subtitle.TextColor3 = Color3.fromRGB(130, 170, 200)
Subtitle.TextSize = 10
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.ZIndex = 7

local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = TopBar
CloseBtn.BackgroundColor3 = Color3.fromRGB(20, 70, 110)
CloseBtn.Position = UDim2.new(0.89, 0, 0.22, 0)
CloseBtn.Size = UDim2.new(0, 32, 0, 32)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "×"
CloseBtn.TextColor3 = Color3.fromRGB(220, 245, 255)
CloseBtn.TextSize = 20
CloseBtn.ZIndex = 8

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 9)
CloseCorner.Parent = CloseBtn

--==================================================
-- SERVER LIST
--==================================================

local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Parent = MainFrame
ScrollFrame.BackgroundColor3 = Color3.fromRGB(5, 14, 28)
ScrollFrame.Position = UDim2.new(0.045, 0, 0.19, 0)
ScrollFrame.Size = UDim2.new(0, 319, 0, 275)
ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollFrame.ScrollBarThickness = 4
ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 160, 255)
ScrollFrame.BorderSizePixel = 0
ScrollFrame.ZIndex = 6

local ScrollCorner = Instance.new("UICorner")
ScrollCorner.CornerRadius = UDim.new(0, 10)
ScrollCorner.Parent = ScrollFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ScrollFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

--==================================================
-- REFRESH BUTTON
--==================================================

local RefreshBtn = Instance.new("TextButton")
RefreshBtn.Name = "RefreshButton"
RefreshBtn.Parent = MainFrame
RefreshBtn.BackgroundColor3 = Color3.fromRGB(0, 130, 220)
RefreshBtn.Position = UDim2.new(0.045, 0, 0.865, 0)
RefreshBtn.Size = UDim2.new(0, 319, 0, 42)
RefreshBtn.Font = Enum.Font.GothamBold
RefreshBtn.Text = "⟳  REFRESH SERVERS"
RefreshBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
RefreshBtn.TextSize = 13
RefreshBtn.ZIndex = 7

local RefreshCorner = Instance.new("UICorner")
RefreshCorner.CornerRadius = UDim.new(0, 9)
RefreshCorner.Parent = RefreshBtn

--==================================================
-- SERVER LOADER
--==================================================

local function ClearServers()
    for _, child in ipairs(ScrollFrame:GetChildren()) do
        if child:IsA("Frame") or child:IsA("TextLabel") then
            child:Destroy()
        end
    end
end

local function ShowMessage(text, textColor)
    local Label = Instance.new("TextLabel")
    Label.Parent = ScrollFrame
    Label.BackgroundTransparency = 1
    Label.Size = UDim2.new(1, 0, 0, 50)
    Label.Font = Enum.Font.GothamBold
    Label.Text = text
    Label.TextColor3 = textColor
    Label.TextSize = 14
end

local function LoadServers()

    ClearServers()

    ShowMessage(
        "Searching servers...",
        Color3.fromRGB(100, 190, 255)
    )

    local success, result = pcall(function()

        local url =
            "https://games.roblox.com/v1/games/"
            .. tostring(PlaceId)
            .. "/servers/Public?sortOrder=Asc&limit=100"

        local response = game:HttpGet(url)

        return HttpService:JSONDecode(response)

    end)

    ClearServers()

    if not success or not result or not result.data then

        ShowMessage(
            "Failed to fetch servers!",
            Color3.fromRGB(255, 100, 100)
        )

        return
    end

    local count = 0

    for _, server in ipairs(result.data) do

        if count >= 25 then
            break
        end

        if server.playing == 1 and server.id ~= game.JobId then

            count += 1

            local ServerFrame = Instance.new("Frame")
            ServerFrame.Parent = ScrollFrame
            ServerFrame.BackgroundColor3 = Color3.fromRGB(12, 32, 55)
            ServerFrame.Size = UDim2.new(0, 300, 0, 48)
            ServerFrame.BorderSizePixel = 0
            ServerFrame.LayoutOrder = count

            local ItemCorner = Instance.new("UICorner")
            ItemCorner.CornerRadius = UDim.new(0, 9)
            ItemCorner.Parent = ServerFrame

            local InfoLabel = Instance.new("TextLabel")
            InfoLabel.Parent = ServerFrame
            InfoLabel.BackgroundTransparency = 1
            InfoLabel.Position = UDim2.new(0.045, 0, 0, 0)
            InfoLabel.Size = UDim2.new(0, 175, 1, 0)
            InfoLabel.Font = Enum.Font.GothamMedium
            InfoLabel.Text =
                "Server "
                .. count
                .. "  •  "
                .. server.playing
                .. "/"
                .. server.maxPlayers
            InfoLabel.TextColor3 = Color3.fromRGB(180, 225, 255)
            InfoLabel.TextSize = 13
            InfoLabel.TextXAlignment = Enum.TextXAlignment.Left

            local JoinBtn = Instance.new("TextButton")
            JoinBtn.Parent = ServerFrame
            JoinBtn.BackgroundColor3 = Color3.fromRGB(0, 130, 220)
            JoinBtn.Position = UDim2.new(0.70, 0, 0.18, 0)
            JoinBtn.Size = UDim2.new(0, 78, 0, 30)
            JoinBtn.Font = Enum.Font.GothamBold
            JoinBtn.Text = "JOIN"
            JoinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            JoinBtn.TextSize = 12

            local JoinCorner = Instance.new("UICorner")
            JoinCorner.CornerRadius = UDim.new(0, 7)
            JoinCorner.Parent = JoinBtn

            JoinBtn.MouseButton1Click:Connect(function()

                JoinBtn.Text = "JOINING..."

                local ok, err = pcall(function()

                    TeleportService:TeleportToPlaceInstance(
                        PlaceId,
                        server.id,
                        Player
                    )

                end)

                if not ok then
                    JoinBtn.Text = "RETRY"
                    warn("Teleport failed:", err)
                end

            end)
        end
    end

    if count == 0 then

        ShowMessage(
            "No 1-player servers found!",
            Color3.fromRGB(100, 190, 255)
        )

    end
end

--==================================================
-- REFRESH
--==================================================

RefreshBtn.MouseButton1Click:Connect(function()

    RefreshBtn.Text = "⟳  REFRESHING..."
    RefreshBtn.AutoButtonColor = false

    LoadServers()

    task.wait(0.5)

    RefreshBtn.Text = "⟳  REFRESH SERVERS"
    RefreshBtn.AutoButtonColor = true

end)

--==================================================
-- LOADING ANIMATION
--==================================================

local LoadingRunning = false

local function StartLoading()

    if LoadingRunning then
        return
    end

    LoadingRunning = true

    KeyFrame.Visible = false
    MainFrame.Visible = false
    CircleBtn.Visible = false
    LoadingFrame.Visible = true

    LoadingBar.Size = UDim2.new(0, 0, 1, 0)
    LoadingPercent.Text = "0%"
    LoadingText.Text = "Loading..."

    LoadingPicture.Rotation = 0

    LoadingFrame.Size = UDim2.new(0, 0, 0, 0)

    TweenService:Create(
        LoadingFrame,
        TweenInfo.new(
            0.6,
            Enum.EasingStyle.Back,
            Enum.EasingDirection.Out
        ),
        {
            Size = UDim2.new(0, 285, 0, 285)
        }
    ):Play()

    task.wait(0.6)

    task.spawn(function()

        while LoadingFrame.Visible do

            local rotationTween = TweenService:Create(
                LoadingPicture,
                TweenInfo.new(
                    1.2,
                    Enum.EasingStyle.Sine,
                    Enum.EasingDirection.InOut
                ),
                {
                    Rotation = 360
                }
            )

            rotationTween:Play()

            task.wait(1.2)

            LoadingPicture.Rotation = 0
        end

    end)

    for i = 0, 100 do

        if not LoadingFrame.Visible then
            break
        end

        LoadingPercent.Text = i .. "%"

        if i < 20 then
            LoadingText.Text = "Checking key..."
        elseif i < 45 then
            LoadingText.Text = "Connecting..."
        elseif i < 70 then
            LoadingText.Text = "Loading server..."
        elseif i < 90 then
            LoadingText.Text = "Checking access..."
        elseif i < 100 then
            LoadingText.Text = "Almost ready..."
        else
            LoadingText.Text = "Ready!"
        end

        TweenService:Create(
            LoadingBar,
            TweenInfo.new(
                0.08,
                Enum.EasingStyle.Linear
            ),
            {
                Size = UDim2.new(i / 100, 0, 1, 0)
            }
        ):Play()

        task.wait(0.035)
    end

    task.wait(0.6)

    TweenService:Create(
        LoadingFrame,
        TweenInf
