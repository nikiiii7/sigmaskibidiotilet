local Rayfield  = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

function teleportToIsland(location)
    local player = Players.LocalPlayer
    local character = player.Character

    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = location
    end
end

local locationsSea3 = {
    cakeLand = CFrame.new(Vector3.new(-2088, 70, -12117)),
    chocolateLand = CFrame.new(Vector3.new(108, 25, -12214)),
    greatTree = CFrame.new(Vector3.new(3582, 124, -6904)),
    hauntedCastle = CFrame.new(Vector3.new(-9519, 142 , 5525)),
    hydraArena = CFrame.new(Vector3.new(5007, 52 , -1734)),
    hydra = CFrame.new(Vector3.new(5284, 1006 , 394)),
    icecreamLand = CFrame.new(Vector3.new(-909, 57 , -10861)),
    peanutLand = CFrame.new(Vector3.new(-2023, 10 , -9948)),
    port = CFrame.new(Vector3.new(-327, 21 , 5547)),
    seaCastle = CFrame.new(Vector3.new(-5414, 314 , -2867)),
    tikiOutpost = CFrame.new(Vector3.new(-16482, 528 , 429)),
    mansion = CFrame.new(Vector3.new(-12467, 374.955810546875, -7545)),
    v4 = CFrame.new(Vector3.new(28286, 14897, 103)),
    enchant = CFrame.new(Vector3.new(-15896, 484, 948)),
}
 
local Window = Rayfield:CreateWindow({
    Name = "BloxFruits Teleport",
    LoadingTitle = "BloxFruits Teleport",
    LoadingSubtitle = "ok",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "ok",
        FileName = "okk"
    },
    KeySystem = true,
    KeySettings = {
        Title = "Sigma Key System",
        Subtitle = "bug fruits on top",
        Note = "https://link-center.net/1285345/keysystem",
        FileName = "sigmasigmaboy6969",
        SaveKey = true,
        GrabKeyFromSite = true,
        Key = {"KEYAUTH-Va58DP-ltCKrm-0bQ3lC-AZlOUn-wZoI8k-9rvL4Y"}
    }
})

local TeleportTab = Window:CreateTab("Teleport To Islands 🏝️", 4483362458)
local TeleportSection = TeleportTab:CreateSection("Sea 3 ⛵", 4483362458)
local TeleportTab2 = Window:CreateTab("Teleport to V4 and Enchant 📔", 4483362458)

TeleportTab:CreateButton({
    Name = "Mansion",
    Callback = function()
        teleportToIsland(locationsSea3.mansion)
    end
})

TeleportTab:CreateButton({
    Name = "Sea Castle",
    Callback = function()
        teleportToIsland(locationsSea3.seaCastle)
    end
})
