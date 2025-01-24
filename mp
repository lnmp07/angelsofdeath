   local allowedUsers = {
    ["foxgoodboy123"] = true,
    ["emfankia123"] = true,
    ["seven09812"] = true
}
local currentUserName = game.Players.LocalPlayer.Name

if not allowedUsers[currentUserName] then
    game.StarterGui:SetCore("SendNotification", {
        Title = "?";
        Text = "Bạn không có quyền sử dụng script này.";
        Duration = 5;
    })
    return
end
for i,v in pairs(game:GetDescendants()) do 
if v.Name=="DonoBoard" then
v:Destroy()
warn("anti cheat hai vc")
end
end  
local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/VNT-UNIVERSAL/MyCode/main/UILib"))()
    local w1 = library:Window("Angels of Death")

    w1:Button(
        "HitBox",
        function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://413861777"
            sound.Parent = game:GetService("SoundService")
            sound:Play()
        
            wait()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Need tool"; -- the title (ofc)
                Text = "If you dont have weapon then get one and use this command"; -- what the text says (ofc)
                Duration = 5; -- how long the notification should in secounds
            })
            for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do
                if v:isA("Tool") then
                    local a = Instance.new("SelectionBox",v.Handle)
                    v.Handle.Massless = true
                    v.Handle.Transparency = 1
                    a.Adornee = v.Handle
                    v.Handle.Size = Vector3.new(15, 20, 2)
                    local selectionBox = Instance.new("SelectionBox",v.Handle)
                    selectionBox.Adornee = v.Handle
                    selectionBox.Color3 = Color3.new(0, 0.313725, 0.47451)
                end
            end
        end
    )    
    function Music()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://413861777"
        sound.Parent = game:GetService("SoundService")
        sound:Play()
    end
    w1:Button(
        "Medkit",
        function()
local args = {
        [1] = "eue",
        [2] = "Medkit"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("KnitPackages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("InventoryService"):WaitForChild("RE"):WaitForChild("updateInventory"):FireServer(unpack(args))
    end
    )
    w1:Button(
        "Unlock Car",
        function()
            if game.Players.LocalPlayer.Character.Humanoid.SeatPart then
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Key Unlock";
                    Text = "Waitings Key Unlock";
                    Duration = 5; 
                })
                print(game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.EngineValue)
                if game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.EngineValue then
                   game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.EngineValue.Value = true
                    Music()
                    game.StarterGui:SetCore("SendNotification", {
                    Title = "key Unlock";
                    Text = "Success";
                    Duration = 5; 
                })
                else
                                game.StarterGui:SetCore("SendNotification", {
                    Title = "key Unlock";
                    Text = "Error";
                    Duration = 5; 
                })
                end
                else
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Key Unlock";
                    Text = "Sit to Car";
                    Duration = 5; 
                })
            end
        end
    )
w1:Button('Đóng Menu', function()
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v:FindFirstChild('Top') then
            v:Destroy()
        end
    end
end)
    w1:Label("Made By mp")
game.StarterGui:SetCore("SendNotification", {
        Title = "Made By MP";
        Text = "Nếu Bạn Sử Dụng Script Này Bọn Kia Tuổi Lồn Sánh Vai";
        Duration = 5;
    })
