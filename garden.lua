# garden.lua
-- 🌱 Grow A Garden Floating UI
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "GardenUI"

-- MAIN WINDOW
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 350, 0, 250)
frame.Position = UDim2.new(0.3, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Active = true
frame.Draggable = true

-- TITLE
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "🌱 Grow A Garden HUB"
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(0, 255, 150)
title.BackgroundTransparency = 1

-- PLANT BUTTON
local plantBtn = Instance.new("TextButton", frame)
plantBtn.Size = UDim2.new(0.8, 0, 0, 40)
plantBtn.Position = UDim2.new(0.1, 0, 0.3, 0)
plantBtn.Text = "🌿 Plant Seed"
plantBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 100)

plantBtn.MouseButton1Click:Connect(function()
    print("Planting seed...")
end)

-- WATER BUTTON
local waterBtn = Instance.new("TextButton", frame)
waterBtn.Size = UDim2.new(0.8, 0, 0, 40)
waterBtn.Position = UDim2.new(0.1, 0, 0.55, 0)
waterBtn.Text = "💧 Water Plants"
waterBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)

waterBtn.MouseButton1Click:Connect(function()
    print("Watering plants...")
end)

-- CLOSE BUTTON
local close = Instance.new("TextButton", frame)
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -35, 0, 5)
close.Text = "X"
close.BackgroundColor3 = Color3.fromRGB(255, 60, 60)

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
