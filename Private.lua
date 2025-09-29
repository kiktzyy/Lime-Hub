local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "LimeHub",
    Icon = "rbxassetid://88791594299566",
    Author = (premium and "Premium" or "Fish It") .. " | " .. version,
    Folder = "LimeHub",
    Size = UDim2.fromOffset(380, 260),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    Background = "",
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
        end,
    },
})

local globalsToReset = {
    "DelayWebhook",
    "AutoFavorite",
    "OneClickMode",
    "AutoFish",
    "TeleportEvent",
    "WebhookURL",
    "AutoFav",
    "AutoSell",
    "Radar",
    "Oxygen",
    "TargetEnchant",
    "AutoEnchant",
    "WaterPlatformEnabled",
    "InfJumpEnabled",
    "InputWalkSpeed",
    "DetectNewFishActive",
    "WebhookRarities",
    "selectedEvent",
    "selectedLocation",
    "AutoSellDelay",
    "Wurl"
}

local HttpService = game:GetService("HttpService")
local folderPath = "LimeHub"
makefolder(folderPath)
local configFile = folderPath .. "/Fish It.json"

if not _G.Settings then
    _G.Settings = {}
end

if _G.Settings.AutoSave == nil then
    _G.Settings.AutoSave = true
end

local function SaveConfig()
    local data = {}
    for _, key in ipairs(globalsToReset) do
        data[key] = _G[key]
    end
    data["AutoSave"] = _G.Settings.AutoSave
    local success, result = pcall(function()
        return HttpService:JSONEncode(data)
    end)
    if success then
        writefile(configFile, result)
    end
end

local function LoadConfig()
    if isfile(configFile) then
        local data = readfile(configFile)
        local success, result = pcall(function()
            return HttpService:JSONDecode(data)
        end)
        if success and type(result) == "table" then
            for k, v in pairs(result) do
                if k == "AutoSave" then
                    _G.Settings.AutoSave = v
                else
                    _G[k] = v
                end
            end
        end
    else
        SaveConfig()
    end
end

LoadConfig()

local Players = game:GetService("Players")
local RepStorage = game:GetService("ReplicatedStorage")
local player = game.Players.LocalPlayer

local Discord = Window:Tab({ Title = "Discord", Icon = "badge-alert" })
local Main = Window:Tab({ Title = "Main", Icon = "landmark" })
local Shop = Window:Tab({ Title = "Shop", Icon = "store" })

Discord:Section({ Title = "Join Discord Server" })
Discord:Button({
    Title = "Discord Invite",
    Desc = "Copy Invite Link",
    Locked = false,
    Callback = function()
        setclipboard("https://discord.gg/qZuB7sYdYB")
        WindUI:Notify({
            Title = "LimeHub Notify",
            Icon = "rbxassetid://88791594299566",
            Content = "✅ Link Copied!",
            Duration = 4
        })
    end
})

Main:Section({ Title = "Fishing" })
Main:Button({
    Title = "Reset Character",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.Health = 0
        end
    end
})

Main:Toggle({
    Title = "Auto Fishing",
    Value = _G.AutoFish,
    Callback = function(value)
        _G.AutoFish = value
        SaveConfig()
        
        if not value then
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.2.0"):WaitForChild("net"):WaitForChild("RF/CancelFishingInputs"):InvokeServer()
            end)
        end
    end
})

