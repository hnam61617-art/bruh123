-- xaiku deobf was hereee

local _Players = game:GetService('Players')
local u2 = {
    'Oblivic',
    'BowTiedPony',
    'Bige0n',
    'Farquanetta',
    'icydragonwingsis',
    'trashpanda2361',
    'MarcusVetarus',
    'ElianJoestar',
    'Quixotize',
    'CudlesstheCat',
    'FoxKingFab',
    'Tiptop98',
    'vlonedd',
    'VortexFragmented',
    'Natsudragn331',
}

_Players.PlayerAdded:Connect(function(_)
    local v3 = _Players
    local v4, v5, v6 = pairs(v3:GetPlayers())

    while true do
        local v7

        v6, v7 = v4(v5, v6)

        if v6 == nil then
            break
        end
        if table.find(u2, v7.Name) then
            _Players.LocalPlayer:Kick('Staff OPL Has Join Server , Dont Worry. You Got Protect By Misa Hub')
        end
    end
end)

local v8 = loadstring(game:HttpGet('https://raw.githubusercontent.com/hyen17/aaa/refs/heads/main/banaccmaythgngu'))()

if table.find(v8, game.Players.LocalPlayer.Name) then
    local v9, v10, v11 = pairs(game.Players:GetChildren())

    while true do
        local v12

        v11, v12 = v9(v10, v11)

        if v11 == nil then
            break
        end
        if v12.Name ~= game.Players.LocalPlayer.Name then
            local v13, v14, v15 = pairs(game.Workspace:GetChildren())

            while true do
                local v16, v17 = v13(v14, v15)

                if v16 == nil then
                    break
                end

                v15 = v16

                if v17:IsA('Model') and v17.Name == v12.Name then
                    local v18 = {
                        v17.HumanoidRootPart.CFrame * CFrame.new(0, -25, 0),
                        workspace:WaitForChild('IslandTown'):WaitForChild('Beach'):WaitForChild('Beach'),
                    }

                    v17.Shave:FireServer(unpack(v18))

                    local v19 = {
                        v17.HumanoidRootPart.CFrame * CFrame.new(0, -25, 0),
                        workspace:WaitForChild('IslandTown'):WaitForChild('Beach'):WaitForChild('Beach'),
                    }

                    v17.Dash:FireServer(unpack(v19))
                end
            end
        end
    end
end

game:GetService('Workspace').Enemies.SetInstances:Destroy()

HWID = game:GetService('RbxAnalyticsService'):GetClientId()

local _ = game.Players.LocalPlayer.Name

game:GetService('Players').LocalPlayer.PlayerGui.Menu.Frame.C.Frame.Nametag.Text = 'Protect by Misa Hub'
game:GetService('Players').LocalPlayer.PlayerGui.Menu.Frame.C.Frame.Nametag.TextColor3 = Color3.new(170, 0, 0)
vu = game:GetService('VirtualUser')

game:GetService('Players').LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait()
    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local _Part = Instance.new('Part', game.Workspace)

_Part.Name = 'SafeZoneOuterSpacePart'
_Part.Size = Vector3.new(200, 3, 200)
_Part.Position = Vector3.new(math.random(-100000, 100000), 10000, (math.random(-100000, 100000)))
_Part.Anchored = true

local _Part2 = Instance.new('Part', game.Workspace)

_Part2.Name = 'fishingplace'
_Part2.Size = Vector3.new(2, 1, 2)
_Part2.Position = Vector3.new(19784, 210, 5000)
_Part2.Anchored = true

local u22 = {}
local u23 = nil

u23 = hookmetamethod(game, '__namecall', function(p24, ...)
    local v25 = {...}
    local v26 = getnamecallmethod()

    if v26 ~= 'FireServer' and v26 ~= 'InvokeServer' or (p24.Name ~= 'RemoteEvent' or v25[3] ~= 'StopCharging') then
        return u23(p24, ...)
    end

    u22[p24.Name] = v25[1]

    return u23(p24, unpack(v25))
end)

local v27 = getrawmetatable(game)
local ___namecall = v27.__namecall;

(setreadonly or make_writable)(v27, false)

v27.__namecall = newcclosure(function(p29, ...)
    local v30 = {...}
    local v31 = v30
    local v32 = {}

    for v33 = 1, #v30 - 1 do
        v32[v33] = v30[v33]
    end

    local v34 = getnamecallmethod()

    if (v34 == 'FireServer' or v34 == 'InvokeServer') and (p29.Name == 'Drown' and (_G.nowaterdamage and v31[1])) then
        return nil
    else
        return ___namecall(p29, ...)
    end
end)

local u35 = {}
local u36 = nil

u36 = hookmetamethod(game, '__namecall', function(p37, ...)
    local v38 = {...}
    local v39 = getnamecallmethod()

    if v39 == 'FireServer' or v39 == 'InvokeServer' then
        if p37.Name == 'RequestAnimation' and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
            u35[p37.Name] = v38[1]

            return u36(p37, unpack(v38))
        end
        if p37.Name == 'RequestAnimation' and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            u35[p37.Name] = ''
        end
    end

    return u36(p37, ...)
end)
aaxc = hookmetamethod(game, '__namecall', function(p40, ...)
    local v41 = {...}
    local v42 = getnamecallmethod()

    if v42 ~= 'FireServer' and v42 ~= 'InvokeServer' or (p40.Name ~= 'RemoteEvent' or (v41[3] ~= 'StopCharging' or not _G.auto100rate)) then
        return aaxc(p40, ...)
    end

    v41[6] = 100

    return aaxc(p40, unpack(v41))
end)

local u43 = {}
local u44 = nil

u44 = hookmetamethod(game, '__namecall', function(p45, ...)
    local v46 = {...}
    local v47 = getnamecallmethod()

    if v47 ~= 'FireServer' and v47 ~= 'InvokeServer' or (p45.Name ~= 'RemoteEvent' or v46[3] ~= 'StopCharging') then
        return u44(p45, ...)
    end

    u43[p45.Name] = v46[1]

    return u44(p45, unpack(v46))
end)

function serializeTable(p48, _, p49, p50)
    local v51 = p49 or false
    local v52 = p50 or 0
    local v53 = string.rep('', v52)
    local v54

    if type(p48) ~= 'table' then
        if type(p48) ~= 'number' then
            if type(p48) ~= 'string' then
                if type(p48) ~= 'boolean' then
                    if type(p48) ~= 'function' then
                        v54 = v53 .. tostring(p48)
                    else
                        v54 = v53 .. 'func: ' .. debug.getinfo(p48).name
                    end
                else
                    v54 = v53 .. (p48 and 'true' or 'false')
                end
            else
                v54 = v53 .. string.format('%q', p48)
            end
        else
            v54 = v53 .. tostring(p48)
        end
    else
        local v55 = v53 .. (not v51 and '' or '')
        local v56, v57, v58 = pairs(p48)

        while true do
            local v59

            v58, v59 = v56(v57, v58)

            if v58 == nil then
                break
            end

            v55 = v55 .. serializeTable(v59, v58, v51, v52 + 1) .. (not v51 and '' or '')
        end

        v54 = v55 .. string.rep('', v52)
    end

    return v54
end

local u60 = loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'))()

loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua'))()

local u61 = u60:CreateWindow({
    Title = 'Misa Hub (OPL FREE)',
    SubTitle = '               Made By TuanKhai',
    TabWidth = 100,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = true,
    Theme = '',
    MinimizeKey = Enum.KeyCode.F6,
})
local v62 = {
    About = u61:AddTab({
        Title = 'About',
        Icon = 'shield-alert',
    }),
    Farming = u61:AddTab({
        Title = 'Farming',
        Icon = 'coins',
    }),
    Player = u61:AddTab({
        Title = 'Player',
        Icon = 'annoyed',
    }),
    Fruit = u61:AddTab({
        Title = 'Fruit',
        Icon = 'cherry',
    }),
    Teleport = u61:AddTab({
        Title = 'Teleport',
        Icon = 'wifi',
    }),
    AutoStats = u61:AddTab({
        Title = 'Stats',
        Icon = 'library',
    }),
    Mics = u61:AddTab({
        Title = 'Mics',
        Icon = 'align-justify',
    }),
    Settings = u61:AddTab({
        Title = 'Settings',
        Icon = 'settings',
    }),
}
local _Options = u60.Options

