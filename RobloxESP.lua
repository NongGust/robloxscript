local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local RemoveLasers = Instance.new("TextButton")
local Swim = Instance.new("TextButton")
local JumpPower = Instance.new("TextBox")
local WalkSpeed = Instance.new("TextBox")
local TeleportToPlayer = Instance.new("TextBox")
local TeleportsTitle = Instance.new("TextLabel")
local CustomTitle = Instance.new("TextLabel")
local InfJump = Instance.new("TextButton")
local Final = Instance.new("TextButton")
local End = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.Parent = game.CoreGui
 
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.BorderColor3 = Color3.fromRGB(40, 40, 40)
Frame.Position = UDim2.new(0.242147923, 0, 0.0781990588, 0)
Frame.Size = UDim2.new(0, 449, 0, 292)
Frame.Active = true
Frame.Draggable = true
 
Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(48, 255, 48)
Title.BorderColor3 = Color3.fromRGB(48, 255, 48)
Title.Position = UDim2.new(-0.000221148133, 0, -0.00257498771, 0)
Title.Size = UDim2.new(0, 449, 0, 44)
Title.Font = Enum.Font.SourceSans
Title.Text = "NONGGUST HUB ESP HAHA"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 20.000
 
RemoveLasers.Name = "RemoveLasers"
RemoveLasers.Parent = Frame
RemoveLasers.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
RemoveLasers.BorderColor3 = Color3.fromRGB(44, 206, 0)
RemoveLasers.Position = UDim2.new(0.0356415398, 0, 0.190315545, 0)
RemoveLasers.Size = UDim2.new(0, 195, 0, 38)
RemoveLasers.Font = Enum.Font.SourceSans
RemoveLasers.Text = "Remove Lasers"
RemoveLasers.TextColor3 = Color3.fromRGB(235, 235, 235)
RemoveLasers.TextSize = 16.000
RemoveLasers.MouseButton1Down:Connect(function()
    for i, object in pairs(workspace.KillBricks:GetDescendants()) do
        if object.Name == 'TouchInterest' then 
            object:Destroy()
        end
    end
    for i, object in pairs(workspace.KillBrickSpinners:GetDescendants()) do
        if object.Name == 'TouchInterest' then 
            object:Destroy()
        end
    end
end)
 
local speaker = game.Players.LocalPlayer
local swimming = false
local gravReset
 
Swim.Name = "Swim"
Swim.Parent = Frame
Swim.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Swim.BorderColor3 = Color3.fromRGB(44, 206, 0)
Swim.Position = UDim2.new(0.523392081, 0, 0.190315545, 0)
Swim.Size = UDim2.new(0, 195, 0, 38)
Swim.Font = Enum.Font.SourceSans
Swim.Text = "Swim"
Swim.TextColor3 = Color3.fromRGB(235, 235, 235)
Swim.TextSize = 16.000
Swim.MouseButton1Down:Connect(function()
    if swimming == false then
        workspace.Gravity = 0
        local function swimDied()
            workspace.Gravity = 198.2
            swimming = false
        end
        gravReset = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(swimDied)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
        speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
        swimming = true
    else
        workspace.Gravity = 198.2
    swimming = false
     if gravReset then
        gravReset:Disconnect()
    end
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
    speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
    speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    end
end)
 
JumpPower.Name = "JumpPower"
JumpPower.Parent = Frame
JumpPower.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
JumpPower.BorderColor3 = Color3.fromRGB(65, 83, 5)
JumpPower.Position = UDim2.new(0.523392081, 0, 0.667591631, 0)
JumpPower.Size = UDim2.new(0, 195, 0, 37)
JumpPower.Font = Enum.Font.SourceSans
JumpPower.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
JumpPower.PlaceholderText = "Enter Jump Power"
JumpPower.Text = ""
JumpPower.TextColor3 = Color3.fromRGB(0, 0, 0)
JumpPower.TextSize = 14.000
JumpPower.TextColor3 = Color3.fromRGB(240,240,240)
JumpPower.ClearTextOnFocus = false
JumpPower.FocusLost:Connect(function(enterPressed)
    game:GetService('Players').LocalPlayer.Character.Humanoid.JumpPower = tonumber(JumpPower.Text)
end)
 
WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = Frame
WalkSpeed.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
WalkSpeed.BorderColor3 = Color3.fromRGB(65, 83, 5)
WalkSpeed.Position = UDim2.new(0.521164954, 0, 0.835399866, 0)
WalkSpeed.Size = UDim2.new(0, 195, 0, 37)
WalkSpeed.Font = Enum.Font.SourceSans
WalkSpeed.PlaceholderText = "Enter Walk Speed"
WalkSpeed.Text = ""
WalkSpeed.TextColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed.TextSize = 14.000
WalkSpeed.TextColor3 = Color3.fromRGB(240,240,240)
WalkSpeed.ClearTextOnFocus = false
WalkSpeed.FocusLost:Connect(function(enterPressed)
    game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(WalkSpeed.Text)
end)
 
TeleportToPlayer.Name = "TeleportToPlayer"
TeleportToPlayer.Parent = Frame
TeleportToPlayer.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
TeleportToPlayer.BorderColor3 = Color3.fromRGB(65, 83, 5)
TeleportToPlayer.Position = UDim2.new(0.523392081, 0, 0.355947822, 0)
TeleportToPlayer.Size = UDim2.new(0, 194, 0, 38)
TeleportToPlayer.Font = Enum.Font.SourceSans
TeleportToPlayer.PlaceholderText = "Teleport to (enter name)"
TeleportToPlayer.Text = ""
TeleportToPlayer.TextColor3 = Color3.fromRGB(0, 0, 0)
TeleportToPlayer.TextSize = 14.000
TeleportToPlayer.TextColor3 = Color3.fromRGB(240,240,240)
TeleportToPlayer.ClearTextOnFocus = false
TeleportToPlayer.FocusLost:Connect(function(enterPressed)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[TeleportToPlayer.Text].Character.HumanoidRootPart.CFrame
end)
 
TeleportsTitle.Name = "TeleportsTitle"
TeleportsTitle.Parent = Frame
TeleportsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TeleportsTitle.BackgroundTransparency = 1.000
TeleportsTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
TeleportsTitle.Position = UDim2.new(0.0281476527, 0, 0.53796339, 0)
TeleportsTitle.Size = UDim2.new(0, 200, 0, 28)
TeleportsTitle.Font = Enum.Font.SourceSans
TeleportsTitle.Text = "Teleports"
TeleportsTitle.TextColor3 = Color3.fromRGB(249, 249, 249)
TeleportsTitle.TextSize = 16.000
 
CustomTitle.Name = "CustomTitle"
CustomTitle.Parent = Frame
CustomTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CustomTitle.BackgroundTransparency = 1.000
CustomTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
CustomTitle.Position = UDim2.new(0.515898168, 0, 0.53796339, 0)
CustomTitle.Size = UDim2.new(0, 200, 0, 28)
CustomTitle.Font = Enum.Font.SourceSans
CustomTitle.Text = "Custom"
CustomTitle.TextColor3 = Color3.fromRGB(249, 249, 249)
CustomTitle.TextSize = 16.000
 
InfJump.Name = "InfJump"
InfJump.Parent = Frame
InfJump.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
InfJump.BorderColor3 = Color3.fromRGB(44, 206, 0)
InfJump.Position = UDim2.new(0.0334143676, 0, 0.354699105, 0)
InfJump.Size = UDim2.new(0, 195, 0, 38)
InfJump.Font = Enum.Font.SourceSans
InfJump.Text = "Infinite Jump"
InfJump.TextColor3 = Color3.fromRGB(235, 235, 235)
InfJump.TextSize = 16.000
InfJump.MouseButton1Down:connect(function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)
 
Final.Name = "Final"
Final.Parent = Frame
Final.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Final.BorderColor3 = Color3.fromRGB(44, 206, 0)
Final.Position = UDim2.new(0.035641551, 0, 0.666342974, 0)
Final.Size = UDim2.new(0, 195, 0, 38)
Final.Font = Enum.Font.SourceSans
Final.Text = "Final Level"
Final.TextColor3 = Color3.fromRGB(235, 235, 235)
Final.TextSize = 16.000
Final.MouseButton1Down:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(57.6905174, 1302.57935, -12650.6104)
end)
 
 
End.Name = "End"
End.Parent = Frame
End.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
End.BorderColor3 = Color3.fromRGB(44, 206, 0)
End.Position = UDim2.new(0.0334143639, 0, 0.834151149, 0)
End.Size = UDim2.new(0, 195, 0, 38)
End.Font = Enum.Font.SourceSans
End.Text = "End"
End.TextColor3 = Color3.fromRGB(235, 235, 235)
End.TextSize = 16.000
End.MouseButton1Down:Connect(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(57.7348442, 1971.56958, -12893.6123)
end)





game.StarterGui:SetCore("SendNotification", {
    Title = "Edit By";
    Text = "NongGust Hub";
    Duration = math.huge;
    Button1 = "Click"
})