spawn(function()
    while true do
        task.wait(0.1)
        if _G.AutoFish then
            local char = player.Character or player.CharacterAdded:Wait()

            repeat
                task.wait(0.1)

                if char:FindFirstChild("!!!FISHING_VIEW_MODEL!!!") then
                    pcall(function()
                        RepStorage.Packages._Index["sleitnick_net@0.2.0"].net["RE/EquipToolFromHotbar"]:FireServer(1)
                    end)
                end

                task.wait(0.1)

                local cosmeticFolder = workspace:FindFirstChild("CosmeticFolder")
                if cosmeticFolder and not cosmeticFolder:FindFirstChild(tostring(player.UserId)) then
                    pcall(function()
                        RepStorage.Packages._Index["sleitnick_net@0.2.0"].net["RF/ChargeFishingRod"]:InvokeServer(1756818911.281488)
                    end)
                    task.wait(0.2)
                    pcall(function()
                        RepStorage.Packages._Index["sleitnick_net@0.2.0"].net["RF/RequestFishingMinigameStarted"]:InvokeServer(-1.25, 1)
                    end)
                end

            until not _G.AutoFish
        end
    end
end)

spawn(function()
   while wait(0.1) do
   if _G.AutoFish then
   repeat
   task.wait(0.2)
       pcall(function()
       game:GetService("ReplicatedStorage").Packages._Index["sleitnick_net@0.2.0"].net["RE/FishingCompleted"]:FireServer()
       end)
       until not _G.AutoFish
     end
   end
end)

local lastfish = tick()
local fishingController = require(game:GetService("ReplicatedStorage").Controllers.FishingController)
local originalFishCaught = fishingController.FishCaught

fishingController.FishCaught = function(...)
    if _G.AutoFish then
        lastfish = tick()
    end
    return originalFishCaught(...)
end

local player = game.Players.LocalPlayer
local lastCFrame

spawn(function()
    while true do
        task.wait(1)
        if _G.AutoFish then
            local char = workspace:FindFirstChild("Characters"):FindFirstChild(player.Name)
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            local hrp = char and char:FindFirstChild("HumanoidRootPart")

            if hum and hrp and tick() - lastfish > 15 then
                lastCFrame = hrp.CFrame 

                _G.AutoFish = false
                hum.Health = 0 
                task.wait(5)

                char = workspace:FindFirstChild("Characters"):FindFirstChild(player.Name)
                hrp = char and char:FindFirstChild("HumanoidRootPart")
                if char and hrp and lastCFrame then
                    hrp.CFrame = lastCFrame
                    task.wait(0.5)
                    _G.AutoFish = true
                end
                lastfish = tick()
            end
        else
            lastfish = tick()
        end
    end
end)

Main:Section({ Title = "Event" })
Main:Paragraph({
    Title = "Info",
    Desc = "Location is for farming when event is unavailable. Event always has priority - auto teleports when available."
})
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer

local eventsList = {
    "Ghost Shark Hunt",
    "Megalodon Hunt",
    "Shark Hunt", 
    "Sparkling Cove",
    "Worm Hunt"
}

local locationsList = {
    "Fisherman Island",
    "Crafter Island",
    "Weather Machine",
    "Loot Isle",
    "Esoteric Deepths",
    "Altar",
    "Coral Reefs",
    "Kohana",
    "Kohana Vulcano",
    "Tropical Grove",
    "Deep Sea",
    "Treasure Room"
}

