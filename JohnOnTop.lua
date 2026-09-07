local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer
local PlaceId = game.PlaceId

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

local CircleBtn = Instance.new("ImageButton")
CircleBtn.Name = "CircleToggle"
CircleBtn.Parent = ScreenGui
CircleBtn.Position = UDim2.new(0.05,0,0.45,0)
CircleBtn.Size = UDim2.new(0,55,0,55)
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
CircleCorner.CornerRadius = UDim.new(1,0)
CircleCorner.Parent = CircleBtn

local LoadingFrame = Instance.new("Frame")
LoadingFrame.Parent = ScreenGui
LoadingFrame.BackgroundColor3 = Color3.fromRGB(8,18,35)
LoadingFrame.Position = UDim2.new(0.5,-175,0.5,-105)
LoadingFrame.Size = UDim2.new(0,350,0,210)
LoadingFrame.Visible = true
LoadingFrame.BorderSizePixel = 0

local LoadingCorner = Instance.new("UICorner")
LoadingCorner.CornerRadius = UDim.new(0,14)
LoadingCorner.Parent = LoadingFrame

local LoadingStroke = Instance.new("UIStroke")
LoadingStroke.Parent = LoadingFrame
LoadingStroke.Color = Color3.fromRGB(0,170,255)
LoadingStroke.Thickness = 1.5

local LoadingTitle = Instance.new("TextLabel")
LoadingTitle.Parent = LoadingFrame
LoadingTitle.BackgroundTransparency = 1
LoadingTitle.Position = UDim2.new(0.05,0,0.12,0)
LoadingTitle.Size = UDim2.new(0.9,0,0,35)
LoadingTitle.Font = Enum.Font.GothamBold
LoadingTitle.Text = "JOHN ON TOP 👑"
LoadingTitle.TextColor3 = Color3.fromRGB(70,200,255)
LoadingTitle.TextSize = 21

local LoadingText = Instance.new("TextLabel")
LoadingText.Parent = LoadingFrame
LoadingText.BackgroundTransparency = 1
LoadingText.Position = UDim2.new(0.05,0,0.36,0)
LoadingText.Size = UDim2.new(0.9,0,0,25)
LoadingText.Font = Enum.Font.Gotham
LoadingText.Text = "Starting..."
LoadingText.TextColor3 = Color3.fromRGB(160,200,225)
LoadingText.TextSize = 13

local LoadingPercent = Instance.new("TextLabel")
LoadingPercent.Parent = LoadingFrame
LoadingPercent.BackgroundTransparency = 1
LoadingPercent.Position = UDim2.new(0.05,0,0.52,0)
LoadingPercent.Size = UDim2.new(0.9,0,0,25)
LoadingPercent.Font = Enum.Font.GothamBold
LoadingPercent.Text = "0%"
LoadingPercent.TextColor3 = Color3.fromRGB(100,210,255)
LoadingPercent.TextSize = 14

local LoadingBarBG = Instance.new("Frame")
LoadingBarBG.Parent = LoadingFrame
LoadingBarBG.BackgroundColor3 = Color3.fromRGB(5,14,28)
LoadingBarBG.Position = UDim2.new(0.08,0,0.70,0)
LoadingBarBG.Size = UDim2.new(0.84,0,0,12)
LoadingBarBG.BorderSizePixel = 0

local BarBGCorner = Instance.new("UICorner")
BarBGCorner.CornerRadius = UDim.new(1,0)
BarBGCorner.Parent = LoadingBarBG

local LoadingBar = Instance.new("Frame")
LoadingBar.Parent = LoadingBarBG
LoadingBar.BackgroundColor3 = Color3.fromRGB(0,150,255)
LoadingBar.Size = UDim2.new(0,0,1,0)
LoadingBar.BorderSizePixel = 0

local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(1,0)
BarCorner.Parent = LoadingBar

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(8,18,35)
MainFrame.Position = UDim2.new(0.5,-175,0.22,0)
MainFrame.Size = UDim2.new(0,350,0,420)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Visible = false
MainFrame.BorderSizePixel = 0

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0,14)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Parent = MainFrame
MainStroke.Color = Color3.fromRGB(0,170,255)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.25

local TopBar = Instance.new("Frame")
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(10,30,55)
TopBar.Size = UDim2.new(1,0,0,65)
TopBar.BorderSizePixel = 0

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0,14)
TopCorner.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Parent = TopBar
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.06,0,0.12,0)
Title.Size = UDim2.new(0,250,0,28)
Title.Font = Enum.Font.GothamBold
Title.Text = "JOHN ON TOP 👑"
Title.TextColor3 = Color3.fromRGB(70,200,255)
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left

