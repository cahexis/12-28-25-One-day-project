local UserInputService = game:GetService("UserInputService")
local cam = workspace.CurrentCamera
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("HumanoidRootPart")
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
	if input.UserInputType == Enum.UserInputType.Keyboard then 
		if input.KeyCode == Enum.KeyCode.Z then 
			cam.CameraType = Enum.CameraType.Scriptable
			cam.CFrame = workspace.campart.CFrame
			hum.CFrame = CFrame.new(75.843, 3.998, 16.935)
		end
	end
end)