local locationCFrames = {
    ["Fisherman Island"] = CFrame.new(-110.302589, 3.2620542, 2808.38794, -0.95936352, -6.85344261e-08, -0.282173127, -5.18341032e-08, 1, -6.66494415e-08, 0.282173127, -4.93148526e-08, -0.95936352),
    ["Crafter Island"] = CFrame.new(978.599487, 47.4545288, 5086.31396, -0.590745628, -8.98475605e-09, 0.806857884, 5.53998269e-08, 1, 5.16967908e-08, -0.806857884, 7.52394413e-08, -0.590745628),
    ["Weather Machine"] = CFrame.new(-1517.14014, 2.87499952, 1914.43445, -0.992884457, 1.58579851e-08, -0.119081579, 1.20907506e-08, 1, 3.23582015e-08, 0.119081579, 3.06881702e-08, -0.992884457),
    ["Loot Isle"] = CFrame.new(-3849.32812, 62.4258347, -1438.07324, -0.597851217, -1.94460341e-08, -0.801607072, 1.61765144e-08, 1, -3.63235095e-08, 0.801607072, -3.46832643e-08, -0.597851217),
    ["Esoteric Deepths"] = CFrame.new(1983.026, 2.3588388, 1400.71692, -0.127730578, 4.17303037e-09, 0.991808891, 5.1634423e-08, 1, 2.44226972e-09, -0.991808891, 5.15234326e-08, -0.127730578),
    ["Altar"] = CFrame.new(3264.05518, -1301.53027, 1376.69006, 0.811563194, 8.69882566e-09, -0.584264636, -4.91663563e-08, 1, -5.34052162e-08, 0.584264636, 7.20678699e-08, 0.811563194),
    ["Coral Reefs"] = CFrame.new(-3134.85205, 5.00295353, 2136.01367, 0.987203121, 4.1917203e-09, 0.159467891, -1.0778753e-08, 1, 4.0441364e-08, -0.159467891, -4.16427035e-08, 0.987203121),
    ["Kohana"] = CFrame.new(-653.100403, 2.82505941, 550.10022, -0.0875285715, 1.074946e-07, -0.996161997, -5.14608587e-08, 1, 1.12430406e-07, 0.996161997, 6.11042239e-08, -0.0875285715),
    ["Kohana Vulcano"] = CFrame.new(-591.781494, 40.6086769, 149.605621, -0.690379977, 1.43661989e-08, -0.723446965, -2.95755296e-08, 1, 4.8081688e-08, 0.723446965, 5.45909629e-08, -0.690379977),
    ["Tropical Grove"] = CFrame.new(-2101.65845, 6.09673119, 3652.63843, -0.53145951, -3.64524588e-08, 0.847083688, 5.37013722e-09, 1, 4.64021106e-08, -0.847083688, 2.9209799e-08, -0.53145951),
    ["Deep Sea"] = CFrame.new(-3741.23804, -135.074417, -1008.8219, -0.983854651, 5.95717005e-08, -0.178969383, 6.57485231e-08, 1, -2.85819155e-08, 0.178969383, -3.98874249e-08, -0.983854651),
    ["Treasure Room"] = CFrame.new(-3596.34106, -280.743835, -1646.00781, 0.986422956, 8.37402396e-08, -0.164224595, -8.14241474e-08, 1, 2.08348148e-08, 0.164224595, -7.18009252e-09, 0.986422956)
}

local eventModel = nil
local connections = {}
local isTeleporting = false
local lastEventState = nil

if _G.selectedEvent == nil then
    _G.selectedEvent = eventsList[1]
end
if _G.selectedLocation == nil then
    _G.selectedLocation = locationsList[1]
end

local function getCharacterPosition()
    local character = player.Character
    if not character then return nil end
    
    local hrp = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChildWhichIsA("BasePart")
    if not hrp then return nil end
    
    return hrp.Position
end

local function getDistanceFromEvent()
    if not eventModel then return math.huge end
    
    local charPos = getCharacterPosition()
    if not charPos then return math.huge end
    
    local eventPos = eventModel:GetPivot().Position
    return (charPos - eventPos).Magnitude
end

local function getDistanceFromLocation()
    local targetCFrame = locationCFrames[_G.selectedLocation]
    if not targetCFrame then return math.huge end
    
    local charPos = getCharacterPosition()
    if not charPos then return math.huge end
    
    local locationPos = targetCFrame.Position
    return (charPos - locationPos).Magnitude
end