local Subtitle = Instance.new("TextLabel")
Subtitle.Parent = TopBar
Subtitle.BackgroundTransparency = 1
Subtitle.Position = UDim2.new(0.06,0,0.55,0)
Subtitle.Size = UDim2.new(0,230,0,18)
Subtitle.Font = Enum.Font.Gotham
Subtitle.Text = "1-PLAYER SERVER BROWSER"
Subtitle.TextColor3 = Color3.fromRGB(130,170,200)
Subtitle.TextSize = 10
Subtitle.TextXAlignment = Enum.TextXAlignment.Left

local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = TopBar
CloseBtn.BackgroundColor3 = Color3.fromRGB(20,70,110)
CloseBtn.Position = UDim2.new(0.89,0,0.22,0)
CloseBtn.Size = UDim2.new(0,32,0,32)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "×"
CloseBtn.TextColor3 = Color3.fromRGB(220,245,255)
CloseBtn.TextSize = 20

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0,9)
CloseCorner.Parent = CloseBtn

local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Parent = MainFrame
ScrollFrame.BackgroundColor3 = Color3.fromRGB(5,14,28)
ScrollFrame.Position = UDim2.new(0.045,0,0.19,0)
ScrollFrame.Size = UDim2.new(0,319,0,275)
ScrollFrame.CanvasSize = UDim2.new(0,0,0,0)
ScrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollFrame.ScrollBarThickness = 4
ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(0,160,255)
ScrollFrame.BorderSizePixel = 0

local ScrollCorner = Instance.new("UICorner")
ScrollCorner.CornerRadius = UDim.new(0,10)
ScrollCorner.Parent = ScrollFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ScrollFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0,8)

local RefreshBtn = Instance.new("TextButton")
RefreshBtn.Name = "RefreshButton"
RefreshBtn.Parent = MainFrame
RefreshBtn.BackgroundColor3 = Color3.fromRGB(0,130,220)
RefreshBtn.Position = UDim2.new(0.045,0,0.865,0)
RefreshBtn.Size = UDim2.new(0,319,0,42)
RefreshBtn.Font = Enum.Font.GothamBold
RefreshBtn.Text = "⟳  REFRESH SERVERS"
RefreshBtn.TextColor3 = Color3.fromRGB(255,255,255)
RefreshBtn.TextSize = 13

local RefreshCorner = Instance.new("UICorner")
RefreshCorner.CornerRadius = UDim.new(0,9)
RefreshCorner.Parent = RefreshBtn

local RefreshStroke = Instance.new("UIStroke")
RefreshStroke.Parent = RefreshBtn
RefreshStroke.Color = Color3.fromRGB(70,200,255)
RefreshStroke.Thickness = 1
RefreshStroke.Transparency = 0.4

