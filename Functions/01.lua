local player = game:GetService("Players").LocalPlayer
local function apply(char)
	if not char then return end
	task.wait(0.5)
	for _, part in char:GetDescendants() do
		if part:IsA("BasePart") then
			part.CanCollide = false
			part.CustomPhysicalProperties = PhysicalProperties.new(1, 1, 1, 1, 1)
		end
	end
end
if player.Character then
	apply(player.Character)
end
player.CharacterAdded:Connect(apply)
