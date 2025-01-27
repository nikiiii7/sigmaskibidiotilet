local function addSelectionBoxToPlayer(player)
   
    local character = player.Character or player.CharacterAdded:Wait()
    
    
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


for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    addSelectionBoxToPlayer(player)
end


game:GetService("Players").PlayerAdded:Connect(function(player)
    addSelectionBoxToPlayer(player)
end)


game:GetService("Players").PlayerRemoving:Connect(function(player)
    removeSelectionBoxFromPlayer(player)
end)
