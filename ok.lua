local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Sigma Skibidi Nigger",
    LoadingTitle = "NIGGER69",
    LoadingSubtitle = "Made by Big Nigger",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "nigger",
        FileName = "niggerrr",
    },
    KeySystem = true,
    KeySettings = {
        Title = "NIGGER",
        Subtitle = "Key System",
        Note = "KEY: SigmaNigger6969", -- Use this to tell the user how to get a key
        FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"SigmaNigger6969"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

local MovementTab = Window:CreateTab("Movement", 4483362458)
local FunTab = Window:CreateTab("Fun", 4483362458)

local WalkSpeedSlider

MovementTab:CreateButton({
    Name = "Default Speed",
    Callback = function()
        WalkSpeedSlider:Set(16)
        local player = game.Players.LocalPlayer
        player.Character.Humanoid.WalkSpeed = 16
    end
})

WalkSpeedSlider = MovementTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {1, 999},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        player.Character.Humanoid.WalkSpeed = Value
    end
})

local GravitySlider

MovementTab:CreateButton({
    Name = "Default Gravity",
    Callback = function()
        GravitySlider:Set(200)
        game.workspace.Gravity = 200
    end
})

GravitySlider = MovementTab:CreateSlider({
    Name = "Gravity",
    Range = {1, 2000},
    Increment = 1,
    CurrentValue = 200,
    Callback = function(Value)
        game.workspace.Gravity = Value
    end
})

local spinbotActive = false

MovementTab:CreateToggle({
    Name = "SpinBot",
    CurrentValue = false,
    Callback = function()
        local plr = game:GetService("Players").LocalPlayer
        repeat task.wait() until plr.Character
        local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
        local humanoid = plr.Character:WaitForChild("Humanoid")
        local velocity
        
        if spinbotActive then
            humanoid.AutoRotate = true  
            if velocity then
                velocity:Destroy()  
                velocity = nil  
            end
            spinbotActive = false
        else
            humanoid.AutoRotate = false 
            velocity = Instance.new("AngularVelocity")
            velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
            velocity.MaxTorque = math.huge
            velocity.AngularVelocity = Vector3.new(0, 100, 0) 
            velocity.Parent = humRoot
            velocity.Name = "Spinbot"
            spinbotActive = true
        end
    end
})

local funCamActive = false

FunTab:CreateToggle({
    Name = "Funny Camera",
    CurrentValue = false,
    Callback = function()
        if funCamActive then
            local camera = game:GetService("Workspace").CurrentCamera

            local function disableFunCamera()
                camera.CameraType = Enum.CameraType.Custom
            end
            disableFunCamera()
            funCamActive = false
        else
            local camera = game:GetService("Workspace").CurrentCamera
            camera.CameraType = Enum.CameraType.Scriptable

            local initialCameraPosition = camera.CFrame.Position
            local initialCameraRotation = camera.CFrame.Rotation

            local function enableFunCamera()
                camera.CameraType = Enum.CameraType.Scriptable

                game:GetService("RunService").RenderStepped:Connect(function()
                    camera.CFrame = CFrame.new(initialCameraPosition) * CFrame.Angles(0, humRoot.CFrame.Rotation.Y, 0)
                end)
            end 
            enableFunCamera()
            funCamActive = true
        end
    end
})
