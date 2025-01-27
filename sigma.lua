local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow( {
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

MovementTab:CreateButton({
	Name = "Default Speed",
	Callback = function()
		local player = game.Players.LocalPlayer
		player.Character.Humanoid.WalkSpeed = 16
	end
})

MovementTab:CreateSlider({
	Name = "WalkSpeed",
	Range = {1,999},
	Increment = 1,
	CurrentValue = 16,
	Callback = function(Value)
		local player = game.Players.LocalPlayer
		player.Character.Humanoid.WalkSpeed = Value
	end
})