local function findEventModel(eventName)
    local menuRings = workspace:FindFirstChild("!!! MENU RINGS")
    if not menuRings or not menuRings:IsA("Model") then
        return nil
    end
    
    local function findAllPropsModels(parent)
        local propsModels = {}
        for _, child in ipairs(parent:GetChildren()) do
            if child.Name == "Props" and child:IsA("Model") then
                table.insert(propsModels, child)
            end
            if child:IsA("Model") or child:IsA("Folder") then
                local childProps = findAllPropsModels(child)
                for _, prop in ipairs(childProps) do
                    table.insert(propsModels, prop)
                end
            end
        end
        return propsModels
    end
    
    local propsModels = findAllPropsModels(menuRings)
    
    for _, propsModel in ipairs(propsModels) do
        local foundModel = propsModel:FindFirstChild(eventName)
        if foundModel and foundModel:IsA("Model") then
            return foundModel
        end
    end
    
    return nil
end

local function teleportToLocation()
    if isTeleporting then return false end
    isTeleporting = true
    
    local targetCFrame = locationCFrames[_G.selectedLocation]
    if not targetCFrame then
        isTeleporting = false
        return false
    end
    
    local character = player.Character
    if not character then
        character = player.CharacterAdded:Wait()
    end
    
    local hrp = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChildWhichIsA("BasePart")
    if not hrp then
        isTeleporting = false
        return false
    end
    
    hrp.CFrame = targetCFrame * CFrame.new(0, 5, 0)
    isTeleporting = false
    return true
end

local eventPlatform = nil

local function teleportToEvent()
    if isTeleporting then return false end 
    isTeleporting = true
    
    if not eventModel or not eventModel.Parent then
        isTeleporting = false
        return false
    end
    
    local targetCFrame = eventModel:GetPivot()
    
    local character = player.Character
    if not character then
        character = player.CharacterAdded:Wait()
    end
    
    local hrp = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChildWhichIsA("BasePart")
    if not hrp then
        isTeleporting = false
        return false
    end
    
    if eventPlatform then
        eventPlatform:Destroy()
        eventPlatform = nil
    end
    
    eventPlatform = Instance.new("Part")
    eventPlatform.Name = "EventPlatform"
    eventPlatform.Size = Vector3.new(10, 1, 10)
    eventPlatform.Position = Vector3.new(targetCFrame.Position.X, targetCFrame.Position.Y + 5, targetCFrame.Position.Z)
    eventPlatform.Transparency = 1
    eventPlatform.Anchored = true
    eventPlatform.CanCollide = true
    eventPlatform.Parent = workspace
    
    hrp.CFrame = eventPlatform.CFrame * CFrame.new(0, 3, 0)
    
    isTeleporting = false
    return true
end

local function connectToEventModel()
    for _, connection in ipairs(connections) do
        connection:Disconnect()
    end
    table.clear(connections)
    
    eventModel = findEventModel(_G.selectedEvent)
    
    if eventModel then
        return true
    else
        local function setupPropsListeners(props)
            local function onChildAdded(child)
                if child.Name == _G.selectedEvent and child:IsA("Model") then
                    eventModel = child
                end
            end
            
            for _, child in ipairs(props:GetChildren()) do
                onChildAdded(child)
            end
            
            table.insert(connections, props.ChildAdded:Connect(onChildAdded))
        end
        
        local menuRings = workspace:FindFirstChild("!!! MENU RINGS")
        if menuRings and menuRings:IsA("Model") then
            local propsModel = menuRings:FindFirstChild("Props")
            if propsModel and propsModel:IsA("Model") then
                setupPropsListeners(propsModel)
                return false
            end
        end
        
        table.insert(connections, workspace.ChildAdded:Connect(function(child)
            if child.Name == "!!! MENU RINGS" and child:IsA("Model") then
                local propsModel = child:FindFirstChild("Props")
                if propsModel and propsModel:IsA("Model") then
                    setupPropsListeners(propsModel)
                    
                    local foundModel = propsModel:FindFirstChild(_G.selectedEvent)
                    if foundModel and foundModel:IsA("Model") then
                        eventModel = foundModel
                    end
                end
            end
        end))
    end
    
    return false 
end

