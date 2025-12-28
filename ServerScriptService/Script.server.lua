local rep = game:GetService("ReplicatedStorage")
local rem = rep.AnimPlay
local dogthing = workspace.PetThing
local statueguy = workspace.RealStatue
local statrig = statueguy.Rig
local doganim = Instance.new("Animation")
doganim.AnimationId = "rbxassetid://76073362148633"
local doghum = dogthing:WaitForChild("Humanoid")
local dogtrack = doghum:LoadAnimation(doganim)
local statueanim = Instance.new("Animation")
statueanim.AnimationId = "rbxassetid://106071555290293"
local statuehum = statueguy:WaitForChild("Humanoid")
local statuetrack = statuehum:LoadAnimation(statueanim)

local function showModel()
	for i,v in pairs(statrig:GetChildren()) do
		if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
			v.Transparency = 0
		end
	end
end

rem.OnServerEvent:Connect(function(plr, int)
	if int == 1 then -- dog time
		dogtrack:Play()
		print("hii")
	else
		statuetrack:Play()
	end
	if int == 2 then
		wait(3.5)
		showModel()
		
		print("hello")
	end
end)
