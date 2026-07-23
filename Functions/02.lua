local speaker = game.Players.LocalPlayer
            local RunService = game:GetService("RunService")
            Clip = false
               task.wait(0.1)
                local function NoclipLoop()
                    if Clip == false and speaker.Character ~= nil then
                        for _, child in pairs(speaker.Character:GetDescendants()) do
                            if child:IsA("BasePart") and child.CanCollide == false and child.Name == "Right Leg" or child.Name == "Right Arm" or child.Name == "Left Arm" or child.Name == "Right Arm" or child.Name == "Torso" then
                                child.CanCollide = false
                            end
                        end
                    end
                end
                Noclipping = RunService.Stepped:Connect(NoclipLoop)