Main:Dropdown({
    Title = "Select Event",
    Values = eventsList,
    Value = "",
    Callback = function(option) 
        _G.selectedEvent = option
        SaveConfig()
        lastEventState = nil
    end
})

Main:Dropdown({
    Title = "Select Location",
    Values = locationsList,
    Value = "",
    Callback = function(option) 
        _G.selectedLocation = option
        SaveConfig()
    end
})

Main:Toggle({
    Title = "Auto Fish at Active Event/Location",
    Value = _G.TeleportEvent,
    Callback = function(value)
        _G.TeleportEvent = value
        SaveConfig()
        lastEventState = nil
    end
})

spawn(function()
    while wait(1) do
        pcall(function()
            if _G.TeleportEvent then
                connectToEventModel()
                
                local currentEventState = (eventModel ~= nil)
                local eventStateChanged = (currentEventState ~= lastEventState)
                
                if eventStateChanged or lastEventState == nil then
                    if eventModel then
                        local distance = getDistanceFromEvent()
                        if distance > 50 then
                            teleportToEvent()
                        end
                        _G.AutoFish = true
                    else
                        local distance = getDistanceFromLocation()
                        if distance > 50 then
                            teleportToLocation()
                        end
                        _G.AutoFish = true
                    end
                    lastEventState = currentEventState
                end
            else
                for _, connection in ipairs(connections) do
                    connection:Disconnect()
                end
                table.clear(connections)
                lastEventState = nil
            end
        end)
    end
end)

Main:Section({ Title = "Favorite & Sell" })
Main:Dropdown({
    Title = "Select Rarity",
    Values = {"Common", "Uncommon", "Rare", "Epic", "Legend", "Mythic", "Secret"},
    Value = _G.AutoFavorite or {},
    Multi = true,
    AllowNone = true,
    Callback = function(selected)
        _G.AutoFavorite = selected
        SaveConfig()
    end
})

function autoFavoriteByTier()
    local inventory = dataStore:Get("Inventory")
    if not inventory then return end
    for _, category in pairs(inventory) do
        if type(category) == "table" then
            for _, item in ipairs(category) do
                if type(item) == "table" and item.Id then
                    local itemData = ItemUtility:GetItemData(item.Id)
                    if itemData and itemData.Data then
                        local tier = itemData.Data.Tier or 1
                        local rarity = "Unknown"
                        if tier == 1 then rarity = "Common"
                        elseif tier == 2 then rarity = "Uncommon"
                        elseif tier == 3 then rarity = "Rare"
                        elseif tier == 4 then rarity = "Epic"
                        elseif tier == 5 then rarity = "Legend"
                        elseif tier == 6 then rarity = "Mythic"
                        elseif tier == 7 then rarity = "Secret" end

                        if table.find(_G.AutoFavorite, rarity) and not item.Favorited then
                            pcall(function()
                                FavoriteItem:FireServer(item.UUID or item.Id)
                            end)
                            task.wait(0.2)
                        end
                    end
                end
            end
        end
    end
end

spawn(function()
    while true do
        task.wait(0.2)
        if _G.AutoFav and #_G.AutoFavorite > 0 then
            autoFavoriteByTier()
        end
    end
end)

Main:Toggle({
    Title = "Auto Favorite",
    Value = _G.AutoFav,
    Callback = function(state)
        _G.AutoFav = state
        SaveConfig()      
    end
})

Main:Slider({
    Title = "Sell Delay",
    Desc = "/Seconds",
    Step = 1,
    Value = {
        Min = 5,
        Max = 100,
        Default = 10,
    },
    Callback = function(value)
        _G.AutoSellDelay = value
        SaveConfig()
    end
})

Main:Toggle({
    Title = "Auto Sell",
    Value = _G.AutoSell,
    Callback = function(value)
        _G.AutoSell = value
        SaveConfig()
    end
})