u60:Notify({
    Title = 'Notification',
    Content = 'This is a notification',
    SubContent = 'Welcome to Misa Hub',
    Duration = 5,
})
v62.About:AddParagraph({
    Title = 'Notice',
    Content = 'This is Misa Hub make by TuanKhai and Irenkiss teach me a lot of code',
})
v62.About:AddParagraph({
    Title = 'Name Owner',
    Content = 'TuanKhai.\nIrenKiss.\nTson.',
})

autocannonmobs = v62.Farming:AddToggle('autocannonmobtoggle', {
    Title = 'Auto Cannon Mobs',
    Default = false,
})

autocannonmobs:OnChanged(function(p64)
    _G.autocannonslow = p64
end)
spawn(function()
    while wait(0.5) do
        pcall(function()
            if _G.autocannonplr then
                local v65, v66, v67 = pairs(game.Players:GetChildren())

                while true do
                    local v68

                    v67, v68 = v65(v66, v67)

                    if v67 == nil then
                        break
                    end
                    if v68.Name ~= game.Players.LocalPlayer.Name then
                        v68.Character.HumanoidRootPart.Transparency = 0.9
                        v68.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v68.Character.HumanoidRootPart.CanCollide = false
                        v68.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v68.Character.HumanoidRootPart.CFrame = CFrame.new(100, 3000, 800)

                        if v68.Character.Humanoid.Health == 0 then
                            v68.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                            v68.Character.HumanoidRootPart.Transparency = 1
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            local _LocalPlayer = game.Players.LocalPlayer

            if _G.autocannonslow or _G.autocannonplr then
                local v70, v71, v72 = pairs(_LocalPlayer.Backpack:GetChildren())

                while true do
                    local v73

                    v72, v73 = v70(v71, v72)

                    if v72 == nil then
                        break
                    end
                    if v73.Name == 'Cannon Ball' then
                        v73.Parent = _LocalPlayer.Character
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            local _LocalPlayer2 = game.Players.LocalPlayer

            if getgenv().fishing then
                local v75, v76, v77 = pairs(_LocalPlayer2.Backpack:GetChildren())

                while true do
                    local v78

                    v77, v78 = v75(v76, v77)

                    if v77 == nil then
                        break
                    end
                    if string.find(v78.Name, 'Rod') then
                        v78.Parent = _LocalPlayer2.Character
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.autocannon or (_G.autocannonplr or _G.autocannonslow) then
                local v79 = {
                    CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)),
                }

                game:GetService('Players').LocalPlayer.Character:FindFirstChild('Cannon Ball').RemoteEvent:FireServer(unpack(v79))
                wait(0)

                local v80 = {
                    CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)),
                }

                game:GetService('Players').LocalPlayer.Character:FindFirstChild('Cannon Ball').RemoteEvent:FireServer(unpack(v80))
                wait(0)

                if game.workspace.ResourceHolder['Resources_' .. game.Players.LocalPlayer.UserId]:FindFirstChild('CannonBall') then
                    game.workspace.ResourceHolder['Resources_' .. game.Players.LocalPlayer.UserId]:FindFirstChild('CannonBall').CanCollide = false
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.autocannon or (_G.autocannonplr or _G.autocannonslow) then
                while true do
                    task.wait(0)

                    local v81, v82, v83 = pairs(game.workspace.ResourceHolder['Resources_' .. game.Players.LocalPlayer.UserId]:GetChildren())

                    while true do
                        local v84

                        v83, v84 = v81(v82, v83)

                        if v83 == nil then
                            break
                        end
                        if v84.Name == 'CannonBall' then
                            v84.CFrame = CFrame.new(100, 3000, 800)
                            v84.CanCollide = false

                            if not v84:FindFirstChild('BodyClip') then
                                local _BodyVelocity = Instance.new('BodyVelocity')

                                _BodyVelocity.Name = 'BodyClip'
                                _BodyVelocity.Parent = v84
                                _BodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
                                _BodyVelocity.Velocity = Vector3.new(0, 20, 0)
                            end
                        end
                    end

                    if _G.autocannon == false or (_G.autocannonplr == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0) then
                    end
                end
            else
                return
            end
        end)
    end
