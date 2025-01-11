_G.Main = {}

function _G.Main:New(Title)
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local MinimizeButton = Instance.new("TextButton")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local TextLabel = Instance.new("TextLabel")

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ResetOnSpawn = false

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Frame.Position = UDim2.new(0.05382213, 0, 0.274487466, 0)
    Frame.Size = UDim2.new(0, 397, 0, 395)

    MinimizeButton.Parent = Frame
    MinimizeButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    MinimizeButton.BorderSizePixel = 0
    MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0)
    MinimizeButton.Size = UDim2.new(0, 40, 0, 40)
    MinimizeButton.Font = Enum.Font.SourceSansBold
    MinimizeButton.Text = "-"
    MinimizeButton.TextColor3 = Color3.fromRGB(235, 235, 235)
    MinimizeButton.TextScaled = true
    MinimizeButton.TextSize = 14.000
    MinimizeButton.TextWrapped = true

    ScrollingFrame.Parent = Frame
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Position = UDim2.new(0.0624024495, 0, 0.145615742, 0)
    ScrollingFrame.Size = UDim2.new(0, 347, 0, 298)
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrame.ScrollBarThickness = 10

    UIListLayout.Parent = ScrollingFrame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.LayoutOrder = 5
    TextLabel.Position = UDim2.new(0.152442604, 0, 0.0205405708, 0)
    TextLabel.Size = UDim2.new(0, 274, 0, 40)
    TextLabel.ZIndex = 2
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Text = Title
    TextLabel.TextColor3 = Color3.fromRGB(232, 232, 232)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true

    local function MVMBOL_fake_script()
        local script = Instance.new('LocalScript', Frame)
        script.Parent.Active = true
        script.Parent.Draggable = true
    end
    coroutine.wrap(MVMBOL_fake_script)()

    local minimized = false

    MinimizeButton.MouseButton1Click:Connect(function()
        minimized = not minimized
        ScrollingFrame.Visible = not minimized
        UIListLayout.Parent = minimized and nil or ScrollingFrame
        MinimizeButton.Text = minimized and "+" or "-"
        Frame.Size = minimized and UDim2.new(0, 397, 0, 40) or UDim2.new(0, 397, 0, 395)
    end)

    local function updateCanvasSize()
        local contentHeight = UIListLayout.AbsoluteContentSize.Y
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
    end

    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)

    _G.Frame = {}

    function _G.Frame:Button(Name, Call)
        local TextButton = Instance.new("TextButton")
        TextButton.Parent = ScrollingFrame
        TextButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(0, 200, 0, 50)
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.Text = Name
        TextButton.TextColor3 = Color3.fromRGB(235, 235, 235)
        TextButton.TextScaled = true
        TextButton.TextSize = 14.000
        TextButton.TextWrapped = true

        TextButton.MouseButton1Click:Connect(function()
            pcall(Call)
        end)

        updateCanvasSize()
    end

    function _G.Frame:Toggle(Name, State, Call)
        local TextButton = Instance.new("TextButton")
        TextButton.Parent = ScrollingFrame
        TextButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(0, 200, 0, 50)
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.Text = Name .. ": " .. (State and "On" or "Off")
        TextButton.TextColor3 = Color3.fromRGB(235, 235, 235)
        TextButton.TextScaled = true
        TextButton.TextSize = 14.000
        TextButton.TextWrapped = true

        TextButton.MouseButton1Click:Connect(function()
            State = not State
            TextButton.Text = Name .. ": " .. (State and "On" or "Off")
            pcall(Call, State)
        end)

        updateCanvasSize()
    end

    function _G.Frame:Slider(Name, Min, Max, Default, Call)
        local SliderFrame = Instance.new("Frame")
        local SliderBar = Instance.new("Frame")
        local SliderButton = Instance.new("TextButton")
        local ValueLabel = Instance.new("TextLabel")

        SliderFrame.Parent = ScrollingFrame
        SliderFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        SliderFrame.BorderSizePixel = 0
        SliderFrame.Size = UDim2.new(0, 200, 0, 50)

        SliderBar.Parent = SliderFrame
        SliderBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        SliderBar.BorderSizePixel = 0
        SliderBar.Position = UDim2.new(0.1, 0, 0.5, 0)
        SliderBar.Size = UDim2.new(0.8, 0, 0.2, 0)

        SliderButton.Parent = SliderBar
        SliderButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
        SliderButton.BorderSizePixel = 0
        SliderButton.Size = UDim2.new(0, 20, 0, 20)
        SliderButton.Position = UDim2.new((Default - Min) / (Max - Min), -10, -0.5, 0)
        SliderButton.Text = ""

        ValueLabel.Parent = SliderFrame
        ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ValueLabel.BackgroundTransparency = 1.000
        ValueLabel.Position = UDim2.new(0.1, 0, 0.1, 0)
        ValueLabel.Size = UDim2.new(0.8, 0, 0.3, 0)
        ValueLabel.Font = Enum.Font.SourceSansBold
        ValueLabel.Text = Name .. ": " .. Default
        ValueLabel.TextColor3 = Color3.fromRGB(235, 235, 235)
        ValueLabel.TextScaled = true
        ValueLabel.TextSize = 14.000
        ValueLabel.TextWrapped = true

        local dragging = false

        SliderButton.MouseButton1Down:Connect(function()
            dragging = true
        end)

        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = false
            end
        end)

        game:GetService("UserInputService").InputChanged:Connect(function(input)
            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                local mousePos = game.Players.LocalPlayer:GetMouse().X
                local sliderPos = SliderBar.AbsolutePosition.X
                local sliderSize = SliderBar.AbsoluteSize.X
                local newValue = math.clamp((mousePos - sliderPos) / sliderSize, 0, 1)
                local value = math.floor(Min + (Max - Min) * newValue)
                SliderButton.Position = UDim2.new(newValue, -10, -0.5, 0)
                ValueLabel.Text = Name .. ": " .. value
                pcall(Call, value)
            end
                end)

        updateCanvasSize()
    end

    return _G.Frame
