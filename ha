local autohakifast = v62.Farming:AddToggle('autohakitoggle', {
    Title = 'Auto Haki (Fast 999x)',
    Default = false,
})

autohakifast:OnChanged(function(p99)
    _G.autohaki2 = p99
end)

spawn(function()
    while task.wait() do
        if _G.autohaki2 then
            pcall(function()
                local Remote = workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III')
                
                -- Thực hiện đúng 999 lần mỗi chu kỳ
                for i = 1, 999 do
                    -- Nếu trong lúc đang chạy mà người dùng tắt Toggle thì dừng vòng lặp ngay
                    if not _G.autohaki2 then break end
                    
                    -- Gửi tín hiệu Bật
                    Remote:FireServer('On', 1)
                    
                    -- Gửi tín hiệu Tắt
                    Remote:FireServer('Off', 1)
                    
                    -- Lưu ý: Không để task.wait() ở đây sẽ giúp spam cực nhanh (Max Speed)
                    -- Nhưng nếu game bị crash, hãy thêm task.wait() nhỏ vào đây.
                end
            end)
        end
    end
end)
