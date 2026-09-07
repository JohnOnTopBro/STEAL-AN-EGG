local _0x01=game:GetService("Players")
local _0x02=game:GetService("HttpService")
local _0x03=game:GetService("TeleportService")
local _0x04=game:GetService("TweenService")

local _0x05=_0x01.LocalPlayer
local _0x06=game.PlaceId

local _0x07=Instance.new("ScreenGui")
_0x07.Name="JOT_"..tostring(math.random(1000,9999))
_0x07.ResetOnSpawn=false
_0x07.ZIndexBehavior=Enum.ZIndexBehavior.Sibling

pcall(function()
    if gethui then
        _0x07.Parent=gethui()
    elseif syn and syn.protect_gui then
        syn.protect_gui(_0x07)
        _0x07.Parent=game:GetService("CoreGui")
    else
        _0x07.Parent=game:GetService("CoreGui")
    end
end)

local function _0x08(_p,_n,_s)
    local _o=Instance.new(_n)
    _o.Parent=_p
    if _s then
        for _k,_v in pairs(_s) do
            pcall(function() _o[_k]=_v end)
        end
    end
    return _o
end

local _0x09=_0x08(_0x07,"ImageButton",{
    Name="T_"..tostring(math.random(100,999)),
    Position=UDim2.new(.05,0,.45,0),
    Size=UDim2.new(0,55,0,55),
    BackgroundTransparency=1,
    BorderSizePixel=0,
    Image="rbxassetid://134112829099529",
    ScaleType=Enum.ScaleType.Crop,
    Visible=false,
    Active=true,
    Draggable=true,
    AutoButtonColor=false,
    ZIndex=50
})

_0x08(_0x09,"UICorner",{
    CornerRadius=UDim.new(1,0)
})

local _0x0A=_0x08(_0x07,"Frame",{
    BackgroundColor3=Color3.fromRGB(8,18,35),
    Position=UDim2.new(.5,-175,.5,-105),
    Size=UDim2.new(0,350,0,210),
    Visible=true,
    BorderSizePixel=0
})

_0x08(_0x0A,"UICorner",{
    CornerRadius=UDim.new(0,14)
})

local _0x0B=_0x08(_0x0A,"UIStroke",{
    Color=Color3.fromRGB(0,170,255),
    Thickness=1.5
})

local _0x0C=_0x08(_0x0A,"TextLabel",{
    BackgroundTransparency=1,
    Position=UDim2.new(.05,0,.12,0),
    Size=UDim2.new(.9,0,0,35),
    Font=Enum.Font.GothamBold,
    Text="JOHN ON TOP 👑",
    TextColor3=Color3.fromRGB(70,200,255),
    TextSize=21
})

local _0x0D=_0x08(_0x0A,"TextLabel",{
    BackgroundTransparency=1,
    Position=UDim2.new(.05,0,.36,0),
    Size=UDim2.new(.9,0,0,25),
    Font=Enum.Font.Gotham,
    Text="Starting...",
    TextColor3=Color3.fromRGB(160,200,225),
    TextSize=13
})

local _0x0E=_0x08(_0x0A,"TextLabel",{
    BackgroundTransparency=1,
    Position=UDim2.new(.05,0,.52,0),
    Size=UDim2.new(.9,0,0,25),
    Font=Enum.Font.GothamBold,
    Text="0%",
    TextColor3=Color3.fromRGB(100,210,255),
    TextSize=14
})

local _0x0F=_0x08(_0x0A,"Frame",{
    BackgroundColor3=Color3.fromRGB(5,14,28),
    Position=UDim2.new(.08,0,.70,0),
    Size=UDim2.new(.84,0,0,12),
    BorderSizePixel=0
})

_0x08(_0x0F,"UICorner",{
    CornerRadius=UDim.new(1,0)
})

local _0x10=_0x08(_0x0F,"Frame",{
    BackgroundColor3=Color3.fromRGB(0,150,255),
    Size=UDim2.new(0,0,1,0),
    BorderSizePixel=0
})

