local function addSelectionBoxToPlayer(player)
    -- Wait for the character to be added
    local character = player.Character or player.CharacterAdded:Wait()

    -- Ensure the character has a PrimaryPart
    if character and not character.PrimaryPart then
        character.PrimaryPart = character:FindFirstChild("HumanoidRootPart")
    end

    if character and character.PrimaryPart then
        local selectionBox = Instance.new("SelectionBox")
        selectionBox.Parent = character
        selectionBox.Adornee = character
        selectionBox.Name = "PlayerSelectionBox"
        
        selectionBox.SurfaceColor3 = Color3.fromRGB(0, 255, 0)
        selectionBox.LineThickness = 0.1
        selectionBox.Transparency = 0.5
    end
end

local function removeSelectionBoxFromPlayer(player)
    local character = player.Character
    if character then
        local selectionBox = character:FindFirstChild("PlayerSelectionBox")
        if selectionBox then
            selectionBox:Destroy()
        end
    end
end

-- Add SelectionBox for already connected players
for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    player.CharacterAdded:Connect(function(character)
        addSelectionBoxToPlayer(player)
    end)
end

game:GetService("Players").PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        addSelectionBoxToPlayer(player)
    end)
end)

game:GetService("Players").PlayerRemoving:Connect(function(player)
    removeSelectionBoxFromPlayer(player)
end)
