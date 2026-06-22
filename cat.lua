local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local isAutoEnabled = true
local isForceRevive = false 
local isProcessing = false 
local hasHandledTalentThisRoom = false 
local isXrayBannedForThisDoor = false -- Biến cờ khóa né tường khi đã vào sát bệ

local lastPosition = nil
local TELEPORT_THRESHOLD = 20

local ITEM_DATA = {
    ["87744905975972"]  = {name = "Thẻ Chọn Lại", isSuperPriority = true},
    ["113200215489277"] = {name = "Xu Shop"},
    ["109706574020670"] = {name = "Quả EXP"},
    ["90131951298636"]  = {name = "Đá Pet Xanh Lá", isPetStone = true},
    ["128699832318992"] = {name = "Đá Pet Xanh Dương", isPetStone = true},
    ["112621630251036"] = {name = "Xu Mở Cửa"},
    ["113790583258911"] = {name = "Đá Nguyên Tố", isElemental = true},
    ["131631968594060"] = {name = "Đá Nguyên Tố", isElemental = true},
    ["80309386409639"]  = {name = "Đá Nguyên Tố", isElemental = true},
    ["114256696559128"] = {name = "Đá Nguyên Tố", isElemental = true},
    ["113226220478841"] = {name = "Phòng Boss", isBoss = true},
    ["119335826432425"] = {name = "Phòng Boss", isBoss = true},
    ["97568742355714"]  = {name = "Phòng Hồi Sinh", isRevive = true}
}

local MatchupRules = {}
local currentMoveConnection = nil
local currentXrayLoopActive = false

if player:WaitForChild("PlayerGui"):FindFirstChild("AbyssStrategyUI") then
    player.PlayerGui.AbyssStrategyUI:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AbyssStrategyUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = player.PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 450, 0, 450)
mainFrame.Position = UDim2.new(0.05, 0, 0.2, 0) 
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 28) 
mainFrame.Active = true 
mainFrame.Parent = screenGui

local mDragging, mDragInput, mDragStart, mStartPos
mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        mDragging = true mDragStart = input.Position mStartPos = mainFrame.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then mDragging = false end end)
    end
end)
mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then mDragInput = input end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == mDragInput and mDragging then
        local delta = input.Position - mDragStart
        mainFrame.Position = UDim2.new(mStartPos.X.Scale, mStartPos.X.Offset + delta.X, mStartPos.Y.Scale, mStartPos.Y.Offset + delta.Y)
    end
end)

local uiCorner = Instance.new("UICorner") uiCorner.CornerRadius = UDim.new(0, 12) uiCorner.Parent = mainFrame
local title = Instance.new("TextLabel") title.Size = UDim2.new(0.48, 0, 0, 50) title.Position = UDim2.new(0, 12, 0, 0) title.BackgroundTransparency = 1 title.Text = "⚙️ AUTO ABYSS" title.TextColor3 = Color3.fromRGB(0, 210, 255) title.TextSize = 12 title.Font = Enum.Font.SourceSansBold title.TextXAlignment = Enum.TextXAlignment.Left title.Parent = mainFrame

local reviveToggleBtn = Instance.new("TextButton") reviveToggleBtn.Size = UDim2.new(0, 110, 0, 30) reviveToggleBtn.Position = UDim2.new(0.5, 0, 0, 10) reviveToggleBtn.BackgroundColor3 = Color3.fromRGB(170, 40, 40) reviveToggleBtn.Text = "⚪ HỒI SINH: OFF" reviveToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255) reviveToggleBtn.Font = Enum.Font.SourceSansBold reviveToggleBtn.TextSize = 11 reviveToggleBtn.Parent = mainFrame
local reviveCorner = Instance.new("UICorner") reviveCorner.CornerRadius = UDim.new(0, 6) reviveCorner.Parent = reviveToggleBtn