_0x08(_0x10,"UICorner",{
    CornerRadius=UDim.new(1,0)
})

local _0x11=_0x08(_0x07,"Frame",{
    Name="C_"..tostring(math.random(1000,9999)),
    BackgroundColor3=Color3.fromRGB(8,18,35),
    Position=UDim2.new(.5,-160,0,25),
    Size=UDim2.new(0,320,0,60),
    BorderSizePixel=0,
    Visible=false,
    ZIndex=100
})

_0x08(_0x11,"UICorner",{
    CornerRadius=UDim.new(0,12)
})

local _0x12=_0x08(_0x11,"UIStroke",{
    Color=Color3.fromRGB(0,170,255),
    Thickness=1.5,
    Transparency=.15
})

local _0x13=_0x08(_0x11,"TextLabel",{
    BackgroundTransparency=1,
    Size=UDim2.new(1,-20,1,0),
    Position=UDim2.new(0,10,0,0),
    Font=Enum.Font.GothamBold,
    Text="Credits to JohnOnTop 👑",
    TextColor3=Color3.fromRGB(70,200,255),
    TextSize=16,
    ZIndex=101
})

local function _0x14()
    _0x11.Visible=true
    _0x11.BackgroundTransparency=1
    _0x13.TextTransparency=1
    _0x12.Transparency=1
    _0x11.Position=UDim2.new(.5,-160,-.05,0)

    _0x04:Create(
        _0x11,
        TweenInfo.new(.5,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),
        {
            Position=UDim2.new(.5,-160,0,25),
            BackgroundTransparency=0
        }
    ):Play()

    _0x04:Create(
        _0x13,
        TweenInfo.new(.4),
        {TextTransparency=0}
    ):Play()

    _0x04:Create(
        _0x12,
        TweenInfo.new(.4),
        {Transparency=.15}
    ):Play()

    task.wait(5)

    _0x04:Create(
        _0x11,
        TweenInfo.new(.5,Enum.EasingStyle.Quint,Enum.EasingDirection.In),
        {
            Position=UDim2.new(.5,-160,-.05,0),
            BackgroundTransparency=1
        }
    ):Play()

    _0x04:Create(
        _0x13,
        TweenInfo.new(.4),
        {TextTransparency=1}
    ):Play()

    _0x04:Create(
        _0x12,
        TweenInfo.new(.4),
        {Transparency=1}
    ):Play()

    task.wait(.5)
    _0x11.Visible=false
end

local _0x15=_0x08(_0x07,"Frame",{
    Name="M_"..tostring(math.random(1000,9999)),
    BackgroundColor3=Color3.fromRGB(8,18,35),
    Position=UDim2.new(.5,-175,.22,0),
    Size=UDim2.new(0,350,0,420),
    Active=true,
    Draggable=true,
    Visible=false,
    BorderSizePixel=0
})

_0x08(_0x15,"UICorner",{
    CornerRadius=UDim.new(0,14)
})

_0x08(_0x15,"UIStroke",{
    Color=Color3.fromRGB(0,170,255),
    Thickness=1.5,
    Transparency=.25
})

local _0x16=_0x08(_0x15,"Frame",{
    BackgroundColor3=Color3.fromRGB(10,30,55),
    Size=UDim2.new(1,0,0,65),
    BorderSizePixel=0
})

_0x08(_0x16,"UICorner",{
    CornerRadius=UDim.new(0,14)
})

_0x08(_0x16,"TextLabel",{
    BackgroundTransparency=1,
    Position=UDim2.new(.06,0,.12,0),
    Size=UDim2.new(0,250,0,28),
    Font=Enum.Font.GothamBold,
    Text="JOHN ON TOP 👑",
    TextColor3=Color3.fromRGB(70,200,255),
    TextSize=20,
    TextXAlignment=Enum.TextXAlignment.Left
})

