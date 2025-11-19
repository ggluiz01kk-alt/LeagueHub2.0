local module = {}

function module.Start(text)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.CoreGui
    ScreenGui.Name = "LeagueLoader"

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.Size = UDim2.new(0, 320, 0, 140)
    Frame.Position = UDim2.new(0.5, -160, 0.5, -70)

    local Title = Instance.new("TextLabel", Frame)
    Title.Text = text
    Title.Font = Enum.Font.GothamBold
    Title.TextScaled = true
    Title.Size = UDim2.new(1, 0, 0.4, 0)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)

    local Bar = Instance.new("Frame", Frame)
    Bar.Size = UDim2.new(0, 0, 0, 6)
    Bar.Position = UDim2.new(0, 10, 0.8, 0)
    Bar.BackgroundColor3 = Color3.fromRGB(140, 80, 255)

    for i = 1, 100 do
        Bar.Size = UDim2.new(i/100, -20, 0, 6)
        task.wait(0.02)
    end
end

function module.Finish()
    local gui = game.CoreGui:FindFirstChild("LeagueLoader")
    if gui then gui:Destroy() end
end

return module