spawn(function()
    while wait(_G.AutoSellDelay) do
        pcall(function()
            if _G.AutoSell then
                pcall(function()         
                    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.2.0"):WaitForChild("net"):WaitForChild("RF/SellAllItems"):InvokeServer()
                end)
            end
        end)
    end
end)

Shop:Section({ Title = "Bait" })
local Net = RepStorage.Packages._Index["sleitnick_net@0.2.0"].net
local Baits = {
    ["Topwater Bait"] = 10, 
    ["Luck Bait"] = 2,        
    ["Midnight Bait"] = 3,     
    ["Nature Bait"] = 4,      
    ["Chroma Bait"] = 5,       
    ["Dark Matter Bait"] = 6, 
    ["Corrupt Bait"] = 15,   
    ["Aether Bait"] = 16,     
}

Shop:Dropdown({
    Title = "Select Bait",
    Values = { "Topwater Bait", "Luck Bait", "Midnight Bait", "Nature Bait", "Chroma Bait", "Dark Matter Bait", "Corrupt Bait", "Aether Bait" },
    Value = "Topwater Bait",
    Callback = function(option)
        SelectedBait = Baits[option]
    end
})

Shop:Button({
    Title = "Buy Selected Bait", 
    Desc = "Purchase + Equip",
    Locked = false,
    Callback = function()
        if SelectedBait then
            pcall(function()
                local hasBait = false
                local inventory = dataStore:Get("Inventory")
                if inventory and inventory.Baits then
                    for _, bait in ipairs(inventory.Baits) do
                        if bait.Id == SelectedBait then
                            hasBait = true
                            break
                        end
                    end
                end
                
                if not hasBait then
                    Net["RF/PurchaseBait"]:InvokeServer(SelectedBait)
                    task.wait(0.5)
                end
                
                Net["RE/EquipBait"]:FireServer(SelectedBait)
            end)
        end
    end
})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Net = require(ReplicatedStorage.Packages.Net)
local Client = require(ReplicatedStorage.Packages.Replion).Client

local dataStore = Client:WaitReplion("Data")

Shop:Section({ Title = "Rod" })
local FishingRods = {
    ["Luck Rod"] = {id = 79},
    ["Carbon Rod"] = {id = 76},
    ["Grass Rod"] = {id = 85},
    ["Demascus Rod"] = {id = 77},
    ["Ice Rod"] = {id = 78},
    ["Lucky Rod"] = {id = 4},
    ["Midnight Rod"] = {id = 80},
    ["Steam Punk"] = {id = 6},
    ["Chrome Rod"] = {id = 7},
    ["Astral Rod"] = {id = 5},
    ["Ares Rod"] = {id = 126},
    ["Angler Rod"] = {id = 168},
}

local RodNames = {}
for name, _ in pairs(FishingRods) do
    table.insert(RodNames, name)
end

local SelectedRod = nil

Shop:Dropdown({
    Title = "Select Fishing Rod",
    Values = RodNames,
    Default = RodNames[1],
    Callback = function(option)
        SelectedRod = FishingRods[option]
    end
})

Shop:Button({
    Title = "Buy Selected Rod",
    Callback = function()
        if SelectedRod then
            local args = {SelectedRod.id}
            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_net@0.2.0"):WaitForChild("net"):WaitForChild("RF/PurchaseFishingRod"):InvokeServer(unpack(args))
        end
    end
})

Main:Section({ Title = "Webhook Notifer" })
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Settings = { WebhookURL = _G.WebhookURL, DetectNewFishActive = _G.DetectNewFishActive, WebhookRarities = _G.WebhookRarities, ScanInterval = 3 }
local req = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local ItemUtility, Replion, DataService
local fishDB = {}
local rarityList = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "SECRET"}
local rarityToEmoji = { Common = "⚪", Uncommon = "🟢", Rare = "🔵", Epic = "🟣", Legendary = "🟠", Mythic = "🔴", SECRET = "✨" }
local tierToRarity = { [1] = "Common", [2] = "Uncommon", [3] = "Rare", [4] = "Epic", [5] = "Legendary", [6] = "Mythic", [7] = "SECRET" }
local knownFishUUIDs = {}

