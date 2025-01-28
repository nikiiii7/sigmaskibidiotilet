local camera = game:GetService("Workspace").CurrentCamera
camera.CameraType = Enum.CameraType.Scriptable

local initialCameraPosition = camera.CFrame.Position
local initialCameraRotation = camera.CFrame.Rotation

game:GetService("RunService").RenderStepped:Connect(function()
    camera.CFrame = CFrame.new(initialCameraPosition) * CFrame.Angles(0, humRoot.CFrame.Rotation.Y, 0)
end)