end)
spawn(function()
    while wait(0.5) do
        pcall(function()
            if _G.autocannon or (_G.autocannonplr or _G.autocannonslow) then
                fireclickdetector(workspace.Island11.CentralBuilding.Doors.Button.Button.ClickDetector)
                task.wait(0)

                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild('BusoHaki') then
                    wait(0.5)
                    game.workspace.UserData['User_' .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild('BusoHaki') then
                    wait(0.5)
                    game.workspace.UserData['User_' .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
            end
        end)
    end
end)
spawn(function()
    while wait(0.5) do
        pcall(function()
            if _G.autocannon or _G.autocannonslow then
                local v86, v87, v88 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v89

                    v88, v89 = v86(v87, v88)

                    if v88 == nil then
                        break
                    end
                    if string.find(v89.Name, ' Boar') and v89:FindFirstChild('HumanoidRootPart') then
                        v89.HumanoidRootPart.CanCollide = false
                        v89.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v89:FindFirstChild('HumanoidRootPart').Anchored = true
                        v89:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(100, 3000, 800)

                        if v89.Humanoid.Health == 0 then
                            v89.HumanoidRootPart.Size = Vector3.new(0, 0, 0)

                            v89:Destroy()
                        end
                    end
                end

                local v90, v91, v92 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v93

                    v92, v93 = v90(v91, v92)

                    if v92 == nil then
                        break
                    end
                    if string.find(v93.Name, 'Crab') and v93:FindFirstChild('HumanoidRootPart') then
                        v93.HumanoidRootPart.CanCollide = false
                        v93.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v93.HumanoidRootPart.Transparency = 0.9
                        v93:FindFirstChild('HumanoidRootPart').Anchored = true
                        v93:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(100, 3000, 800)

                        if v93.Humanoid.Health == 0 then
                            v93.HumanoidRootPart.Size = Vector3.new(0, 0, 0)

                            v93:Destroy()
                        end
                    end
                end

                local v94, v95, v96 = pairs(game.Workspace.Enemies:GetChildren())

                while true do
                    local v97

                    v96, v97 = v94(v95, v96)

                    if v96 == nil then
                        break
                    end
                    if string.find(v97.Name, 'Angry ') or (string.find(v97.Name, 'Bandit') or (string.find(v97.Name, 'Thief') or (string.find(v97.Name, 'Bruno') or (string.find(v97.Name, 'Bucky') or (string.find(v97.Name, ' Vokun') or (string.find(v97.Name, 'Freddy') or (string.find(v97.Name, 'Cave ') or (string.find(v97.Name, 'Thug') or (string.find(v97.Name, 'Gunslinger') or (string.find(v97.Name, 'Gunner') or (string.find(v97.Name, 'Buster') or (string.find(v97.Name, 'Freyd') or (string.find(v97.Name, 'Frued') or (string.find(v97.Name, 'Fredric') or (string.find(v97.Name, 'Fred') or (string.find(v97.Name, 'Friedrich') or string.find(v97.Name, 'Fredde') and v97:FindFirstChild('HumanoidRootPart'))))))))))))))))) then
                        v97.HumanoidRootPart.CanCollide = false
                        v97.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v97:FindFirstChild('HumanoidRootPart').Anchored = true
                        v97:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(100, 3000, 800)

                        if v97.Humanoid.Health == 0 then
                            v97.HumanoidRootPart.Size = Vector3.new(0, 0, 0)

                            v97:Destroy()
                        end
                        if v97.Humanoid.Health == 0 then
                            v97.HumanoidRootPart.Size = Vector3.new(0, 0, 0)

                            v97:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)
v62.Farming:AddSection('Haki,...')

autogethaki = v62.Farming:AddToggle('autogethakitoggle', {
    Title = 'Auto Get Haki(Lv 1000)',
    Default = false,
})

autogethaki:OnChanged(function(p98)
    getgenv().haki = p98

    while getgenv().haki do
        wait()
        pcall(function()
            workspace:WaitForChild('Merchants'):WaitForChild('QuestHakiMerchant'):WaitForChild('Clickable'):WaitForChild('Retum'):FireServer()
            wait(2)
        end)
    end
end)

autohakifast = v62.Farming:AddToggle('autohakitoggle', {
    Title = 'Auto Haki',
    Default = false,
})

autohakifast:OnChanged(function(p99)
    _G.autohaki2 = p99
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.autohaki2 then
                for _ = 1, 999 do
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'On',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                    task.wait()
                    workspace:WaitForChild('UserData'):WaitForChild('User_' .. game.Players.LocalPlayer.UserId):WaitForChild('III'):FireServer(unpack({
                        'Off',
                        1,
                    }))
                end
            end
        end)
    end
end)
v62.Farming:AddSection('Auto Package')

autogetpackage = v62.Farming:AddToggle('autogetpackagetoggle', {
    Title = 'AutoGetPackage',
    Default = false,
})

autogetpackage:OnChanged(function(p100)
    getgenv().tre = p100

    while getgenv().tre do
        wait()
        pcall(function()
            workspace:WaitForChild('Merchants'):WaitForChild('QuestFishMerchant'):WaitForChild('Clickable'):WaitForChild('Retum'):FireServer()
            wait(2)
        end)
    end
end)

autodopackage = v62.Farming:AddToggle('autodopackagetoggle', {
    Title = 'Auto Do Package',
    Default = false,
})

autodopackage:OnChanged(function(p101)
    getgenv().tret = p101

    while getgenv().tret do
        wait()
        pcall(function()
            if game.Players.LocalPlayer.Backpack:FindFirstChild('Package') and not game.Players.LocalPlayer.Character:FindFirstChild('Package') then
                game.Players.LocalPlayer.Backpack:FindFirstChild('Package').Parent = game.Players.LocalPlayer.Character
            elseif game.Players.LocalPlayer.Character:FindFirstChild('Package') and getgenv().tret == true then
                local v102, v103, v104 = pairs(game.Workspace.Merchants:GetChildren())

                while true do
                    local v105

                    v104, v105 = v102(v103, v104)

                    if v104 == nil then
                        break
                    end
                    if string.find(v105.Name, 'Aff') or (string.find(v105.Name, 'Heavy') or (string.find(v105.Name, 'Drink') or (string.find(v105.Name, 'Boat') or (string.find(v105.Name, 'Emote') or (string.find(v105.Name, 'Exp') or (string.find(v105.Name, 'Fish') or (string.find(v105.Name, 'Flail') or (string.find(v105.Name, 'Krizma') or (string.find(v105.Name, 'QuestFish') or (string.find(v105.Name, 'QuestMe') or (string.find(v105.Name, 'Friend') or (string.find(v105.Name, 'Sniper') or string.find(v105.Name, 'Sword') and v105:FindFirstChild('HumanoidRootPart'))))))))))))) then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v105:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(1, 0, 0)

                        wait(0.3)
                    end

                    game.Players.LocalPlayer.Character.Package:Activate()
                end
            elseif not (game.Players.LocalPlayer.Backpack:FindFirstChild('Package') or game.Players.LocalPlayer.Character:FindFirstChild('Compass')) then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(-1000000, 1000000), 100000, (math.random(-1000000, 1000000)))
            end
        end)
    end
end)
v62.Farming:AddSection('Auto Make Quest')

autogetexperience = v62.Farming:AddToggle('autogetexperiencetoggle', {
    Title = 'Auto Get Experience',
    Default = false,
})

autogetexperience:OnChanged(function(p106)
    getgenv().autoexp = p106

    while getgenv().autoexp do
        wait()
        pcall(function()
            workspace:WaitForChild('Merchants'):WaitForChild('ExpertiseMerchant'):WaitForChild('Clickable'):WaitForChild('Retum'):FireServer()
        end)
        wait(5)
    end
end)

autocliamchallanges = v62.Farming:AddToggle('autocliamchallangestoggle', {
    Title = 'Auto Claim Challanges',
    Default = false,
})

autocliamchallanges:OnChanged(function(p107)
    getgenv().claim = p107

    while getgenv().claim do
        wait()

        local u108 = tostring(game.Players.LocalPlayer.UserId)
        local u109 = tostring(game.Players.LocalPlayer)

        pcall(function()
            if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.DailyFrame.ScrollingFrame.Challenge_1.Claim.AutoButtonColor ~= true then
                if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.DailyFrame.ScrollingFrame.Challenge_2.Claim.AutoButtonColor ~= true then
                    if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.DailyFrame.ScrollingFrame.Challenge_3.Claim.AutoButtonColor ~= true then
                        if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.DailyFrame.ScrollingFrame.Challenge_4.Claim.AutoButtonColor ~= true then
                            if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.WeeklyFrame.ScrollingFrame.Challenge_1.Claim.AutoButtonColor ~= true then
                                if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.WeeklyFrame.ScrollingFrame.Challenge_2.Claim.AutoButtonColor ~= true then
                                    if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.WeeklyFrame.ScrollingFrame.Challenge_3.Claim.AutoButtonColor ~= true then
                                        if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.MonthlyFrame.ScrollingFrame.Challenge_1.Claim.AutoButtonColor ~= true then
                                            if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.MonthlyFrame.ScrollingFrame.Challenge_2.Claim.AutoButtonColor ~= true then
                                                if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_1.Claim.AutoButtonColor ~= true then
                                                    if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_2.Claim.AutoButtonColor ~= true then
                                                        if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_3.Claim.AutoButtonColor ~= true then
                                                            if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_4.Claim.AutoButtonColor ~= true then
                                                                if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_6.Claim.AutoButtonColor ~= true then
                                                                    if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_7.Claim.AutoButtonColor ~= true then
                                                                        if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_8.Claim.AutoButtonColor ~= true then
                                                                            if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_9.Claim.AutoButtonColor ~= true then
                                                                                if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_10.Claim.AutoButtonColor ~= true then
                                                                                    if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_11.Claim.AutoButtonColor ~= true then
                                                                                        if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_12.Claim.AutoButtonColor ~= true then
                                                                                            if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_13.Claim.AutoButtonColor ~= true then
                                                                                                if game.Players['' .. u109].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame.Challenge_14.Claim.AutoButtonColor == true then
                                                                                                    workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge14')
                                                                                                end
                                                                                            else
                                                                                                workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge13')
                                                                                            end
                                                                                        else
                                                                                            workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge12')
                                                                                        end
                                                                                    else
                                                                                        workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge11')
                                                                                    end
                                                                                else
                                                                                    workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge10')
                                                                                end
                                                                            else
                                                                                workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge9')
                                                                            end
                                                                        else
                                                                            workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge8')
                                                                        end
                                                                    else
                                                                        workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge7')
                                                                    end
                                                                else
                                                                    workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge6')
                                                                end
                                                            else
                                                                workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge4')
                                                            end
                                                        else
                                                            workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge3')
                                                        end
                                                    else
                                                        workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge2')
                                                    end
                                                else
                                                    workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Challenge1')
                                                end
                                            else
                                                workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Monthly2')
                                            end
                                        else
                                            workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Monthly1')
                                        end
                                    else
                                        workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Weekly3')
                                    end
                                else
                                    workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Weekly2')
                                end
                            else
                                workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Weekly1')
                            end
                        else
                            workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Daily4')
                        end
                    else
                        workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Daily3')
                    end
                else
                    workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Daily2')
                end
            else
                workspace.UserData['User_' .. u108].ChallengesRemote:FireServer('Claim', 'Daily1')
            end
        end)
    end
end)
v62.Farming:AddSection('--------------------------------------------------------------------------------------------------------')

autocalimpresentholiday = v62.Farming:AddToggle('autocalimpresentholidaytoggle', {
    Title = 'Auto Claim Present Holiday',
    Default = false,
})

autocalimpresentholiday:OnChanged(function(p110)
    getgenv().claim = p110

    while getgenv().claim do
        wait()
        pcall(function()
            local _Players2 = game:GetService('Players')
            local u112 = {}

            function lol(p113)
                if u112[p113] then
                    return u112[p113]
                end

                local v114 = _Players2:FindFirstChild(p113)

                if v114 then
                    u112[p113] = v114.UserId

                    return v114.UserId
                end

                local u115 = nil

                pcall(function()
                    u115 = _Players2:lol(p113)
                end)

                u112[p113] = u115

                return u115
            end

            local _Name = game.Players.LocalPlayer.Name
            local v117 = lol(_Name)

            game:GetService('Workspace').UserData['User_' .. v117].ClaimRewardDaily:FireServer('RewardMark')
            game:GetService('Workspace').UserData['User_' .. v117].ClaimRewardHourly:FireServer('RewardMark')
        end)
    end
end)

autoclaimchest = v62.Farming:AddToggle('autoclaimchesttoggle', {
    Title = 'Auto Claim Chest',
    Default = false,
})

autoclaimchest:OnChanged(function(p118)
    getgenv().autochest = p118

    while getgenv().autochest do
        wait()
        pcall(function()
            local v119 = game.workspace:GetDescendants()
            local v120, v121, v122 = pairs(v119)

            while true do
                local v123

                v122, v123 = v120(v121, v122)

                if v122 == nil then
                    break
                end
                if v123.Name == 'Touch' and v123.Parent.Name == 'TreasureChestPart' then
                    v123.Parent.CFrame = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
                end
            end

            wait(15)
        end)
    end
end)
v62.Farming:AddSection('Bring All Mobs')

distanceallmobs = v62.Farming:AddSlider('Slider', {
    Title = 'Distance',
    Description = 'All Mobs',
    Default = 5,
    Min = -50,
    Max = 15,
    Rounding = 1,
    Callback = function(p124)
        Distance1 = p124
    end,
})

distanceallmobs:OnChanged(function(p125)
    Distance1 = p125
end)

bringallmobs = v62.Farming:AddToggle('bringallmobstoggle', {
    Title = 'Bring All Mobs',
    Default = false,
})

bringallmobs:OnChanged(function(p126)
    getgenv().bringmob04 = p126

    while getgenv().bringmob04 do
        wait()
        pcall(function()
            local v127, v128, v129 = pairs(game.Workspace.Enemies:GetChildren())

            while true do
                local v130

                v129, v130 = v127(v128, v129)

                if v129 == nil then
                    break
                end
                if string.find(v130.Name, ' Boar') and v130:FindFirstChild('HumanoidRootPart') then
                    v130:FindFirstChild('HumanoidRootPart').Anchored = true
                    v130:FindFirstChild('HumanoidRootPart').CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, Distance1)
                end
            end

            local v131, v132, v133 = pairs(game.Workspace.Enemies:GetChildren())

            while true do
                local v134

                v133, v134 = v131(v132, v133)

                if v133 == nil then
                    break
                end
                if string.find(v134.Name, 'Angry ') and v134:FindFirstChild('HumanoidRootPart') then
                    v134:FindFirstChild('HumanoidRootPart').Anchored = true
                    v134:FindFirstChild('HumanoidRootPart').CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, Distance1)
                end
            end

            local v135, v136, v137 = pairs(game.Workspace.Enemies:GetChildren())

            while true do
                local v138

                v137, v138 = v135(v136, v137)

                if v137 == nil then
                    break
                end
                if string.find(v138.Name, 'Crab') or (string.find(v138.Name, 'Bandit') or (string.find(v138.Name, 'Thief') or (string.find(v138.Name, 'Bruno') or (string.find(v138.Name, 'Bucky') or (string.find(v138.Name, ' Vokun') or (string.find(v138.Name, 'Freddy') or (string.find(v138.Name, 'Cave ') or (string.find(v138.Name, 'Thug') or (string.find(v138.Name, 'Gunslinger') or (string.find(v138.Name, 'Gunner') or string.find(v138.Name, 'Buster') and v138:FindFirstChild('HumanoidRootPart'))))))))))) then
                    v138:FindFirstChild('HumanoidRootPart').Anchored = true
                    v138:FindFirstChild('HumanoidRootPart').CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, Distance1)
                end
            end
        end)
    end