pcall(function()
    ItemUtility = require(ReplicatedStorage.Shared.ItemUtility)
    Replion = require(ReplicatedStorage.Packages.Replion)
    DataService = Replion.Client:WaitReplion("Data")
end)

function buildFishDatabase()
    local itemsContainer = ReplicatedStorage:WaitForChild("Items")
    if not itemsContainer then return end
    
    for _, itemModule in ipairs(itemsContainer:GetChildren()) do
        local success, itemData = pcall(require, itemModule)
        if success and type(itemData) == "table" and itemData.Data and itemData.Data.Type == "Fishes" then
            local data = itemData.Data
            if data.Id and data.Name then
                fishDB[data.Id] = {
                    Name = data.Name, Tier = data.Tier, Icon = data.Icon, 
                    SellPrice = itemData.SellPrice 
                }
            end
        end
    end
end

function getInventoryFish()
    if not (DataService and ItemUtility) then return {} end
    local inventoryItems = DataService:GetExpect({"Inventory", "Items"})
    local fishes = {}
    for _, v in pairs(inventoryItems) do
        local itemData = ItemUtility.GetItemDataFromItemType("Items", v.Id)
        if itemData and itemData.Data.Type == "Fishes" then
            table.insert(fishes, {Id = v.Id, UUID = v.UUID, Metadata = v.Metadata})
        end
    end
    return fishes
end

function getPlayerCoins()
    if not DataService then return "N/A" end
    local success, coins = pcall(function() return DataService:Get("Coins") end)
    if success and coins then return string.format("%d", coins):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") end
    return "N/A"
end

function getThumbnailURL(assetString)
    local assetId = assetString:match("rbxassetid://(%d+)") if not assetId then return nil end
    local api = string.format("https://thumbnails.roblox.com/v1/assets?assetIds=%s&type=Asset&size=420x420&format=Png", assetId)
    local success, response = pcall(function() return HttpService:JSONDecode(game:HttpGet(api)) end)
    return success and response and response.data and response.data[1] and response.data[1].imageUrl
end

function sendTestWebhook()
    if not req or not Settings.WebhookURL or not Settings.WebhookURL:match("discord.com/api/webhooks") then 
        WindUI:Notify({
            Title = "Error", 
            Content = "Webhook URL Empty"}); return end

    local payload = {embeds = {{
        title = "✅ Test Webhook Connected", 
        description = "Webhook connection successful!", 
        color = 0x00FF00
    }}}
    pcall(function() req({
        Url = Settings.WebhookURL, 
        Method = "POST", 
        Headers = {["Content-Type"] = "application/json"}, 
        Body = HttpService:JSONEncode(payload)}) end)
end