local function LoadServers()

    for _,child in ipairs(ScrollFrame:GetChildren()) do
        if child:IsA("Frame") or child:IsA("TextLabel") then
            child:Destroy()
        end
    end

    local success,result = pcall(function()
        return HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/"
                .. PlaceId ..
                "/servers/Public?sortOrder=Asc&limit=100"
            )
        )
    end)

    if not success or not result or not result.data then

        local ErrorLabel = Instance.new("TextLabel")
        ErrorLabel.Parent = ScrollFrame
        ErrorLabel.BackgroundTransparency = 1
        ErrorLabel.Size = UDim2.new(1,0,0,50)
        ErrorLabel.Font = Enum.Font.GothamBold
        ErrorLabel.Text = "Failed to fetch servers!"
        ErrorLabel.TextColor3 = Color3.fromRGB(255,100,100)
        ErrorLabel.TextSize = 14

        return
    end

    local count = 0

    for _,server in ipairs(result.data) do

        if count >= 25 then
            break
        end

        if server.playing == 1 and server.id ~= game.JobId then

            count += 1

            local ServerFrame = Instance.new("Frame")
            ServerFrame.Parent = ScrollFrame
            ServerFrame.BackgroundColor3 = Color3.fromRGB(12,32,55)
            ServerFrame.Size = UDim2.new(0,300,0,48)
            ServerFrame.BorderSizePixel = 0
            ServerFrame.LayoutOrder = count

            local ItemCorner = Instance.new("UICorner")
            ItemCorner.CornerRadius = UDim.new(0,9)
            ItemCorner.Parent = ServerFrame

            local ItemStroke = Instance.new("UIStroke")
            ItemStroke.Parent = ServerFrame
            ItemStroke.Color = Color3.fromRGB(30,120,180)
            ItemStroke.Thickness = 1
            ItemStroke.Transparency = 0.55

            local InfoLabel = Instance.new("TextLabel")
            InfoLabel.Parent = ServerFrame
            InfoLabel.BackgroundTransparency = 1
            InfoLabel.Position = UDim2.new(0.045,0,0,0)
            InfoLabel.Size = UDim2.new(0,175,1,0)
            InfoLabel.Font = Enum.Font.GothamMedium
            InfoLabel.Text = "Server "..count.."  •  1/"..server.maxPlayers
            InfoLabel.TextColor3 = Color3.fromRGB(180,225,255)
            InfoLabel.TextSize = 13
            InfoLabel.TextXAlignment = Enum.TextXAlignment.Left

            local JoinBtn = Instance.new("TextButton")
            JoinBtn.Parent = ServerFrame
            JoinBtn.BackgroundColor3 = Color3.fromRGB(0,130,220)
            JoinBtn.Position = UDim2.new(0.70,0,0.18,0)
            JoinBtn.Size = UDim2.new(0,78,0,30)
            JoinBtn.Font = Enum.Font.GothamBold
            JoinBtn.Text = "JOIN"
            JoinBtn.TextColor3 = Color3.fromRGB(255,255,255)
            JoinBtn.TextSize = 12

            local JoinCorner = Instance.new("UICorner")
            JoinCorner.CornerRadius = UDim.new(0,7)
            JoinCorner.Parent = JoinBtn

            JoinBtn.MouseButton1Click:Connect(function()

                JoinBtn.Text = "Joining..."

                local ok = pcall(function()
                    TeleportService:TeleportToPlaceInstance(
                        PlaceId,
                        server.id,
                        Player
                    )
                end)

                if not ok then
                    JoinBtn.Text = "RETRY"
                end

            end)
        end
    end

    if count == 0 then

        local NoServerLabel = Instance.new("TextLabel")
        NoServerLabel.Parent = ScrollFrame
        NoServerLabel.BackgroundTransparency = 1
        NoServerLabel.Size = UDim2.new(1,0,0,50)
        NoServerLabel.Font = Enum.Font.GothamBold
        NoServerLabel.Text = "No 1-player servers found!"
        NoServerLabel.TextColor3 = Color3.fromRGB(100,190,255)
        NoServerLabel.TextSize = 14

    end
end

RefreshBtn.MouseButton1Click:Connect(function()

    RefreshBtn.Text = "⟳  REFRESHING..."
    RefreshBtn.Active = false

    LoadServers()

    task.wait(0.5)

    RefreshBtn.Text = "REFRESH SERVERS"
    RefreshBtn.Active = true

end)

local function StartLoading()

    LoadingFrame.Visible = true
    MainFrame.Visible = false
    CircleBtn.Visible = false

    for i = 0,100 do

        LoadingPercent.Text = i.."%"
        LoadingBar.Size = UDim2.new(i/100,0,1,0)

        if i < 20 then
            LoadingText.Text = "Initializing..."
        elseif i < 40 then
            LoadingText.Text = "Loading interface..."
        elseif i < 60 then
            LoadingText.Text = "Connecting to Roblox..."
        elseif i < 80 then
            LoadingText.Text = "Loading server finder..."
        elseif i < 100 then
            LoadingText.Text = "Preparing JOHN ON TOP..."
        else
            LoadingText.Text = "Ready!"
        end

        task.wait(0.025)
    end

    task.wait(0.4)

    local Fade = TweenService:Create(
        LoadingFrame,
        TweenInfo.new(0.35),
        {
            BackgroundTransparency = 1
        }
    )

    Fade:Play()

    for _,object in ipairs(LoadingFrame:GetDescendants()) do

        if object:IsA("TextLabel") then

            TweenService:Create(
                object,
                TweenInfo.new(0.25),
                {
                    TextTransparency = 1
                }
            ):Play()

        elseif object:IsA("UIStroke") then

            TweenService:Create(
                object,
                TweenInfo.new(0.25),
                {
                    Transparency = 1
                }
            ):Play()

        end
    end

    task.wait(0.3)

    LoadingFrame.Visible = false
    LoadingFrame.BackgroundTransparency = 0

    for _,object in ipairs(LoadingFrame:GetDescendants()) do

        if object:IsA("TextLabel") then
            object.TextTransparency = 0
        elseif object:IsA("UIStroke") then
            object.Transparency = 0
        end

    end

    MainFrame.Visible = true
    CircleBtn.Visible = true

    LoadServers()
end

CircleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

task.spawn(StartLoading)