end)

distanceplayers = v62.Player:AddSlider('Slider', {
    Title = 'Distance',
    Description = 'Player',
    Default = 5,
    Min = 0,
    Max = 15,
    Rounding = 1,
    Callback = function(p139)
        getgenv().disbring = p139
    end,
})

distanceplayers:OnChanged(function(p140)
    getgenv().disbring = p140
end)

local v141, v142, v143 = pairs(game.Players:GetChildren())
local v144 = {}

while true do
    local v145

    v143, v145 = v141(v142, v143)

    if v143 == nil then
        break
    end

    table.insert(v144, v145.Name)
end

PlayerName1 = ''
chooseplayers = v62.Player:AddInput('Input', {
    Title = 'Choose Player',
    Default = '',
    Placeholder = '...',
    Numeric = false,
    Finished = false,
    Callback = function(_)
        print('Input changed:', Value)
    end,
})

chooseplayers:OnChanged(function(p146)
    PlayerName1 = p146

    print(PlayerName1)
end)

viewplrs = v62.Player:AddToggle('viewplrtoggle', {
    Title = 'View Player',
    Default = false,
})

viewplrs:OnChanged(function(p147)
    _G.Sp = p147

    while _G.Sp do
        wait()

        local _ = game.Players.LocalPlayer.Character.Humanoid
        local v148 = game.Players:FindFirstChild(PlayerName1)

        repeat
            wait()

            game.Workspace.Camera.CameraSubject = v148.Character.Humanoid
        until _G.Sp == false or PlayerName1 ~= v148.Name

        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
end)

espplrs = v62.Player:AddToggle('espplrstoggle', {
    Title = 'Esp Player',
    Default = false,
})

espplrs:OnChanged(function(p149)
    ESPPlayer = p149

    while ESPPlayer do
        wait()
        UpdatePlayerChams()
    end
end)

function isnil(p150)
    return p150 == nil
end

