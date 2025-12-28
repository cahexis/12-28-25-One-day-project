local UserInputService = game:GetService("UserInputService")
local rep = game:GetService("ReplicatedStorage")
local rem = rep.AnimPlay
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local cheatway = workspace:WaitForChild("MoonaLoonaaa")
local hum = char:WaitForChild("HumanoidRootPart")
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
	if input.UserInputType == Enum.UserInputType.Keyboard then 
		if input.KeyCode == Enum.KeyCode.X then 
			rem:FireServer(1) -- dog anim
		elseif input.KeyCode == Enum.KeyCode.C then
			rem:FireServer(2) -- statue anim
			wait(3.5)
			hum.Anchored = true
			for i,v in pairs(char:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Transparency = 1
				end
			end
		end
	end
end)
