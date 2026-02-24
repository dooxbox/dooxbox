local p = game:GetService("Players").LocalPlayer
local ps = game:GetService("Players")
local rs = game:GetService("RunService")

rs.Heartbeat:Connect(function()
 local c = p.Character
 if not c or not c:FindFirstChild("HumanoidRootPart") then return end
 local pos = c.HumanoidRootPart.Position
 local dir = c.HumanoidRootPart.CFrame.LookVector
 
 for _, plr in pairs(ps:GetPlayers()) do
  if plr ~= p then
   local char = plr.Character
   if char and char:FindFirstChild("HumanoidRootPart") then
    char.HumanoidRootPart.CFrame = CFrame.new(pos + (dir * 1.5) + Vector3.new(0, 1.5, 0))
   end
  end
 end
end)

p.CharacterAdded:Connect(function(char)
 local tool = char:FindFirstChildWhichIsA("Tool")
 if tool then
  spawn(function()
   while tool and tool.Parent == char do
    tool:Activate()
    wait(0.1)
   end
  end)
 end
 
 char.ChildAdded:Connect(function(child)
  if child:IsA("Tool") then
   spawn(function()
    while child and child.Parent == char do
     child:Activate()
     wait(0.1)
    end
   end)
  end
 end)
end)

if p.Character then
 local char = p.Character
 local tool = char:FindFirstChildWhichIsA("Tool")
 if tool then
  spawn(function()
   while tool and tool.Parent == char do
    tool:Activate()
    wait(0.1)
   end
  end)
 end
 
 char.ChildAdded:Connect(function(child)
  if child:IsA("Tool") then
   spawn(function()
    while child and child.Parent == char do
     child:Activate()
     wait(0.1)
    end
   end)
  end
 end)
end