local toggleBtn = Instance.new("TextButton") toggleBtn.Size = UDim2.new(0, 95, 0, 30) toggleBtn.Position = UDim2.new(0.76, 0, 0, 10) toggleBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 90) toggleBtn.Text = "🔴 AUTO: ON" toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255) toggleBtn.Font = Enum.Font.SourceSansBold toggleBtn.TextSize = 11 toggleBtn.Parent = mainFrame
local toggleCorner = Instance.new("UICorner") toggleCorner.CornerRadius = UDim.new(0, 6) toggleCorner.Parent = toggleBtn

local scrollFrame = Instance.new("ScrollingFrame") scrollFrame.Size = UDim2.new(1, -20, 1, -70) scrollFrame.Position = UDim2.new(0, 10, 0, 55) scrollFrame.BackgroundTransparency = 1 scrollFrame.ScrollBarThickness = 5 scrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y scrollFrame.Parent = mainFrame
local listLayout = Instance.new("UIListLayout") listLayout.Padding = UDim.new(0, 6) listLayout.Parent = scrollFrame

local function createMatchupRow(item1, item2)
    local ruleKey = item1 .. " VS " .. item2
    MatchupRules[ruleKey] = item1 

    local row = Instance.new("Frame") row.Size = UDim2.new(1, -10, 0, 45) row.BackgroundColor3 = Color3.fromRGB(30, 33, 43) row.Parent = scrollFrame
    local rc = Instance.new("UICorner") rc.CornerRadius = UDim.new(0, 8) rc.Parent = row

    local textLabel = Instance.new("TextLabel") textLabel.Size = UDim2.new(0.6, 0, 1, 0) textLabel.Position = UDim2.new(0, 12, 0, 0) textLabel.BackgroundTransparency = 1
    textLabel.Text = string.format("<font color='#ffaa00'>%s</font> <font color='#ffffff'>vs</font> <font color='#00aaff'>%s</font>", item1, item2)
    textLabel.TextColor3 = Color3.fromRGB(225, 225, 225) textLabel.TextSize = 13 textLabel.Font = Enum.Font.SourceSansBold textLabel.RichText = true textLabel.TextXAlignment = Enum.TextXAlignment.Left textLabel.Parent = row

    local btnLeft = Instance.new("TextButton") btnLeft.Size = UDim2.new(0, 65, 0, 28) btnLeft.Position = UDim2.new(0.63, 0, 0.2, 0) btnLeft.BackgroundColor3 = Color3.fromRGB(0, 150, 100) btnLeft.Text = "Chọn 1" btnLeft.TextColor3 = Color3.fromRGB(255, 255, 255) btnLeft.Font = Enum.Font.SourceSansBold btnLeft.TextSize = 12 btnLeft.Parent = row
    local btnRight = Instance.new("TextButton") btnRight.Size = UDim2.new(0, 65, 0, 28) btnRight.Position = UDim2.new(0.82, 0, 0.2, 0) btnRight.BackgroundColor3 = Color3.fromRGB(70, 75, 85) btnRight.Text = "Chọn 2" btnRight.TextColor3 = Color3.fromRGB(200, 200, 200) btnRight.Font = Enum.Font.SourceSansBold btnRight.TextSize = 12 btnRight.Parent = row
    Instance.new("UICorner", btnLeft).CornerRadius = UDim.new(0, 6)
    Instance.new("UICorner", btnRight).CornerRadius = UDim.new(0, 6)

    btnLeft.MouseButton1Click:Connect(function()
        MatchupRules[ruleKey] = item1
        btnLeft.BackgroundColor3 = Color3.fromRGB(0, 150, 100) btnLeft.TextColor3 = Color3.fromRGB(255, 255, 255)
        btnRight.BackgroundColor3 = Color3.fromRGB(70, 75, 85) btnRight.TextColor3 = Color3.fromRGB(200, 200, 200)
    end)
    btnRight.MouseButton1Click:Connect(function()
        MatchupRules[ruleKey] = item2
        btnRight.BackgroundColor3 = Color3.fromRGB(0, 150, 100) btnRight.TextColor3 = Color3.fromRGB(255, 255, 255)
        btnLeft.BackgroundColor3 = Color3.fromRGB(70, 75, 85) btnLeft.TextColor3 = Color3.fromRGB(200, 200, 200)
    end)