function sendNewFishWebhook(newlyCaughtFish)
    if not req or not Settings.WebhookURL or not Settings.WebhookURL:match("discord.com/api/webhooks") then return end
    local newFishDetails = fishDB[newlyCaughtFish.Id]
    if not newFishDetails then return end
    local newFishRarity = tierToRarity[newFishDetails.Tier] or "Unknown"
    if #Settings.WebhookRarities > 0 and not table.find(Settings.WebhookRarities, newFishRarity) then return end

    local fishWeight = (newlyCaughtFish.Metadata and newlyCaughtFish.Metadata.Weight and string.format("%.2f kg", newlyCaughtFish.Metadata.Weight)) or "N/A"
    local mutation = (newlyCaughtFish.Metadata and newlyCaughtFish.Metadata.VariantId and tostring(newlyCaughtFish.Metadata.VariantId)) or "None"
    local sellPrice = (newFishDetails.SellPrice and string.format("%d", newFishDetails.SellPrice):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") .. " Coins") or "N/A"
    local currentCoins = getPlayerCoins()

    local totalFishInInventory = #getInventoryFish()
    local backpackInfo = string.format("%d/5000", totalFishInInventory)

    local content = ""
    if table.find(Settings.WebhookRarities, newFishRarity) then
        content = "@everyone"
    end

    local payload = {
        username = "LimeHub Bot",
        avatar_url = "https://cdn.discordapp.com/attachments/1408262889437134942/1420411647054446683/limehub.jpeg?ex=68d54cee&is=68d3fb6e&hm=bf50d2083093decbeea5146165c85dd351801cfa2bffe1dd711907b308af1c47&",
        content = content,
        embeds = {{
            title = "🎣 New Fish Caught!", color = 0x3498DB,
            fields = {
                { name = "User", value = tostring(game.Players.LocalPlayer.Name), inline = true },
                { name = "Fish Name", value = "**" .. newFishDetails.Name .. "**", inline = false },
                { name = "Rarity", value = rarityToEmoji[newFishRarity] .. " " .. newFishRarity, inline = true },
                { name = "Weight", value = fishWeight, inline = true },
                { name = "Mutation", value = mutation, inline = true },
                { name = "Sell Price", value = sellPrice, inline = true },
                { name = "Backpack", value = backpackInfo, inline = true }
            },
            thumbnail = { url = getThumbnailURL(newFishDetails.Icon) },
            footer = { text = "Current Coins: " .. currentCoins .. " | " .. os.date("%d %B %Y, %H:%M:%S") }
        }}
    }

    if pcall(function() req({Url = Settings.WebhookURL, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = HttpService:JSONEncode(payload)}) end) then
    else NatUI:Notify({Title = "Error", Content = "Failed to send webhook"}) end
end

Main:Input({
    Title = "URL Webhook", 
    Placeholder = "Paste your Discord Webhook URL here", 
    Value = _G.WebhookURL, 
    Callback = function(text) 
        _G.WebhookURL = text
        SaveConfig()
    end
})

Main:Toggle({
    Title = "Send Webhook", 
    Value = _G.DetectNewFishActive,
    Callback = function(state) 
        _G.DetectNewFishActive = state
        SaveConfig()
    end
})

Main:Dropdown({
    Title = "Rarity Filter", 
    Values = rarityList, 
    Multi = true, 
    AllowNone = true, 
    Value = _G.WebhookRarities, 
    Callback = function(selected_options) 
        _G.WebhookRarities = selected_options
        SaveConfig()
    end
})

Main:Button({
    Title = "Test Webhook", 
    Callback = sendTestWebhook
})

buildFishDatabase()
spawn(function()
    local initialFishList = getInventoryFish()
    for _, fish in ipairs(initialFishList) do
        if fish and fish.UUID then knownFishUUIDs[fish.UUID] = true end
    end
end)

spawn(function()
    while wait(0.1) do
        task.wait(Settings.ScanInterval)
        if _G.DetectNewFishActive then
            local currentFishList = getInventoryFish()
            for _, fish in ipairs(currentFishList) do
                if fish and fish.UUID and not knownFishUUIDs[fish.UUID] then
                    knownFishUUIDs[fish.UUID] = true
                    sendNewFishWebhook(fish)
                end
            end
        end
    end
end)

local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled

spawn(function()
    while true do
        wait(300)
        
        if isMobile then
            local screenSize = workspace.CurrentCamera.ViewportSize
            local centerX, centerY = screenSize.X/2, screenSize.Y/2
            VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, true, game, 1)
            wait(0.05)
            VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, false, game, 1)
        else
            local screenSize = workspace.CurrentCamera.ViewportSize
            local centerX, centerY = screenSize.X/2, screenSize.Y/2
            VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, true, game, 1)
            wait(0.05)
            VirtualInputManager:SendMouseButtonEvent(centerX, centerY, 0, false, game, 1)
        end
    end
end)