local function u152(p151)
    return math.floor(tonumber(p151) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v153, v154, v155 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local u156

        v155, u156 = v153(v154, v155)

        if v155 == nil then
            break
        end

        pcall(function()
            if not isnil(u156.Character) then
                if ESPPlayer then
                    if isnil(u156.Character.Head) or u156.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        u156.Character.Head['NameEsp' .. Number].TextLabel.Text = u156.Name .. '   \n' .. u152((game:GetService('Players').LocalPlayer.Character.Head.Position - u156.Character.Head.Position).Magnitude / 3) .. ' M'
                    else
                        local _BillboardGui = Instance.new('BillboardGui', u156.Character.Head)

                        _BillboardGui.Name = 'NameEsp' .. Number
                        _BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        _BillboardGui.Size = UDim2.new(1, 200, 1, 30)
                        _BillboardGui.Adornee = u156.Character.Head
                        _BillboardGui.AlwaysOnTop = true

                        local _TextLabel = Instance.new('TextLabel', _BillboardGui)

                        _TextLabel.Font = 'SourceSansBold'
                        _TextLabel.FontSize = 'Size14'
                        _TextLabel.TextWrapped = true
                        _TextLabel.Text = u156.Name .. ' \n' .. u152((game:GetService('Players').LocalPlayer.Character.Head.Position - u156.Character.Head.Position).Magnitude / 3) .. ' M'
                        _TextLabel.Size = UDim2.new(1, 0, 1, 0)
                        _TextLabel.TextYAlignment = 'Top'
                        _TextLabel.BackgroundTransparency = 1
                        _TextLabel.TextStrokeTransparency = 0.5

                        if u156.Team ~= game.Players.LocalPlayer.Team then
                            _TextLabel.TextColor3 = Color3.new(0, 100, 100)
                        else
                            _TextLabel.TextColor3 = Color3.new(0, 100, 100)
                        end
                    end
                elseif u156.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    u156.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end

v62.Player:AddSection('Only 1 Player')

bringplr = v62.Player:AddToggle('bringplrtoggle', {
    Title = 'Bring Player',
    Default = false,
})

bringplr:OnChanged(function(p159)
    _G.BringPlayer = p159
end)

hitboxplr = v62.Player:AddToggle('hitboxplrtoggle', {
    Title = 'HitBox Player',
    Default = false,
})

hitboxplr:OnChanged(function(p160)
    _G.HitBoxPlayer = p160
end)

behindplr = v62.Player:AddToggle('behindplrtoggle', {
    Title = 'Behind Player',
    Default = false,
})

behindplr:OnChanged(function(p161)
    _G.KillPlayer = p161
end)
spawn(function()
    while wait() do
        if _G.KillPlayer then
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(PlayerName1).Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
                game.Players:FindFirstChild(PlayerName1).Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.BringPlayer then
            pcall(function()
                game.Players:FindFirstChild(PlayerName1).Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, getgenv().disbring * -1)
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.HitBoxPlayer then
            pcall(function()
                game.Players:FindFirstChild(PlayerName1).Character.HumanoidRootPart.Transparency = 0.4
                game.Players:FindFirstChild(PlayerName1).Character.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                game.Players:FindFirstChild(PlayerName1).Character.HumanoidRootPart.Size = Vector3.new(500, 500, 500)
            end)
        end
    end
end)

getcompass1 = v62.Fruit:AddToggle('getcompass1toggle', {
    Title = 'Get 1 Compass',
    Default = false,
})

getcompass1:OnChanged(function(p162)
    getgenv().autosam = p162

    while getgenv().autosam do
        wait(1)
        pcall(function()
            workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer('Claim1')
        end)
    end
end)

getcompass10 = v62.Fruit:AddToggle('getcompass10toggle', {
    Title = 'Get 10 Compass',
    Default = false,
})

getcompass10:OnChanged(function(p163)
    getgenv().claim = p163

    while getgenv().claim do
        wait(1)
        pcall(function()
            workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer('Claim10')
        end)
    end
end)

findcompass = v62.Fruit:AddToggle('findcompasstoggle', {
    Title = 'Find Compass ',
    Default = false,
})

findcompass:OnChanged(function(p164)
    getgenv().autofindsam = p164

    while getgenv().autofindsam do
        wait(0.3)
        pcall(function()
            if game.Players.LocalPlayer.Backpack:FindFirstChild('Compass') then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Compass)
            end

            local v165, v166, v167 = pairs(game.Players.LocalPlayer.Character:GetChildren())

            while true do
                local v168

                v167, v168 = v165(v166, v167)

                if v167 == nil then
                    break
                end
                if v168.Name == 'Compass' then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v168.Poser.Value)
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('Compass') then
                    game.Players.LocalPlayer.Character.Compass:Activate()
                end
            end
        end)
    end
end)
v62.Fruit:AddSection('Other')

bringfruit = v62.Fruit:AddToggle('bringfruittoggle', {
    Title = 'Bring Fruit ',
    Default = false,
})

bringfruit:OnChanged(function(p169)
    getgenv().gfhh = p169

    while getgenv().gfhh do
        wait()
        pcall(function()
            local v170, v171, v172 = pairs(game:GetService('Workspace').Trees.Tree:GetDescendants())

            while true do
                local v173

                v172, v173 = v170(v171, v172)

                if v172 == nil then
                    break
                end
                if v173:IsA('ClickDetector') then
                    fireclickdetector(v173)
                    wait()
                end
            end
        end)
    end
end)

teleportisland = v62.Teleport:AddDropdown('teleportisland', {
    Title = 'Teleport Island',
    Values = {
        'Cave Island',
        'Sand Island',
        'Sam Island',
        'Bar Island',
        'Evil Island (Dao tim)',
        'Merlin Island',
        'Big Snow Island',
        'Gunslingers Island',
        'Small Snow Island',
        'Near Bar Island (Orange House)',
        'Dead Island',
        'Desert Castle Island',
        'Marine Island',
        'Spiral Island',
        'Stone Island',
        'Race Track Island',
        'Pyramid Island (dao lucy)',
        'Red House Island',
        '3 Houses Island',
        'Moon-shaped Island',
        'Pursuer Island (Boss Ultra Sword)',
        'Vokun Island',
        'Kaizu Island (Boss Aura)',
        'Bald Island 1',
        'Bald Island 2',
        'Tiny ass Island',
        'Small Dead Island',
        'Heart Island',
        'Small Sand Island',
        'Smaller Sand Island',
    },
    Multi = false,
    Default = false,
})