end

createMatchupRow("Đá Pet Xanh Lá", "Xu Mở Cửa") 
createMatchupRow("Quả EXP", "Xu Mở Cửa") 
createMatchupRow("Xu Shop", "Xu Mở Cửa") 
createMatchupRow("Đá Pet Xanh Dương", "Xu Mở Cửa") 
createMatchupRow("Xu Shop", "Quả EXP") 
createMatchupRow("Xu Shop", "Đá Pet Xanh Lá") 
createMatchupRow("Xu Shop", "Đá Pet Xanh Dương") 
createMatchupRow("Quả EXP", "Đá Pet Xanh Lá") 
createMatchupRow("Quả EXP", "Đá Pet Xanh Dương")

reviveToggleBtn.MouseButton1Click:Connect(function()
    isForceRevive = not isForceRevive
    if isForceRevive then
        reviveToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 90) reviveToggleBtn.Text = "HỒI SINH: ON"
    else
        reviveToggleBtn.BackgroundColor3 = Color3.fromRGB(170, 40, 40) reviveToggleBtn.Text = "HỒI SINH: OFF"
    end
end)

toggleBtn.MouseButton1Click:Connect(function()
    isAutoEnabled = not isAutoEnabled
    if isAutoEnabled then
        toggleBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 90) toggleBtn.Text = "AUTO: ON"
    else
        toggleBtn.BackgroundColor3 = Color3.fromRGB(170, 40, 40) toggleBtn.Text = "AUTO: OFF"
        isProcessing = false 
        currentXrayLoopActive = false
        if currentMoveConnection then currentMoveConnection:Disconnect() end
        pcall(function() if player.Character and player.Character:FindFirstChild("Humanoid") then player.Character.Humanoid:MoveTo(player.Character.HumanoidRootPart.Position) end end)
    end
end)

player.CharacterAdded:Connect(function(newChar)
    character = newChar
    lastPosition = nil 
end)

local function walkToTarget(targetPosition, targetInstance)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    
    if not humanoid or not rootPart then return end
    
    if currentMoveConnection then currentMoveConnection:Disconnect() end
    currentXrayLoopActive = false
    task.wait() 
    
    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Exclude
    
    local filterList = {character}
    if targetInstance then
        table.insert(filterList, targetInstance)
        if targetInstance.Parent then
            table.insert(filterList, targetInstance.Parent)
            if targetInstance.Parent.Parent then
                table.insert(filterList, targetInstance.Parent.Parent)
            end
        end
    end
    raycastParams.FilterDescendantsInstances = filterList
    
    local isAvoiding = false
    humanoid:MoveTo(targetPosition)

    currentMoveConnection = humanoid.MoveToFinished:Connect(function(reached)
        if reached and isAutoEnabled then
            currentXrayLoopActive = false
            if currentMoveConnection then currentMoveConnection:Disconnect() end
        end
    end)
    
    currentXrayLoopActive = true
    task.spawn(function()
        while isAutoEnabled and currentXrayLoopActive and character:IsDescendantOf(workspace) do
            task.wait(0.05) 
            
            if not rootPart or not humanoid then break end
            local distanceToTarget = (rootPart.Position - targetPosition).Magnitude
            
            -- Nếu khoảng cách > 15 studs VÀ chưa bị khóa né, tiến hành quét chướng ngại vật
            if distanceToTarget > 15 and not isXrayBannedForThisDoor then
                if not isAvoiding and currentXrayLoopActive then
                    local forwardRay = rootPart.CFrame.LookVector * 3.5
                    local leftRay = (rootPart.CFrame.LookVector + rootPart.CFrame.RightVector * -0.7).Unit * 3.5
                    local rightRay = (rootPart.CFrame.LookVector + rootPart.CFrame.RightVector * 0.7).Unit * 3.5
                    
                    local hitForward = workspace:Raycast(rootPart.Position, forwardRay, raycastParams)
                    local hitLeft = workspace:Raycast(rootPart.Position, leftRay, raycastParams)
                    local hitRight = workspace:Raycast(rootPart.Position, rightRay, raycastParams)
                    
                    if hitForward or hitLeft or hitRight then
                        isAvoiding = true
                        warn("X-Ray phát hiện vật cản bên ngoài! Đang bẻ lái...")
                        
                        local escapePosition
                        if hitLeft and not hitRight then
                            escapePosition = rootPart.Position + (rootPart.CFrame.RightVector * 4)
                        elseif hitRight and not hitLeft then
                            escapePosition = rootPart.Position + (rootPart.CFrame.RightVector * -4)
                        else
                            escapePosition = rootPart.Position + (rootPart.CFrame.LookVector * -3)
                            humanoid.Jump = true 
                        end
                        
                        humanoid:MoveTo(escapePosition)
                        task.wait(0.5)
                        
                        isAvoiding = false
                        if isAutoEnabled and currentXrayLoopActive then
                            humanoid:MoveTo(targetPosition)
                        end
                    end
                end
            else
                -- Khi lọt vào vùng <= 15 studs, kích hoạt cờ khóa né vĩnh viễn cho bệ hiện tại
                if not isXrayBannedForThisDoor and distanceToTarget <= 10 then
                    isXrayBannedForThisDoor = true
                    warn("🎯 Nhân vật lọt vào vùng 15 studs! Tắt hoàn toàn né tường để đi thẳng vào bệ.")
                end
                
                if currentXrayLoopActive and not isAvoiding then
                    humanoid:MoveTo(targetPosition)
                end
            end
        end
    end)
