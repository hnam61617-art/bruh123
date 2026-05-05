-- 1. Tải thư viện UI (Rayfield)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 2. Tạo cửa sổ Menu
local Window = Rayfield:CreateWindow({
   Name = "Haki Training Hub",
   LoadingTitle = "Đang khởi tạo...",
   LoadingSubtitle = "Spam 999x Haki",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "HakiConfig",
      FileName = "MainHub"
   }
})

-- 3. Tạo Tab Farming
local Tab = Window:CreateTab("Auto Farm", 4483362458) 

_G.autohaki2 = false

-- 4. Tạo nút gạt (Toggle)
Tab:CreateToggle({
   Name = "Auto Haki (Siêu Nhanh 999x)",
   CurrentValue = false,
   Flag = "HakiToggle", 
   Callback = function(Value)
      _G.autohaki2 = Value
   end,
})

-- 5. Logic xử lý Spam 999 lần (Phần ruột của bạn)
spawn(function()
    while task.wait() do
        if _G.autohaki2 then
            pcall(function()
                local playerID = game.Players.LocalPlayer.UserId
                local Remote = workspace:WaitForChild('UserData'):WaitForChild('User_' .. playerID):WaitForChild('III')
                
                -- Chạy vòng lặp 999 lần để spam cực nhanh
                for i = 1, 999 do
                    if not _G.autohaki2 then break end -- Dừng ngay nếu tắt Toggle
                    
                    Remote:FireServer('On', 1)
                    Remote:FireServer('Off', 1)
                    
                    -- Nếu game bị lag hoặc bị Kick, hãy bỏ ghi chú dòng dưới đây:
                    -- task.wait(0.001) 
                end
            end)
        end
    end
end)

Rayfield:Notify({
   Title = "Thành công!",
   Content = "Menu đã được tải. Hãy chọn tab Auto Farm.",
   Duration = 5,
   Image = 4483362458,
})
