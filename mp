local player = game:GetService("Players").LocalPlayer
local playerScripts = player:FindFirstChild("PlayerScripts")

if playerScripts then
    local donoBoard = playerScripts:FindFirstChild("DonoBoard")
    if donoBoard then
        donoBoard:Destroy()
        warn("Anti cheat hai vc")
    end
end
local allowedUsers = {
    ["foxgoodboy123"] = true,
    ["emfankia123"] = true,
    ["seven09812"] = true,
    ["anhropdepOO"] = true,
    ["dobermanminh"] = true

}
local currentUserName = game.Players.LocalPlayer.Name

if not allowedUsers[currentUserName] then
    game.StarterGui:SetCore("SendNotification", {
        Title = "???";
        Text = "thg ngu ơi không trình mà còn đòi dùng hack của cha à.";
        Duration = 5;
    })
    return
end
local hitboxEnabled = false
local hitboxSize = Vector3.new(50, 50, 1)
local originalSizes = {}
local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/VNT-UNIVERSAL/MyCode/main/UILib"))()
    local w1 = library:Window("Angels of Death")

    w1:Slider("Hitbox X", "X", 1, 100, function(value)
    hitboxSize = Vector3.new(value, hitboxSize.Y, hitboxSize.Z)
end)

w1:Slider("Hitbox Y", "Y", 1, 100, function(value)
    hitboxSize = Vector3.new(hitboxSize.X, value, hitboxSize.Z)
end)

w1:Slider("Hitbox Z", "Z", 1, 100, function(value)
    hitboxSize = Vector3.new(hitboxSize.X, hitboxSize.Y, value)
end)

-- Button bật hitbox
w1:Button("Bật Hitbox", function()
    hitboxEnabled = true -- Đặt trạng thái bật hitbox

    local player = game:GetService("Players").LocalPlayer
    if not player or not player.Character then return end

    for _, tool in pairs(player.Character:GetChildren()) do
        if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
            local handle = tool.Handle

            -- Lưu kích thước gốc nếu chưa lưu
            if not originalSizes[tool] then
                originalSizes[tool] = handle.Size
            end

            -- Cập nhật kích thước hitbox
            handle.Size = hitboxSize
            handle.Massless = true
            handle.Transparency = 0.5 -- Đảm bảo nhìn thấy hitbox

            -- Tạo viền xanh cho hitbox
            local selectionBox = Instance.new("SelectionBox")
            selectionBox.Adornee = handle
            selectionBox.Color3 = Color3.new(0, 0.313725, 0.47451)
            selectionBox.LineThickness = 0.05
            selectionBox.Parent = handle
        end
    end
end)

-- Button tắt hitbox
w1:Button("Tắt Hitbox", function()
    hitboxEnabled = false -- Đặt trạng thái tắt hitbox

    local player = game:GetService("Players").LocalPlayer
    if not player or not player.Character then return end

    for _, tool in pairs(player.Character:GetChildren()) do
        if tool:IsA("Tool") and tool:FindFirstChild("Handle") then
            local handle = tool.Handle

            -- Khôi phục kích thước gốc
            if originalSizes[tool] then
                handle.Size = originalSizes[tool]
                originalSizes[tool] = nil -- Xóa dữ liệu sau khi khôi phục
            end

            -- Xóa viền xanh
            for _, obj in pairs(handle:GetChildren()) do
                if obj:IsA("SelectionBox") then
                    obj:Destroy()
                end
            end
        end
    end
end)
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
