Player = game:GetService("Players").LocalPlayer
Char = Player.Character
cn = CFrame.new
Humanoid = Char:FindFirstChildOfClass("Humanoid")
RootPart = Char.HumanoidRootPart
local Remote = Char:WaitForChild("3DMGRemote")

Remote.OnClientEvent:Connect(function(Pos)
	RootPart.CFrame = cn(RootPart.CFrame.p,Pos)
end)