end

task.spawn(function()
    while true do
        if isAutoEnabled and character then
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                local currentPos = root.Position
                if lastPosition then
                    local distance = (currentPos - lastPosition).Magnitude
                    if distance > TELEPORT_THRESHOLD then
                        -- Khi Teleport sang phòng mới -> Reset tất cả trạng thái và mở lại hệ thống né tường
                        isProcessing = false 
                        hasHandledTalentThisRoom = false 
                        currentXrayLoopActive = false 
                        isXrayBannedForThisDoor = false 
                        if currentMoveConnection then currentMoveConnection:Disconnect() end
                    end
                end
                lastPosition = currentPos
            end
        end
        task.wait(0.5)
    end
end)

local function getAbyssClientModel()
    for _, child in ipairs(Workspace:GetChildren()) do
        if string.sub(child.Name, 1, 16) == "AbyssClientModel" then
            return child
        end
    end
    return nil
end

local function coreAutoSystem()
    if not isAutoEnabled or isProcessing then return end

    local rootPart = character:FindFirstChild("HumanoidRootPart")
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not rootPart or not humanoid then return end

    -- --- 1. ĐƯỜNG DẪN CHUẨN TỚI ABYSS TALENT ---
    local abyssTalent = Workspace:FindFirstChild("AbyssTalent")
    if abyssTalent and not hasHandledTalentThisRoom then
        isProcessing = true
        local targetPos = Vector3.new(abyssTalent.Position.X, rootPart.Position.Y, abyssTalent.Position.Z)
        
        warn("🎯 [PATH] Phát hiện AbyssTalent! Đang chạy tới...")
        walkToTarget(targetPos, abyssTalent) 
        
        local timeout = 0
        while (Vector3.new(rootPart.Position.X, 0, rootPart.Position.Z) - Vector3.new(targetPos.X, 0, targetPos.Z)).Magnitude > 4 and timeout < 5 do
            task.wait(0.1)
            timeout = timeout + 0.1
        end
        
        if currentMoveConnection then currentMoveConnection:Disconnect() end
        currentXrayLoopActive = false
        humanoid:MoveTo(rootPart.Position)
        
        warn("⏳ Đã tới vị trí Talent. Đang đứng chờ 6 giây...")
        task.wait(6)
        hasHandledTalentThisRoom = true
        isProcessing = false
        return
    end

    -- --- 2. ĐƯỜNG DẪN CHUẨN TỚI HỆ THỐNG CỬA ---
    local clientModel = getAbyssClientModel()
    if not clientModel then return end

    local currentDoors = {}
    for _, door in ipairs(clientModel:GetChildren()) do
        local info = door:FindFirstChild("Root") and door.Root:FindFirstChild("AbyssDoorInfo")
        if info and info:IsA("BillboardGui") then
            local doorPart = door.Root
            local rewardData = nil
            
            for _, child in ipairs(info:GetDescendants()) do
                if child:IsA("ImageLabel") or child:IsA("ImageButton") then
                    local id = string.match(child.Image, "%d+")
                    if id and ITEM_DATA[id] then
                        rewardData = ITEM_DATA[id]
                        break
                    elseif child.Name == "Icon" or child.Name == "Reward" or child.Name == "RewardIcon" then
                        rewardData = {name = "Ảnh Lạ Unknown", isUnknown = true}
                    end
                end
            end
            if not rewardData then rewardData = {name = "Ảnh Lạ Unknown", isUnknown = true} end
            table.insert(currentDoors, {part = doorPart, data = rewardData})
        end
    end

    if #currentDoors == 0 then return end

    if #currentDoors >= 2 then
        table.sort(currentDoors, function(a, b)
            return rootPart.CFrame:PointToObjectSpace(a.part.Position).X < rootPart.CFrame:PointToObjectSpace(b.part.Position).X
        end)
    end

    local door1 = currentDoors[1]
    local door2 = currentDoors[2]
    local chosenDoor = door1

    if door2 and ((door1.data.isRevive and door2.data.isElemental) or (door1.data.isElemental and door2.data.isRevive)) then
        if door1.data.isRevive then chosenDoor = door1 else chosenDoor = door2 end
    elseif door1.data.isSuperPriority then chosenDoor = door1
    elseif door2 and door2.data.isSuperPriority then chosenDoor = door2
    elseif isForceRevive and door1.data.isRevive then chosenDoor = door1
    elseif isForceRevive and door2 and door2.data.isRevive then chosenDoor = door2
    elseif door1.data.isBoss then chosenDoor = door1
    elseif door2 and door2.data.isBoss then chosenDoor = door2
    elseif not door2 then chosenDoor = door1
    elseif door1.data.isRevive then 
        if door2 and (door2.data.name == "Xu Mở Cửa" or door2.data.name == "Quả EXP" or door2.data.isElemental) then chosenDoor = door1 else chosenDoor = door2 end
    elseif door2 and door2.data.isRevive then 
        if door1.data.name == "Xu Mở Cửa" or door1.data.name == "Quả EXP" or door1.data.isElemental then chosenDoor = door2 else chosenDoor = door1 end
    elseif door1.data.isUnknown and not door2.data.isUnknown then chosenDoor = door2
    elseif not door1.data.isUnknown and door2.data.isUnknown then chosenDoor = door1
    elseif door1.data.isUnknown and door2.data.isUnknown then chosenDoor = door1
    elseif door1.data.name == door2.data.name or (door1.data.isPetStone and door2.data.isPetStone) or (door1.data.isElemental and door2.data.isElemental) then 
        chosenDoor = nil
    elseif door1.data.isElemental then chosenDoor = door2
    elseif door2 and door2.data.isElemental then chosenDoor = door1
    else
        local name1 = door1.data.name
        local name2 = door2.data.name
        local preferredName = MatchupRules[name1 .. " VS " .. name2] or MatchupRules[name2 .. " VS " .. name1]
        
        if preferredName then
            if name1 == preferredName then chosenDoor = door1 elseif name2 == preferredName then chosenDoor = door2 end
        else
            chosenDoor = door1
        end
    end

    if chosenDoor and chosenDoor.part then
        isProcessing = true 
        walkToTarget(chosenDoor.part.Position, chosenDoor.part) 
        task.wait(0.5)
        isProcessing = false
    end
end

local coreAutoLoop = task.spawn(function()
    while true do
        if isAutoEnabled and not isProcessing then
            local success, err = pcall(coreAutoSystem)
            if not success then warn("AUTO ERROR: " .. tostring(err)) end
        end
        task.wait(0.3)
    end
end)