_0x08(_0x16,"TextLabel",{
    BackgroundTransparency=1,
    Position=UDim2.new(.06,0,.55,0),
    Size=UDim2.new(0,230,0,18),
    Font=Enum.Font.Gotham,
    Text="1-PLAYER SERVER BROWSER",
    TextColor3=Color3.fromRGB(130,170,200),
    TextSize=10,
    TextXAlignment=Enum.TextXAlignment.Left
})

local _0x17=_0x08(_0x16,"TextButton",{
    BackgroundColor3=Color3.fromRGB(20,70,110),
    Position=UDim2.new(.89,0,.22,0),
    Size=UDim2.new(0,32,0,32),
    Font=Enum.Font.GothamBold,
    Text="×",
    TextColor3=Color3.fromRGB(220,245,255),
    TextSize=20
})

_0x08(_0x17,"UICorner",{
    CornerRadius=UDim.new(0,9)
})

local _0x18=_0x08(_0x15,"ScrollingFrame",{
    BackgroundColor3=Color3.fromRGB(5,14,28),
    Position=UDim2.new(.045,0,.19,0),
    Size=UDim2.new(0,319,0,275),
    CanvasSize=UDim2.new(0,0,0,0),
    AutomaticCanvasSize=Enum.AutomaticSize.Y,
    ScrollBarThickness=4,
    ScrollBarImageColor3=Color3.fromRGB(0,160,255),
    BorderSizePixel=0
})

_0x08(_0x18,"UICorner",{
    CornerRadius=UDim.new(0,10)
})

local _0x19=_0x08(_0x18,"UIListLayout",{
    SortOrder=Enum.SortOrder.LayoutOrder,
    Padding=UDim.new(0,8)
})

local _0x1A=_0x08(_0x15,"TextButton",{
    Name="RefreshButton",
    BackgroundColor3=Color3.fromRGB(0,130,220),
    Position=UDim2.new(.045,0,.865,0),
    Size=UDim2.new(0,319,0,42),
    Font=Enum.Font.GothamBold,
    Text="⟳  REFRESH SERVERS",
    TextColor3=Color3.fromRGB(255,255,255),
    TextSize=13
})

_0x08(_0x1A,"UICorner",{
    CornerRadius=UDim.new(0,9)
})

_0x08(_0x1A,"UIStroke",{
    Color=Color3.fromRGB(70,200,255),
    Thickness=1,
    Transparency=.4
})