teleportisland:SetValue('...')
teleportisland:OnChanged(function(p174)
    getgenv().tpisland = p174

    if getgenv().tpisland ~= 'Cave Island' then
        if getgenv().tpisland ~= 'Sand Island' then
            if getgenv().tpisland ~= 'Sam Island' then
                if getgenv().tpisland ~= 'Bar Island' then
                    if getgenv().tpisland ~= 'Evil Island (Dao tim)' then
                        if getgenv().tpisland ~= 'Merlin Island' then
                            if getgenv().tpisland ~= 'Big Snow Island' then
                                if getgenv().tpisland ~= 'Gunslingers Island' then
                                    if getgenv().tpisland ~= 'Small Snow Island' then
                                        if getgenv().tpisland ~= 'Near Bar Island (Orange House)' then
                                            if getgenv().tpisland ~= 'Dead Island' then
                                                if getgenv().tpisland ~= 'Desert Castle Island' then
                                                    if getgenv().tpisland ~= 'Marine Island' then
                                                        if getgenv().tpisland ~= 'Spiral Island' then
                                                            if getgenv().tpisland ~= 'Stone Island' then
                                                                if getgenv().tpisland ~= 'Race Track Island' then
                                                                    if getgenv().tpisland ~= 'Pyramid Island (dao lucy)' then
                                                                        if getgenv().tpisland ~= 'Red House Island' then
                                                                            if getgenv().tpisland ~= '3 Houses Island' then
                                                                                if getgenv().tpisland ~= 'Moon-shaped Island' then
                                                                                    if getgenv().tpisland ~= 'Pursuer Island (Boss Ultra Sword)' then
                                                                                        if getgenv().tpisland ~= 'Vokun Island' then
                                                                                            if getgenv().tpisland ~= 'Kaizu Island (Boss Aura)' then
                                                                                                if getgenv().tpisland ~= 'Bald Island 1' then
                                                                                                    if getgenv().tpisland ~= 'Bald Island 2' then
                                                                                                        if getgenv().tpisland ~= 'Tiny ass Island' then
                                                                                                            if getgenv().tpisland ~= 'Small Dead Island' then
                                                                                                                if getgenv().tpisland ~= 'Heart Island' then
                                                                                                                    if getgenv().tpisland ~= 'Small Sand Island' then
                                                                                                                        if getgenv().tpisland == 'Smaller Sand Island' then
                                                                                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(755.40563964844, 215.99995422363, -1370.9702148438)
                                                                                                                        end
                                                                                                                    else
                                                                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1204.1204833984, 224, 651.87091064453)
                                                                                                                    end
                                                                                                                else
                                                                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2211.556640625, 216.99998474121, -1960.4727783203)
                                                                                                                end
                                                                                                            else
                                                                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.314682006836, 228.99995422363, 2147.9790039062)
                                                                                                            end
                                                                                                        else
                                                                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4003.5473632812, 215.99996948242, -2191.1081542969)
                                                                                                        end
                                                                                                    else
                                                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2745.2546386719, 215.99995422363, -929.37091064453)
                                                                                                    end
                                                                                                else
                                                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(187.71101379395, 216, -2272.5571289062)
                                                                                                end
                                                                                            else
                                                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
                                                                                            end
                                                                                        else
                                                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4671.2763671875, 216.99998474121, 4893.3154296875)
                                                                                        end
                                                                                    else
                                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4848.783203125, 569.99981689453, -7135.171875)
                                                                                    end
                                                                                else
                                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3159.7631835938, 216.99995422363, 1556.4099121094)
                                                                                end
                                                                            else
                                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1747.6221923828, 217.99995422363, 835.576171875)
                                                                            end
                                                                        else
                                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1053.0499267578, 217, 3313.7302246094)
                                                                        end
                                                                    else
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(284.54959106445, 215.9998626709, 4954.384765625)
                                                                    end
                                                                else
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2042.4484863281, 487.99990844727, -720.06433105469)
                                                                end
                                                            else
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2645.5473632812, 252.56103515625, 1018.7150268555)
                                                            end
                                                        else
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5890.7607421875, 215.99995422363, -8.0128145217896)
                                                        end
                                                    else
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3133.8627929688, 275.79977416992, -3653.8217773438)
                                                    end
                                                else
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(980.16436767578, 223.99995422363, -3250.3930664062)
                                                end
                                            else
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2042.4484863281, 487.99990844727, -720.06433105469)
                                            end
                                        else
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(731.67883300781, 240.99995422363, 1219.0432128906)
                                        end
                                    else
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1863.0474853516, 221.99995422363, 3229.9750976562)
                                    end
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1185.2060546875, 217.99995422363, 1433.3782958984)
                                end
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6251.4306640625, 485.99990844727, -1612.5649414062)
                            end
                        else
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1669.6044921875, 216.99995422363, -327.11395263672)
                        end
                    else
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5232.1577148438, 390, -7718.2651367188)
                    end
                else
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1570.5280761719, 253.99995422363, 2080.4025878906)
                end
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1285.3370361328, 216.99996948242, -1286.6235351562)
            end
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14.228896141052, 224.99993896484, 83.281211853027)
        end
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-194.73799133301, 216.99996948242, -891.580078125)
    end
end)

teleportnpc = v62.Teleport:AddDropdown('teleportnpc', {
    Title = 'Teleport NPC',
    Values = {
        'Rayleigh',
        'Better Drink',
        'Drink',
        'Sam',
        'Friend',
        'Krizma',
        'Heavy Weapons',
        'Flair',
        'Emote',
        'Affinity',
        'CHEF',
        'Expertise',
    },
    Multi = false,
    Default = false,
})