local function _0x1B()
    for _,_v in ipairs(_0x18:GetChildren()) do
        if _v:IsA("Frame") or _v:IsA("TextLabel") then
            _v:Destroy()
        end
    end

    local _ok,_data=pcall(function()
        local _url="https://games.roblox.com/v1/games/"
            ..tostring(_0x06)
            .."/servers/Public?sortOrder=Asc&limit=100"

        return _0x02:JSONDecode(game:HttpGet(_url))
    end)

    if not _ok or not _data or not _data.data then
        local _e=_0x08(_0x18,"TextLabel",{
            BackgroundTransparency=1,
            Size=UDim2.new(1,0,0,50),
            Font=Enum.Font.GothamBold,
            Text="Failed to fetch servers!",
            TextColor3=Color3.fromRGB(255,100,100),
            TextSize=14
        })
        return
    end

    local _count=0

    for _,_srv in ipairs(_data.data) do
        if _count>=25 then
            break
        end

        if _srv.playing==1 and _srv.id~=game.JobId then
            _count+=1

            local _row=_0x08(_0x18,"Frame",{
                BackgroundColor3=Color3.fromRGB(12,32,55),
                Size=UDim2.new(0,300,0,48),
                BorderSizePixel=0,
                LayoutOrder=_count
            })

            _0x08(_row,"UICorner",{
                CornerRadius=UDim.new(0,9)
            })

            _0x08(_row,"UIStroke",{
                Color=Color3.fromRGB(30,120,180),
                Thickness=1,
                Transparency=.55
            })

            _0x08(_row,"TextLabel",{
                BackgroundTransparency=1,
                Position=UDim2.new(.045,0,0,0),
                Size=UDim2.new(0,175,1,0),
                Font=Enum.Font.GothamMedium,
                Text="Server ".._count.."  •  1/"..tostring(_srv.maxPlayers),
                TextColor3=Color3.fromRGB(180,225,255),
                TextSize=13,
                TextXAlignment=Enum.TextXAlignment.Left
            })

            local _join=_0x08(_row,"TextButton",{
                BackgroundColor3=Color3.fromRGB(0,130,220),
                Position=UDim2.new(.70,0,.18,0),
                Size=UDim2.new(0,78,0,30),
                Font=Enum.Font.GothamBold,
                Text="JOIN",
                TextColor3=Color3.fromRGB(255,255,255),
                TextSize=12
            })

            _0x08(_join,"UICorner",{
                CornerRadius=UDim.new(0,7)
            })

            _join.MouseButton1Click:Connect(function()
                _join.Text="Joining..."

                local _success=pcall(function()
                    _0x03:TeleportToPlaceInstance(
                        _0x06,
                        _srv.id,
                        _0x05
                    )
                end)

                if not _success then
                    _join.Text="RETRY"
                end
            end)
        end
    end

    if _count==0 then
        _0x08(_0x18,"TextLabel",{
            BackgroundTransparency=1,
            Size=UDim2.new(1,0,0,50),
            Font=Enum.Font.GothamBold,
            Text="No 1-player servers found!",
            TextColor3=Color3.fromRGB(100,190,255),
            TextSize=14
        })
    end
end

_0x1A.MouseButton1Click:Connect(function()
    _0x1A.Text="⟳  REFRESHING..."
    _0x1A.Active=false

    _0x1B()

    task.wait(.5)

    _0x1A.Text="REFRESH SERVERS"
    _0x1A.Active=true
end)

local function _0x1C()
    _0x0A.Visible=true
    _0x15.Visible=false
    _0x09.Visible=false
    _0x11.Visible=false

    for _i=0,100 do
        _0x0E.Text=tostring(_i).."%"
        _0x10.Size=UDim2.new(_i/100,0,1,0)

        if _i<20 then
            _0x0D.Text="Initializing..."
        elseif _i<40 then
            _0x0D.Text="Loading interface..."
        elseif _i<60 then
            _0x0D.Text="Connecting to Roblox..."
        elseif _i<80 then
            _0x0D.Text="Loading server finder..."
        elseif _i<100 then
            _0x0D.Text="Preparing JOHN ON TOP..."
        else
            _0x0D.Text="Ready!"
        end

        task.wait(.025)
    end

    task.wait(.4)

    _0x04:Create(
        _0x0A,
        TweenInfo.new(.35),
        {BackgroundTransparency=1}
    ):Play()

    for _,_v in ipairs(_0x0A:GetDescendants()) do
        if _v:IsA("TextLabel") then
            _0x04:Create(
                _v,
                TweenInfo.new(.25),
                {TextTransparency=1}
            ):Play()
        elseif _v:IsA("UIStroke") then
            _0x04:Create(
                _v,
                TweenInfo.new(.25),
                {Transparency=1}
            ):Play()
        end
    end

    task.wait(.3)

    _0x0A.Visible=false
    _0x0A.BackgroundTransparency=0

    for _,_v in ipairs(_0x0A:GetDescendants()) do
        if _v:IsA("TextLabel") then
            _v.TextTransparency=0
        elseif _v:IsA("UIStroke") then
            _v.Transparency=0
        end
    end

    _0x15.Visible=true
    _0x09.Visible=true

    _0x1B()

    task.spawn(_0x14)
end

_0x09.MouseButton1Click:Connect(function()
    _0x15.Visible=not _0x15.Visible
end)

_0x17.MouseButton1Click:Connect(function()
    _0x15.Visible=false
end)

task.spawn(_0x1C)