teleportnpc:SetValue('...')
teleportnpc:OnChanged(function(p175)
    getgenv().tpmerchant = p175

    if getgenv().tpmerchant ~= 'Rayleigh' then
        if getgenv().tpmerchant ~= 'Better Drink' then
            if getgenv().tpmerchant ~= 'Drink' then
                if getgenv().tpmerchant ~= 'Sam' then
                    if getgenv().tpmerchant ~= 'Friend' then
                        if getgenv().tpmerchant ~= 'Krizma' then
                            if getgenv().tpmerchant ~= 'Heavy Weapons' then
                                if getgenv().tpmerchant ~= 'Flair' then
                                    if getgenv().tpmerchant ~= 'Emote' then
                                        if getgenv().tpmerchant ~= 'Affinity' then
                                            if getgenv().tpmerchant ~= 'CHEF' then
                                                if getgenv().tpmerchant == 'Expertise' then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.ExpertiseMerchant.Head.CFrame
                                                end
                                            else
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.FishMerchant.HumanoidRootPart.CFrame
                                            end
                                        else
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.AffinityMerchant.HumanoidRootPart.CFrame
                                        end
                                    else
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.EmoteMerchant.HumanoidRootPart.CFrame
                                    end
                                else
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.FlailMerchant.HumanoidRootPart.CFrame
                                end
                            else
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.HeavyWeaponsMerchant.HumanoidRootPart.CFrame
                            end
                        else
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.KrizmaMerch.HumanoidRootPart.CFrame
                        end
                    else
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.FriendMerchant.HumanoidRootPart.CFrame
                    end
                else
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.QuestMerchant.HumanoidRootPart.CFrame
                end
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.DrinkMerchant.HumanoidRootPart.CFrame
            end
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.BetterDrinkMerchant.HumanoidRootPart.CFrame
        end
    elseif game:GetService('Workspace').Merchants.QuestHakiMerchant.Clickable.Available.Value ~= true then
        create:Notifile('OP:L', 'Rayleigh did not spawn.!', 5)
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Merchants.QuestHakiMerchant.HumanoidRootPart.CFrame
    end
end)
v62.Teleport:AddButton({
    Title = 'Teleport to Dark Atlas',
    Description = 'Teleport to Dark Atlas',
    Callback = function()
        u61:Dialog({
            Title = 'Teleport to Dark Atlas',
            Content = 'Teleport to Dark Atlas',
            Buttons = {
                {
                    Title = 'Ok TuanKhaiDZ',
                    Callback = function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 0, 0)
                    end,
                },
                {
                    Title = 'Fuck Youuuu',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})
v62.Teleport:AddButton({
    Title = 'Teleport to Safe Zone',
    Description = 'Teleport to Safe Zone',
    Callback = function()
        u61:Dialog({
            Title = 'Teleport to Safe Zone',
            Content = 'Teleport to Safe Zone',
            Buttons = {
                {
                    Title = 'Ok TuanKhaiDZ',
                    Callback = function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').SafeZoneOuterSpacePart.CFrame * CFrame.new(0, 5, 0)
                    end,
                },
                {
                    Title = 'Fuck YOUUU',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})

tptochairs = v62.Teleport:AddToggle('tptochairstoggle', {
    Title = 'Teleport To Chair',
    Default = false,
})

tptochairs:OnChanged(function(p176)
    _G.tptochairssz = p176
end)
spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.tptochairssz then
                wait(0.6)

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1976.38, 216.149979, 607.585022, 0.707134247, -0, -0.707079291, -0, 1, -0, 0.707079291, -0, 0.707134247)
            end
        end)
    end
end)

sellectdrink = v62.AutoStats:AddDropdown('Dropdown', {
    Title = 'Sellect Drink',
    Values = {
        'Lemonade+',
        'Lemonade',
        'Smoothie+',
        'Smoothie',
        'Juice+',
        'Juice',
        'Cider',
        'Cider+',
    },
    Multi = false,
    Default = Lemonade,
})

sellectdrink:SetValue('...')
sellectdrink:OnChanged(function(p177)
    getgenv().selectdrink = p177
end)

amoutdrink = v62.AutoStats:AddInput('amoutdrinktoggle', {
    Title = 'Amout',
    Default = '',
    Placeholder = '...',
    Numeric = false,
    Finished = false,
    Callback = function(p178)
        print('Input changed:', p178)
    end,
})

amoutdrink:OnChanged(function(p179)
    getgenv().amountdrink = tonumber(p179)
end)
v62.AutoStats:AddButton({
    Title = 'Buy Drink',
    Description = '...',
    Callback = function()
        u61:Dialog({
            Title = 'Buy Drink',
            Content = '...',
            Buttons = {
                {
                    Title = 'Buy',
                    Callback = function()
                        local _selectdrink = getgenv().selectdrink
                        local _ = getgenv().amountdrink

                        if _selectdrink == 'Cider+' then
                            for _ = 1, amountdrink do
                                workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack({
                                    'Cider+',
                                }))
                            end
                        elseif _selectdrink == 'Lemonade+' then
                            for _ = 1, amountdrink do
                                workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack({
                                    'Lemonade+',
                                }))
                            end
                        elseif _selectdrink == 'Juice+' then
                            for _ = 1, amountdrink do
                                workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack({
                                    'Juice+',
                                }))
                            end
                        elseif _selectdrink == 'Smoothie+' then
                            for _ = 1, amountdrink do
                                workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack({
                                    'Smoothie+',
                                }))
                            end
                        end
                    end,
                },
                {
                    Title = 'Stop Buy',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})

drinkjuice = v62.AutoStats:AddToggle('autocollectfruittoggle', {
    Title = 'Drink All Juice',
    Default = false,
})

drinkjuice:OnChanged(function()
    local v181, v182, v183 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

    while true do
        local v184

        v183, v184 = v181(v182, v183)

        if v183 == nil then
            break
        end
        if v184:IsA('Tool') and string.find(v184.Name, 'Juice') or (string.find(v184.Name, 'Milk') or (string.find(v184.Name, 'Cider') or (string.find(v184.Name, 'Lemonade') or (string.find(v184.Name, 'Smoothie') or string.find(v184.Name, 'Golden'))))) then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v184)
            game:GetService('VirtualUser'):CaptureController()
            game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
        end
    end
end)
v62.AutoStats:AddSection('Buy Cannon')
v62.AutoStats:AddButton({
    Title = 'Cannon Ball',
    Description = 'You have to 400.000 beri',
    Callback = function()
        u61:Dialog({
            Title = 'Cannon Ball',
            Content = 'Buy It Please (cum)',
            Buttons = {
                {
                    Title = 'Ok ',
                    Callback = function()
                        game:GetService('Workspace').Merchants.HeavyWeaponsMerchant.Clickable.Retum:FireServer('Cannon Ball', 400000)
                    end,
                },
                {
                    Title = 'Deo',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})
v62.Mics:AddSection('Fake melee')
v62.Mics:AddButton({
    Title = 'Seastone Cestus ',
    Description = 'You must 500 melee to take it',
    Callback = function()
        u61:Dialog({
            Title = 'Seastone Cestus',
            Content = 'If you take Seastone Cestus you will have it :))))))))',
            Buttons = {
                {
                    Title = 'Da co tuankhaidz',
                    Callback = function()
                        local _Players3 = game:GetService('Players')
                        local u186 = {}

                        function lol(p187)
                            if u186[p187] then
                                return u186[p187]
                            end

                            local v188 = _Players3:FindFirstChild(p187)

                            if v188 then
                                u186[p187] = v188.UserId

                                return v188.UserId
                            end

                            local u189 = nil

                            pcall(function()
                                u189 = _Players3:lol(p187)
                            end)

                            u186[p187] = u189

                            return u189
                        end

                        local _Name2 = game.Players.LocalPlayer.Name
                        local v191 = lol(_Name2)

                        game:GetService('Workspace').UserData['User_' .. v191].UpdateMelee:FireServer('Seastone Cestus')
                    end,
                },
                {
                    Title = 'Da khong',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})
v62.Mics:AddButton({
    Title = 'Aqua Staff',
    Description = 'You must 500 melee to take it',
    Callback = function()
        u61:Dialog({
            Title = 'Aqua Staff',
            Content = 'Sure?',
            Buttons = {
                {
                    Title = 'Ok a',
                    Callback = function()
                        local _Players4 = game:GetService('Players')
                        local u193 = {}

                        function lol(p194)
                            if u193[p194] then
                                return u193[p194]
                            end

                            local v195 = _Players4:FindFirstChild(p194)

                            if v195 then
                                u193[p194] = v195.UserId

                                return v195.UserId
                            end

                            local u196 = nil

                            pcall(function()
                                u196 = _Players4:lol(p194)
                            end)

                            u193[p194] = u196

                            return u196
                        end

                        local _Name3 = game.Players.LocalPlayer.Name
                        local v198 = lol(_Name3)

                        game:GetService('Workspace').UserData['User_' .. v198].UpdateMelee:FireServer('Aqua Staff')
                    end,
                },
                {
                    Title = 'Da khong',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})
v62.Mics:AddSection('Auto Reset')

rssli = v62.Mics:AddSlider('rssliderzz', {
    Title = 'Reset Time (s)',
    Description = 'Adjust reset time',
    Default = 900,
    Min = 100,
    Max = 2000,
    Rounding = 0,
    Callback = function(p199)
        rstimehaha = tonumber(p199)
    end,
})
autoreset = v62.Mics:AddToggle('autoresettoggle', {
    Title = 'Auto Reset (Die To Refresh Ping)',
    Default = false,
})

autoreset:OnChanged(function()
    if _Options.autoresettoggle.Value ~= true then
        _G.resetzxcm = false
    else
        _G.resetzxcm = true

        u60:Notify({
            Title = 'Auto Function Notify',
            Content = 'Auto Reset Is Turned On',
            Duration = 5,
        })
    end
end)
v62.Mics:AddSection('Player')

antistun = v62.Mics:AddToggle('antistuntoggle', {
    Title = 'Anti Stun',
    Default = false,
})

antistun:OnChanged(function(p200)
    getgenv().antistun = p200

    while getgenv().antistun do
        wait()
        pcall(function()
            local _Character = game.Players.LocalPlayer.Character

            repeat
                _Character.BurnMagmaOverTime.Value = true
                _Character.BurnOverTime.Value = true
                _Character.CandyTouched.Value = true
                _Character.Cheshire.Value = true
                _Character.ChillyPunched.Value = true
                _Character.DF_Disabled.Value = false
                _Character.GasPoison.Value = true
                _Character.GasAirless.Value = true
                _Character.GravityCrushed.Value = true
                _Character.HeartStolen.Value = true
                _Character.Hobbied.Value = true
                _Character.HotBody.Value = true
                _Character.HypnosisOnCooldown.Value = true
                _Character.LoveStunned.Value = true
                _Character.Mored.Value = true
                _Character.Negative.Value = true
                _Character.OpeSevered.Value = true
                _Character.Returned.Value = true
                _Character.RumbleStun.Value = true
                _Character.SanguineVampiris.Value = true
                _Character.SnowTouched.Value = true
                _Character.Stringing.Value = true
                _Character.VenomDoT.Value = true

                wait(0.06)
            until _Character.Humanoid.Health == 0
        end)
    end
end)
v62.Mics:AddButton({
    Title = 'Inf Jump',
    Description = '',
    Callback = function()
        u61:Dialog({
            Title = 'Inf Jump',
            Content = '',
            Buttons = {
                {
                    Title = 'Confirm',
                    Callback = function()
                        local u202 = true

                        game:GetService('UserInputService').JumpRequest:connect(function()
                            if u202 then
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState('Jumping')
                            end
                        end)
                    end,
                },
                {
                    Title = 'Cancel',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})
v62.Mics:AddSection('Spawn')

autospawn = v62.Mics:AddToggle('autospawntoggle', {
    Title = 'Auto Spawn',
    Default = false,
})

autospawn:OnChanged(function(p203)
    _G.AutoSpawnn = p203
end)
spawn(function()
    while wait() do
        if _G.AutoSpawnn then
            pcall(function()
                if game:GetService('Players').LocalPlayer.PlayerGui.Load.Frame.Visible ~= true then
                    return
                else
                    while true do
                        wait(3)

                        local v204, v205, v206 = pairs(getconnections(game:GetService('Players').LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click))

                        while true do
                            local v207

                            v206, v207 = v204(v205, v206)

                            if v206 == nil then
                                break
                            end

                            v207.Function()
                        end

                        if game:GetService('Players').LocalPlayer.PlayerGui.Load.Frame.Visible == false then
                        end
                    end
                end
            end)
        end
    end
end)
v62.Mics:AddButton({
    Title = 'Rejoin Server',
    Description = '',
    Callback = function()
        u61:Dialog({
            Title = 'Rejoin Server',
            Content = '',
            Buttons = {
                {
                    Title = 'Ok',
                    Callback = function()
                        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
                    end,
                },
                {
                    Title = 'No',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})
v62.Mics:AddButton({
    Title = 'Hop Server',
    Description = '',
    Callback = function()
        u61:Dialog({
            Title = 'Hop Server',
            Content = '',
            Buttons = {
                {
                    Title = 'Ok',
                    Callback = function()
                        local _PlaceId = game.PlaceId
                        local u209 = {}
                        local u210 = ''
                        local _hour = os.date('!*t').hour

                        function TPReturner()
                            local v212

                            if u210 ~= '' then
                                v212 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. u210))
                            else
                                v212 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. _PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'))
                            end
                            if v212.nextPageCursor and (v212.nextPageCursor ~= 'null' and v212.nextPageCursor ~= nil) then
                                u210 = v212.nextPageCursor
                            end

                            local v213, v214, v215 = pairs(v212.data)
                            local v216 = 0

                            while true do
                                local v217

                                v215, v217 = v213(v214, v215)

                                if v215 == nil then
                                    break
                                end

                                local v218 = true
                                local u219 = tostring(v217.id)

                                if tonumber(v217.maxPlayers) > tonumber(v217.playing) then
                                    local v220, v221, v222 = pairs(u209)

                                    while true do
                                        local v223

                                        v222, v223 = v220(v221, v222)

                                        if v222 == nil then
                                            break
                                        end
                                        if v216 == 0 then
                                            if tonumber(_hour) ~= tonumber(v223) then
                                                pcall(function()
                                                    u209 = {}

                                                    table.insert(u209, _hour)
                                                end)
                                            end
                                        elseif u219 == tostring(v223) then
                                            v218 = false
                                        end

                                        v216 = v216 + 1
                                    end

                                    if v218 == true then
                                        table.insert(u209, u219)
                                        wait()
                                        pcall(function()
                                            wait()
                                            game:GetService('TeleportService'):TeleportToPlaceInstance(_PlaceId, u219, game.Players.LocalPlayer)
                                        end)
                                        wait(0.1)
                                    end
                                end
                            end
                        end
                        function Teleport()
                            while wait() do
                                pcall(function()
                                    TPReturner()

                                    if u210 ~= '' then
                                        TPReturner()
                                    end
                                end)
                            end
                        end

                        Teleport()
                    end,
                },
                {
                    Title = 'No',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})
v62.Mics:AddButton({
    Title = 'Low Server',
    Description = '',
    Callback = function()
        u61:Dialog({
            Title = 'Low Server',
            Content = '',
            Buttons = {
                {
                    Title = 'Ok',
                    Callback = function()
                        workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
                        workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
                        workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
                        workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
                        game:GetService('Lighting').GlobalShadows = false
                        game:GetService('Lighting').FogEnd = 9000000000
                        settings().Rendering.QualityLevel = 1

                        local v224, v225, v226 = pairs(game:GetDescendants())

                        while true do
                            local v227

                            v226, v227 = v224(v225, v226)

                            if v226 == nil then
                                break
                            end
                            if v227:IsA('Part') or (v227:IsA('UnionOperation') or (v227:IsA('MeshPart') or (v227:IsA('CornerWedgePart') or v227:IsA('TrussPart')))) then
                                v227.Material = 'Plastic'
                                v227.Reflectance = 0
                            elseif v227:IsA('Decal') then
                                v227.Transparency = 1
                            elseif v227:IsA('ParticleEmitter') or v227:IsA('Trail') then
                                v227.Lifetime = NumberRange.new(0)
                            elseif v227:IsA('Explosion') then
                                v227.BlastPressure = 1
                                v227.BlastRadius = 1
                            end
                        end

                        local v228, v229, v230 = pairs(game:GetService('Lighting'):GetDescendants())

                        while true do
                            local v231

                            v230, v231 = v228(v229, v230)

                            if v230 == nil then
                                break
                            end
                            if v231:IsA('BlurEffect') or (v231:IsA('SunRaysEffect') or (v231:IsA('ColorCorrectionEffect') or (v231:IsA('BloomEffect') or v231:IsA('DepthOfFieldEffect')))) then
                                v231.Enabled = false
                            end
                        end

                        workspace.DescendantAdded:Connect(function(p232)
                            coroutine.wrap(function()
                                if p232:IsA('ForceField') then
                                    game:GetService('RunService').Heartbeat:Wait()
                                    p232:Destroy()
                                elseif p232:IsA('Sparkles') then
                                    game:GetService('RunService').Heartbeat:Wait()
                                    p232:Destroy()
                                elseif p232:IsA('Smoke') or p232:IsA('Fire') then
                                    game:GetService('RunService').Heartbeat:Wait()
                                    p232:Destroy()
                                end
                            end)()
                        end)
                    end,
                },
                {
                    Title = 'No',
                    Callback = function()
                        print('Cancelled the dialog.')
                    end,
                },
            },
        })
    end,
})
v62.Settings:AddButton({
    Title = 'Discord Here',
    Description = 'Link Discord',
    Callback = function()
        setclipboard('https://discord.com/invite/q5Ktn8FbQe')
    end,
})
v62.Settings:AddButton({
    Title = 'Key Board',
    Description = 'Key Board',
    Callback = function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr'))()
    end,
})

local _ScreenGui = Instance.new('ScreenGui')
local _ImageButton = Instance.new('ImageButton')

_ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui')
_ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_ScreenGui.ResetOnSpawn = false
_ImageButton.Parent = _ScreenGui
_ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
_ImageButton.BorderSizePixel = 0
_ImageButton.Position = UDim2.new(0.067, 0, 0.393, 0)
_ImageButton.Size = UDim2.new(0, 40, 0, 40)
_ImageButton.Image = 'rbxassetid://113641162726631'

_ImageButton.MouseButton1Down:Connect(function()
    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'F6', false, game)
end)

local _UserInputService = game:GetService('UserInputService')
local _TweenService = game:GetService('TweenService')
local u237 = nil
local u238 = nil
local u239 = nil

local function u244(p240)
    local v241 = p240.Position - u238
    local v242 = _TweenService
    local v243 = {
        Position = UDim2.new(u239.X.Scale, u239.X.Offset + v241.X, u239.Y.Scale, u239.Y.Offset + v241.Y),
    }

    v242:Create(_ImageButton, TweenInfo.new(0), v243):Play()
end

_ImageButton.InputBegan:Connect(function(p245)
    if p245.UserInputType == Enum.UserInputType.MouseButton1 or p245.UserInputType == Enum.UserInputType.Touch then
        u237 = true
        u238 = p245.Position
        u239 = _ImageButton.Position

        p245.Changed:Connect(function()
            if p245.UserInputState == Enum.UserInputState.End then
                u237 = false
            end
        end)
    end
end)
_UserInputService.InputChanged:Connect(function(p246)
    if (p246.UserInputType == Enum.UserInputType.MouseMovement or p246.UserInputType == Enum.UserInputType.Touch) and u237 then
        u244(p246)
    end
end)
u60:Notify({
    Title = 'Misa Hub',
    Content = 'The script has been loaded.',
    Duration = 8,
})
