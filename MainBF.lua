
if game.PlaceId == 2753915549 then
	World1 = true;
elseif game.PlaceId == 4442272183 then
	World2 = true;
elseif game.PlaceId == 7449423635 then
	World3 = true;
end;

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Blox Fruit",
    Icon = "rbxassetid://129260712070622",
    IconThemed = true,
    Author = "LimeHub",
    Folder = "LimeHub",
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Dark",
})

Window:EditOpenButton({
    Title = "Open LimeHub UI",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    ),
    Draggable = true,
})

-- Tabs & Sections

local Tabs = {}

-- Section: Main Features
Tabs.MainSection = Window:Section({ Title = "Main Features", Opened = true })
Tabs.MainTab = Tabs.MainSection:Tab({ Title = "Main" })
Tabs.FarmTab = Tabs.MainSection:Tab({ Title = "Farm" })
Tabs.ItemsTab = Tabs.MainSection:Tab({ Title = "Items" })
Tabs.EspTab = Tabs.MainSection:Tab({ Title = "Esp" })
Tabs.TeleportTab = Tabs.MainSection:Tab({ Title = "Teleport" })
Tabs.ShopTab = Tabs.MainSection:Tab({ Title = "Shop" })
Tabs.FruitTab = Tabs.MainSection:Tab({ Title = "Fruit" })
Tabs.MiscTab = Tabs.MainSection:Tab({ Title = "Misc" })
Tabs.RaidTab = Tabs.MainSection:Tab({ Title = "Raid" })
Tabs.ServerTab = Tabs.MainSection:Tab({ Title = "Server" })

-- Section: Player
Tabs.PlayerSection = Window:Section({ Title = "Player", Opened = true })
Tabs.SettingsTab = Tabs.PlayerSection:Tab({ Title = "Settings" })
Tabs.LocalPlayerTab = Tabs.PlayerSection:Tab({ Title = "Local Player" })
Tabs.StatsTab = Tabs.PlayerSection:Tab({ Title = "Stats" })
Tabs.HoldTab = Tabs.PlayerSection:Tab({ Title = "Hold" })

-- Section: World
Tabs.WorldSection = Window:Section({ Title = "World", Opened = true })
if World3 then
    Tabs.SeaTab = Tabs.WorldSection:Tab({ Title = "Sea" })
    Tabs.SettingSeaTab = Tabs.WorldSection:Tab({ Title = "Setting Sea" })
    Tabs.CraftTab = Tabs.WorldSection:Tab({ Title = "Craft" })
    Tabs.DragonDojoTab = Tabs.WorldSection:Tab({ Title = "Dragon Dojo" })
end
if World2 or World3 then
    Tabs.SeaStackTab = Tabs.WorldSection:Tab({ Title = "Sea Event" })
    Tabs.RaceV4Tab = Tabs.WorldSection:Tab({ Title = "RaceV4" })
end

_G.Settings = {
	Main = {
		["Select Weapon"] = "Melee",
		["Farm Mode"] = "Normal",
		["Auto Farm"] = false,
		["Auto Farm Fast"] = false,
		["Selected Mastery Mode"] = "Quest",
		["Auto Farm Fruit Mastery"] = false,
		["Auto Farm Gun Mastery"] = false,
		["Selected Mastery Sword"] = nil,
		["Auto Farm Sword Mastery"] = false,
		["Selected Mob"] = nil,
		["Auto Farm Mob"] = false,
		["Selected Boss"] = nil,
		["Auto Farm Boss"] = false,
		["Auto Farm All Boss"] = false
	},
	Event = {},
	Farm = {
		["Auto Elite Hunter"] = false,
		["Auto Elite Hunter Hop"] = false,
		["Selected Bone Farm Mode"] = "Quest",
		["Auto Farm Bone"] = false,
		["Auto Random Surprise"] = false,
		["Auto Pirate Raid"] = false,
		["Auto Farm Observation"] = false,
		["Auto Observation V2"] = false,
		["Auto Musketeer Hat"] = false,
		["Auto Saber"] = false,
		["Auto Farm Chest Tween"] = false,
		["Auto Farm Chest Instant"] = false,
		["Auto Chest Hop"] = false,
		["Auto Farm Chest Mirage"] = false,
		["Auto Stop Items"] = false,
		["Auto Farm Katakuri"] = false,
		["Auto Spawn Cake Prince"] = false,
		["Auto Kill Cake Prince"] = false,
		["Auto Kill Dough King"] = false,
		["Auto Farm Radioactive"] = false,
		["Auto Farm Mystic Droplet"] = false,
		["Auto Farm Magma Ore"] = false,
		["Auto Farm Angel Wings"] = false,
		["Auto Farm Leather"] = false,
		["Auto Farm Scrap Metal"] = false,
		["Auto Farm Conjured Cocoa"] = false,
		["Auto Farm Dragon Scale"] = false,
		["Auto Farm Gunpowder"] = false,
		["Auto Farm Fish Tail"] = false,
		["Auto Farm Mini Tusk"] = false
	},
	Setting = {
		["Spin Position"] = false,
		["Farm Distance"] = 35,
		["Player Tween Speed"] = 350,
		["Bring Mob"] = true,
		["Bring Mob Mode"] = "Normal",
		["Fast Attack"] = true,
		["Fast Attack Mode"] = "Normal",
		["Fast Attack Type"] = "New",
		["Attack Aura"] = true,
		["Hide Notification"] = false,
		["Hide Damage Text"] = true,
		["Black Screen"] = false,
		["White Screen"] = false,
		["Hide Monster"] = false,
		["Mastery Health"] = 25,
		["Fruit Mastery Skill Z"] = true,
		["Fruit Mastery Skill X"] = true,
		["Fruit Mastery Skill C"] = true,
		["Fruit Mastery Skill V"] = false,
		["Fruit Mastery Skill F"] = false,
		["Gun Mastery Skill Z"] = true,
		["Gun Mastery Skill X"] = true,
		["Auto Set Spawn Point"] = true,
		["Auto Observation"] = false,
		["Auto Haki"] = true,
		["Auto Rejoin"] = true,
		["Bypass Anti Cheat"] = true
	},
	Hold = {
		["Hold Mastery Skill Z"] = 0,
		["Hold Mastery Skill X"] = 0,
		["Hold Mastery Skill C"] = 0,
		["Hold Mastery Skill V"] = 0,
		["Hold Mastery Skill F"] = 0,
		["Hold Sea Skill Z"] = 0,
		["Hold Sea Skill X"] = 0,
		["Hold Sea Skill C"] = 0,
		["Hold Sea Skill V"] = 0,
		["Hold Sea Skill F"] = 0
	},
	Stats = {
		["Auto Add Melee Stats"] = false,
		["Auto Add Defense Stats"] = false,
		["Auto Add Devil Fruit Stats"] = false,
		["Auto Add Sword Stats"] = false,
		["Auto Add Gun Stats"] = false,
		["Point Stats"] = 1
	},
	Items = {
		["Auto Second Sea"] = false,
		["Auto Third Sea"] = false,
		["Auto Farm Factory"] = false,
		["Auto Super Human"] = false,
		["Auto Death Step"] = false,
		["Auto Fishman Karate"] = false,
		["Auto Electric Claw"] = false,
		["Auto Dragon Talon"] = false,
		["Auto God Human"] = false,
		["Auto Buddy Sword"] = false,
		["Auto Soul Guitar"] = false,
		["Auto Rengoku"] = false,
		["Auto Hallow Scythe"] = false,
		["Auto Warden Sword"] = false,
		["Auto Cursed Dual Katana"] = false,
		["Auto Yama"] = false,
		["Auto Tushita"] = false,
		["Auto Canvander"] = false,
		["Auto Dragon Trident"] = false,
		["Auto Pole"] = false,
		["Auto Shawk Saw"] = false,
		["Auto Greybeard"] = false,
		["Auto Swan Glasses"] = false,
		["Auto Arena Trainer"] = false,
		["Auto Dark Dagger"] = false,
		["Auto Press Haki Button"] = false,
		["Auto Rainbow Haki"] = false,
		["Auto Holy Torch"] = false,
		["Auto Bartilo Quest"] = false
	},
	Esp = {
		["ESP Player"] = false,
		["ESP Chest"] = false,
		["ESP DevilFruit"] = false,
		["ESP RealFruit"] = false,
		["ESP Flower"] = false,
		["ESP Island"] = false,
		["ESP Npc"] = false,
		["ESP Sea Beast"] = false,
		["ESP Monster"] = false,
		["ESP Mirage"] = false,
		["ESP Kitsune"] = false,
		["ESP Frozen"] = false,
		["ESP Advanced Fruit Dealer"] = false,
		["ESP Aura"] = false,
		["ESP Gear"] = false
	},
	DragonDojo = {
		["Auto Farm Blaze Ember"] = false,
		["Auto Collect Blaze Ember"] = false
	},
	SeaEvent = {
		["Selected Boat"] = "Guardian",
		["Selected Zone"] = "Zone 5",
		["Boat Tween Speed"] = 300,
		["Sail Boat"] = false,
		["Auto Farm Shark"] = true,
		["Auto Farm Piranha"] = true,
		["Auto Farm Fish Crew Member"] = true,
		["Auto Farm Ghost Ship"] = true,
		["Auto Farm Pirate Brigade"] = true,
		["Auto Farm Pirate Grand Brigade"] = true,
		["Auto Farm Terrorshark"] = true,
		["Auto Farm Seabeasts"] = true,
		["Dodge Seabeasts Attack"] = true,
		["Dodge Terrorshark Attack"] = true,
		Lightning = false,
		["Increase Boat Speed"] = false,
		["No Clip Rock"] = false
	},
	SettingSea = {
		["Skill Devil Fruit"] = true,
		["Skill Melee"] = true,
		["Skill Sword"] = true,
		["Skill Gun"] = true,
		["Sea Fruit Skill Z"] = true,
		["Sea Fruit Skill X"] = true,
		["Sea Fruit Skill C"] = true,
		["Sea Fruit Skill V"] = false,
		["Sea Fruit Skill F"] = false,
		["Sea Melee Skill Z"] = true,
		["Sea Melee Skill X"] = true,
		["Sea Melee Skill C"] = true,
		["Sea Melee Skill V"] = true,
		["Sea Sword Skill Z"] = true,
		["Sea Sword Skill X"] = true,
		["Sea Gun Skill Z"] = true,
		["Sea Gun Skill X"] = true
	},
	SeaStack = {
		["Teleport To Frozen Dimension"] = false,
		["Sail To Frozen Dimension"] = false,
		["Summon Frozen Dimension"] = false,
		["Teleport To Kitsune Island"] = false,
		["Auto Collect Azure Ember"] = false,
		["Set Azure Ember"] = 20,
		["Auto Trade Azure Ember"] = false,
		["Teleport To Mirage Island"] = false,
		["Teleport To Advanced Fruit Dealer"] = false,
		["Auto Attack Seabeasts"] = false,
		["Summon Prehistoric Island"] = false,
		["Tween To Prehistoric Island"] = false,
		["Auto Kill Lava Golem"] = false
	},
	Craft = {
		["Auto Craft Common Scroll"] = false,
		["Auto Craft Rare Scroll"] = false,
		["Auto Craft Legendary Scroll"] = false,
		["Auto Craft Mythical Scroll"] = false
	},
	Race = {
		["Auto Race V2"] = false,
		["Auto Race V3"] = false,
		["Selected PlaceV4"] = nil,
		["Teleport To PlaceV4"] = false,
		["Auto Buy Gear"] = false,
		["Tween To Highest Mirage"] = false,
		["Find Blue Gear"] = false,
		["Look Moon Ability"] = false,
		["Auto Train"] = false,
		["Auto Kill Player After Trial"] = false,
		["Auto Trial"] = false
	},
	Combat = {
		["Auto Kill Player Quest"] = false,
		["Aimbot Gun"] = false,
		["Aimbot Skill Neares"] = false,
		["Aimbot Skill"] = false,
		["Enable PvP"] = false
	},
	Raid = {
		["Selected Chip"] = nil,
		["Auto Raid"] = false,
		["Auto Awaken"] = false,
		["Price Devil Fruit"] = 1000000,
		["Unstore Devil Fruit"] = false,
		["Law Raid"] = false
	},
	Shop = {
		["Auto Buy Legendary Sword"] = false,
		["Auto Buy Haki Color"] = false
	},
	LocalPlayer = {
		["Infinite Energy"] = false,
		["Infinite Ability"] = true,
		["Infinite Geppo"] = false,
		["Infinite Soru"] = false,
		["Dodge No Cooldown"] = false,
		["Active Race V3"] = false,
		["Active Race V4"] = false,
		["Walk On Water"] = true,
		["No Clip"] = false
	},
	Fruit = {
		["Auto Buy Random Fruit"] = false,
		["Store Rarity Fruit"] = "Common - Mythical",
		["Auto Store Fruit"] = false,
		["Fruit Notification"] = false,
		["Teleport To Fruit"] = false,
		["Tween To Fruit"] = false
	},
	Misc = {
		["Hide Chat"] = false,
		["Hide Leaderboard"] = false,
		["Highlight Mode"] = false
	}
};
loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/ceklevel.lua"))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/spawn.lua"))()

-- Start
Tabs.MainTab:Button({
    Title = "Copy Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/qZuB7sYdYB")
        WindUI:Notify({
            Title = "Copied!",
            Duration = 3
        })
    end
})
Tabs.MainTab:Section({ Title = "Level Farm" })
local WeaponList = {
	"Melee",
	"Sword",
	"Fruit"
};
Tabs.MainTab:Dropdown({
    Title = "Choose Weapon",
    Values = WeaponList,
    Value = _G.Settings.Main["Select Weapon"],
    Callback = function(value)
        _G.Settings.Main["Select Weapon"] = value
    end
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/spawntool.lua"))()

local ListF = {
	"Normal",
	"Auto Quest",
	"Nearest"
};
Tabs.MainTab:Dropdown({
    Title = "Choose Farm Mode",
    Values = ListF,
    Value = _G.Settings.Main["Farm Mode"],
    Callback = function(value)
        _G.Settings.Main["Farm Mode"] = value
    end
})
Tabs.MainTab:Toggle({
    Title = "Auto Farm",
    Value = _G.Settings.Main["Auto Farm"],
    Desc = "Auto Farm Selected Mode",
    Callback = function(value)
        _G.Settings.Main["Auto Farm"] = value
        StopTween(_G.Settings.Main["Auto Farm"])
    end
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/spawnfarmlevel.lua"))()

if World1 then
    Tabs.MainTab:Toggle({
        Title = "Auto Farm Fast",
        Value = _G.Settings.Main["Auto Farm Fast"],
        Desc = "Farm Sky Lv.10-75",
        Callback = function(value)
            _G.Settings.Main["Auto Farm Fast"] = value
            StopTween(_G.Settings.Main["Auto Farm Fast"])
        end
    })
 loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/spawnfarmfast.lua"))()
end;

 loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/buy.lua"))()

Tabs.MainTab:Section({ Title = "Mastery Farm" })
if World3 then
	ListMasteryMethod = {
		"Quest",
		"No Quest",
		"Nearest",
		"Cakeprince",
		"Bones"
	};
elseif World2 or World1 then
	ListMasteryMethod = {
		"Quest",
		"No Quest",
		"Nearest"
	};
end;
Tabs.MainTab:Dropdown({
    Title = "Choose Mode",
    Values = ListMasteryMethod,
    Value = _G.Settings.Main["Selected Mastery Mode"],
    Callback = function(value)
        _G.Settings.Main["Selected Mastery Mode"] = value
    end
})
Tabs.MainTab:Toggle({
    Title = "Auto Farm Fruit Mastery",
    Value = _G.Settings.Main["Auto Farm Fruit Mastery"],
    Desc = "Auto Kill Mob Using Fruit",
    Callback = function(value)
        _G.Settings.Main["Auto Farm Fruit Mastery"] = value
        StopTween(_G.Settings.Main["Auto Farm Fruit Mastery"])
    end
})
Tabs.MainTab:Toggle({
    Title = "Auto Farm Gun Mastery",
    Value = _G.Settings.Main["Auto Farm Gun Mastery"],
    Desc = "Auto Kill Mob Using Gun",
    Callback = function(value)
        _G.Settings.Main["Auto Farm Gun Mastery"] = value
        StopTween(_G.Settings.Main["Auto Farm Gun Mastery"])
    end
})

 loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/SWORDLIST.lua"))()

Tabs.MainTab:Dropdown({
    Title = "Choose Sword",
    Values = SwordList,
    Value = _G.Settings.Main["Selected Mastery Sword"],
    Callback = function(value)
        _G.Settings.Main["Selected Mastery Sword"] = value
    end
})

 loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/SWORDNAME.lua"))()

Tabs.MainTab:Toggle({
    Title = "Auto Farm Sword Mastery",
    Value = _G.Settings.Main["Auto Farm Sword Mastery"],
    Desc = "Auto Kill Mob Using Sword",
    Callback = function(value)
        _G.Settings.Main["Auto Farm Sword Mastery"] = value
        StopTween(_G.Settings.Main["Auto Farm Sword Mastery"])
    end
})

 loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/masterySwordGun.lua"))()

  loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/TableMon.lua"))()
  
Tabs.MainTab:Section({ Title = "Mob Farm" })
Tabs.MainTab:Dropdown({
    Title = "Choose Mob",
    Values = tableMon,
    Value = _G.Settings.Main["Selected Mob"],
    Callback = function(value)
        _G.Settings.Main["Selected Mob"] = value
    end
})
Tabs.MainTab:Toggle({
    Title = "Auto Farm Mob",
    Value = _G.Settings.Main["Auto Farm Mob"],
    Desc = "Auto Kill Mob",
    Callback = function(value)
        _G.Settings.Main["Auto Farm Mob"] = value
        StopTween(_G.Settings.Main["Auto Farm Mob"])
    end
})
  loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/FarmMob.lua"))()
  
Tabs.MainTab:Section({ Title = "Boss Farm" })
local BossLabel = Tabs.MainTab:Paragraph({
    Title = "Status",
    Desc = "Status : Choose Boss"
})
spawn(function()
    while wait(0.2) do
        pcall(function()
            if (game:GetService("ReplicatedStorage")):FindFirstChild(_G.Settings.Main["Selected Boss"])
            or (game:GetService("Workspace")).Enemies:FindFirstChild(_G.Settings.Main["Selected Boss"]) then
                BossLabel:SetDesc("Status : Spawn!")
            else
                BossLabel:SetDesc("Status : Boss Not Spawn")
            end
        end)
    end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/TableBos.lua"))()

Tabs.MainTab:Dropdown({
    Title = "Choose Boss",
    Values = tableBoss,
    Value = _G.Settings.Main["Selected Boss"],
    Callback = function(value)
        _G.Settings.Main["Selected Boss"] = value
    end
})
Tabs.MainTab:Toggle({
    Title = "Auto Farm Boss",
    Value = _G.Settings.Main["Auto Farm Boss"],
    Desc = "Auto Kill Selected Boss",
    Callback = function(value)
        _G.Settings.Main["Auto Farm Boss"] = value
        StopTween(_G.Settings.Main["Auto Farm Boss"])
    end
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/FarmBos.lua"))()

Tabs.MainTab:Toggle({
    Title = "Auto Farm All Boss",
    Value = _G.Settings.Main["Auto Farm All Boss"],
    Desc = "Auto Kill All Boss",
    Callback = function(value)
        _G.Settings.Main["Auto Farm All Boss"] = value
        StopTween(_G.Settings.Main["Auto Farm All Boss"])
    end
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/kiktzyy/Beta/main/BloxFruit/FarmAllBos.lua"))()

if World3 then
    Tabs.FarmTab:Section({ Title = "Elite Hunter" })
    local Elite_Hunter_Status = Tabs.FarmTab:Paragraph({
        Title = "Status",
        Desc = "Status : Unknown"
    })
    
    spawn(function()
        while wait(0.2) do
            pcall(function()
                if (game:GetService("ReplicatedStorage")):FindFirstChild("Diablo")
                or (game:GetService("ReplicatedStorage")):FindFirstChild("Deandre")
                or (game:GetService("ReplicatedStorage")):FindFirstChild("Urban")
                or (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo")
                or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre")
                or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
                    Elite_Hunter_Status:SetDesc("Status : Elite Spawn!")
                else
                    Elite_Hunter_Status:SetDesc("Status : Elite Not Spawn")
                end
            end)
        end
    end)
    Tabs.FarmTab:Toggle({
        Title = "Auto Elite Hunter",
        Value = _G.Settings.Farm["Auto Elite Hunter"],
        Desc = "Auto Kill Elite Hunter When Spawn",
        Callback = function(value)
            _G.Settings.Farm["Auto Elite Hunter"] = value
            StopTween(_G.Settings.Farm["Auto Elite Hunter"])
        end
    })
    Tabs.FarmTab:Toggle({
        Title = "Auto Elite Hunter Hop",
        Value = _G.Settings.Farm["Auto Elite Hunter Hop"],
        Desc = "Auto Hop If Elite Hunter Not Spawn",
        Callback = function(value)
            _G.Settings.Farm["Auto Elite Hunter Hop"] = value
            StopTween(_G.Settings.Farm["Auto Elite Hunter Hop"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Elite Hunter Hop"] then
				pcall(function()
					if _G.Settings.Farm["Auto Elite Hunter"] then
						if not (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre")) or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Urban")) then
							Hop();
						end;
					end;
				end);
			end;
		end;
	end);
    Tabs.FarmTab:Button({
        Title = "Check Progress",
        Callback = function()
            WindUI:Notify({
                Title = "Elite Hunter Progress : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"),
                Duration = 3
            })
        end
    })
    local Elite = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Elite Hunter"] and World3 then
				pcall(function()
					local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
						if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							topos(Elite);
							if (Vector3.new((-5418.892578125), 313.74130249023, (-2826.2260742188)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter");
							end;
						elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(QuestTitle, "Diablo") or string.find(QuestTitle, "Deandre") or string.find(QuestTitle, "Urban") then
								if (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
									for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
										if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													v.HumanoidRootPart.CanCollide = false;
													v.Humanoid.WalkSpeed = 0;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													topos(v.HumanoidRootPart.CFrame * Pos);
													Attack();
												until _G.Settings.Farm["Auto Elite Hunter"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
    Tabs.FarmTab:Section({ Title = "Bone Farm" })
    local ListB = {
		"Quest",
		"No Quest"
	};
    Tabs.FarmTab:Dropdown({
        Title = "Choose Mode",
        Values = ListB,
        Value = _G.Settings.Farm["Selected Bone Farm Mode"],
        Callback = function(value)
            _G.Settings.Farm["Selected Bone Farm Mode"] = value
        end
    })
    local BonesOwnedStatus = Tabs.FarmTab:Paragraph({
        Title = "Bones Owned",
        Desc = "Bones Owned"
    })
    spawn(function()
        while wait(1) do
            pcall(function()
                local Bones = GetCountMaterials("Bones")
                BonesOwnedStatus:SetDesc("Bones Owned: " .. tostring(Bones))
            end)
        end
    end)
    local BoneFarm = Tabs.FarmTab:Toggle({
        Title = "Auto Farm Bone",
        Value = _G.Settings.Farm["Auto Farm Bone"],
        Desc = "Auto Kill Bone Mob",
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Bone"] = value
            StopTween(_G.Settings.Farm["Auto Farm Bone"])
        end
    })
    local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Selected Bone Farm Mode"] == "No Quest" and _G.Settings.Farm["Auto Farm Bone"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Bone"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375));
					end;
				end);
			end;
		end;
	end);
	local BoneQuestPos = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Selected Bone Farm Mode"] == "Quest" and _G.Settings.Farm["Auto Farm Bone"] and World3 then
				pcall(function()
					local QuestTitle = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
					if not string.find(QuestTitle, "Demonic Soul") then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
					end;
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						topos(BoneQuestPos);
						if (BoneQuestPos.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
						end;
					elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Reborn Skeleton") or (game:GetService("Workspace")).Enemies:FindFirstChild("Living Zombie") or (game:GetService("Workspace")).Enemies:FindFirstChild("Demonic Soul") or (game:GetService("Workspace")).Enemies:FindFirstChild("Posessed Mummy") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
										if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												AutoHaki();
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
												Attack();
											until not _G.Settings.Farm["Auto Farm Bone"] or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										end;
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
    Tabs.FarmTab:Toggle({
        Title = "Auto Random Surprise",
        Value = _G.Settings.Farm["Auto Random Surprise"],
        Desc = "Auto Trade Bone",
        Callback = function(value)
            _G.Settings.Farm["Auto Random Surprise"] = value
        end
    })
    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Farm["Auto Random Surprise"] then
					wait(2);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
				end;
			end;
		end);
	end);
    Tabs.FarmTab:Section({ Title = "Pirate Raid" })
    Tabs.FarmTab:Toggle({
        Title = "Auto Pirate Raid",
        Value = _G.Settings.Farm["Auto Pirate Raid"],
        Desc = "Auto Kill Pirate Raid Enemies",
        Callback = function(value)
            _G.Settings.Farm["Auto Pirate Raid"] = value
            StopTween(_G.Settings.Farm["Auto Pirate Raid"])
        end
    })
    function getPirateRaidEnemies()
		local PirateRaidPos = CFrame.new(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, 1, 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458);
		for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				local enemyPos = v.HumanoidRootPart.Position;
				if (PirateRaidPos.Position - enemyPos).Magnitude <= 2000 then
					if v then
						return v;
					else
						return false;
					end;
				end;
			end;
		end;
	end;
	spawn(function()
		while wait() do
			if _G.Settings.Farm["Auto Pirate Raid"] then
				pcall(function()
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							if v.Name then
								if getPirateRaidEnemies() then
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (v:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= 2000 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											Attack();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
										until not _G.Settings.Main["Auto Pirate Raid"] or (not v.Parent) or v.Humanoid.Health <= 0 or (not game.Workspace.Enemies:FindFirstChild(v.Name));
									end;
								else
									topos(CFrame.new(-5515.08301, 343.112762, -3013.25171, 0.0679906458, 0.0000000121971047, -0.997685969, -0.0000000640159001, 1, 0.00000000786281706, 0.997685969, 0.000000063333168, 0.0679906458));
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
Tabs.FarmTab:Section({ Title = "Observation" })
local ObservationRange = Tabs.FarmTab:Paragraph({
    Title = "Observation Range",
    Desc = ""
})
spawn(function()
    while wait(0.2) do
        pcall(function()
            ObservationRange:SetDesc("Observation Range : " .. math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
        end)
    end
end)
Tabs.FarmTab:Toggle({
    Title = "Auto Farm Observation",
    Value = _G.Settings.Farm["Auto Farm Observation"],
    Callback = function(value)
        _G.Settings.Farm["Auto Farm Observation"] = value
        StopTween(_G.Settings.Farm["Auto Farm Observation"])
    end
})
if World3 then
    Tabs.FarmTab:Toggle({
        Title = "Auto V2 Observation",
        Value = _G.Settings.Farm["Auto Observation V2"],
        Callback = function(value)
            _G.Settings.Farm["Auto Observation V2"] = value
            StopTween(_G.Settings.Farm["Auto Observation V2"])
        end
    })
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Farm["Auto Observation V2"] then
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3 then
						_G.Settings.Farm["Auto Musketeer Hat"] = false;
						if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Banana") and (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Apple") and (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Pineapple") then
							repeat
								topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625));
								wait();
							until not _G.Settings.Farm["Auto Observation V2"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-12444.78515625), 332.40396118164, (-7673.1806640625))).Magnitude <= 10;
							wait(0.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
						elseif (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
							repeat
								topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188));
								wait();
							until not _G.Settings.Farm["Auto Observation V2"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-10920.125), 624.20275878906, (-10266.995117188))).Magnitude <= 10;
							wait(0.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk2", "Start");
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
						else
							for i, v in pairs((game:GetService("Workspace")):GetDescendants()) do
								if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
									v.Handle.CFrame = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10);
									wait();
									firetouchinterest((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart, v.Handle, 0);
									wait();
								end;
							end;
						end;
					else
						_G.Settings.Farm["Auto Musketeer Hat"] = true;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Farm["Auto Musketeer Hat"] then
					if (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1800 and ((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress")).KilledBandits == false then
						if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Forest Pirate") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Forest Pirate" then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											AutoHaki();
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											Attack();
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
										until _G.Settings.Farm["Auto Musketeer Hat"] == false or (not v.Parent) or v.Humanoid.Health <= 0 or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
									end;
								end;
							else
								topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375));
							end;
						else
							topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
							if (Vector3.new((-12443.8671875), 332.40396118164, (-7675.4892578125)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
								wait(1.5);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1800 and ((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress")).KilledBoss == false then
						if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Captain Elephant") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Captain Elephant" then
										OldCFrameElephant = v.HumanoidRootPart.CFrame;
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											AutoHaki();
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CanCollide = false;
											v.HumanoidRootPart.CFrame = OldCFrameElephant;
											Attack();
										until _G.Settings.Farm["Auto Musketeer Hat"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
									end;
								end;
							else
								topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375));
							end;
						else
							topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125));
							if ((CFrame.new((-12443.8671875), 332.40396118164, (-7675.4892578125))).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(0.5);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2 then
						topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125));
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Farm["Auto Farm Observation"] then
					repeat
						task.wait();
						if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							(game:GetService("VirtualUser")):CaptureController();
							(game:GetService("VirtualUser")):SetKeyDown("0x65");
							wait(2);
							(game:GetService("VirtualUser")):SetKeyUp("0x65");
						end;
					until (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or (not _G.Settings.Farm["Auto Farm Observation"]);
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Farm["Auto Farm Observation"] then
					if (game:GetService("Players")).LocalPlayer.VisionRadius.Value >= 5000 then
						WindUI:Notify({
                            Title = "You Have Max Points",
                            Duration = 3
                        })
						wait(2);
					elseif World2 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
							if (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
								until _G.Settings.Farm["Auto Farm Observation"] == false or (not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel"));
							else
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
									if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Farm["Auto Farm Observation"] == true then
										(game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
									end;
								until _G.Settings.Farm["Auto Farm Observation"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel");
							end;
						else
							topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126));
						end;
					elseif World1 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Galley Captain") then
							if (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
								until _G.Settings.Farm["Auto Farm Observation"] == false or (not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel"));
							else
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Galley Captain")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
									wait(1);
									if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Farm["Auto Farm Observation"] == true then
										(game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
									end;
								until _G.Settings.Farm["Auto Farm Observation"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel");
							end;
						else
							topos(CFrame.new(5533.29785, 88.1079102, 4852.3916));
						end;
					elseif World3 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Giant Islander") then
							if (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Giant Islander")).HumanoidRootPart.CFrame * CFrame.new(3, 0, 0);
								until _G.Settings.Farm["Auto Farm Observation"] == false or (not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel"));
							else
								repeat
									task.wait();
									(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = ((game:GetService("Workspace")).Enemies:FindFirstChild("Giant Islander")).HumanoidRootPart.CFrame * CFrame.new(0, 50, 0);
									wait(1);
									if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Farm["Auto Farm Observation"] == true then
										(game:GetService("TeleportService")):Teleport(game.PlaceId, (game:GetService("Players")).LocalPlayer);
									end;
								until _G.Settings.Farm["Auto Farm Observation"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel");
							end;
						else
							topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789));
						end;
					end;
				end;
			end;
		end);
	end);
end;

if World1 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Get Saber",
        Value = _G.Settings.Farm["Auto Saber"],
        Desc = "Auto Get Saber",
        Callback = function(value)
            _G.Settings.Farm["Auto Saber"] = value
            StopTween(_G.Settings.Farm["Auto Saber"])
        end
    })
    spawn(function()
		while task.wait(0.2) do
			if _G.Settings.Farm["Auto Saber"] and game.Players.LocalPlayer.Data.Level.Value >= 200 then
				pcall(function()
					if (game:GetService("Workspace")).Map.Jungle.Final.Part.Transparency == 0 then
						if (game:GetService("Workspace")).Map.Jungle.QuestPlates.Door.Transparency == 0 then
							if ((CFrame.new((-1612.55884), 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, (-0.928667724), 0.0000000397099491, 1, 0.0000000191679348, 0.928667724, (-0.0000000439869794), 0.37091279)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
								topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate1.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate2.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate3.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate4.Button.CFrame;
								wait(1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).Map.Jungle.QuestPlates.Plate5.Button.CFrame;
								wait(1);
							else
								topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 0.0000000030717151, -0.928667724, 0.0000000397099491, 1, 0.0000000191679348, 0.928667724, -0.0000000439869794, 0.37091279));
							end;
						elseif (game:GetService("Workspace")).Map.Desert.Burn.Part.Transparency == 0 then
							if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
								EquipWeapon("Torch");
								topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -0.00000000128799094, 0.761243105, -0.000000000570652914, 1, 0.00000000120584542, -0.761243105, 0.000000000347544882, -0.648466587));
							else
								topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408));
							end;
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
							wait(0.5);
							EquipWeapon("Cup");
							wait(0.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", (game:GetService("Players")).LocalPlayer.Character.Cup);
							wait(0);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Mob Leader") or (game:GetService("ReplicatedStorage")):FindFirstChild("Mob Leader") then
								topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559));
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Mob Leader" then
										if (game:GetService("Workspace")).Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													v.HumanoidRootPart.CanCollide = false;
													v.Humanoid.WalkSpeed = 0;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													topos(v.HumanoidRootPart.CFrame * Pos);
													Attack();
												until v.Humanoid.Health <= 0 or (not _G.Settings.Farm["Auto Saber"]);
											end;
										end;
										if (game:GetService("ReplicatedStorage")):FindFirstChild("Mob Leader") then
											topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mob Leader")).HumanoidRootPart.CFrame * Pos);
										end;
									end;
								end;
							end;
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
							wait(0.5);
							EquipWeapon("Relic");
							wait(0.5);
							topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 0.00000000566906877, 0.481375456, 0.0000000253851997, 1, -0.0000000579995607, -0.481375456, 0.0000000630572643, 0.876514494));
						end;
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Saber Expert") or (game:GetService("ReplicatedStorage")):FindFirstChild("Saber Expert") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								if v.Name == "Saber Expert" then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										Attack();
									until v.Humanoid.Health <= 0 or (not _G.Settings.Farm["Auto Saber"]);
									if v.Humanoid.Health <= 0 then
										(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
Tabs.FarmTab:Section({ Title = "Chest Farm" })
Tabs.FarmTab:Toggle({
    Title = "Auto Farm Chest [ Tween ]",
    Value = _G.Settings.Farm["Auto Farm Chest Tween"],
    Desc = "Auto Claim Chest Tween",
    Callback = function(value)
        _G.Settings.Farm["Auto Farm Chest Tween"] = value
        StopTween(_G.Settings.Farm["Auto Farm Chest Tween"])
    end
})
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Farm["Auto Farm Chest Tween"] then
				for i, v in pairs((game:GetService("Workspace")).ChestModels:GetChildren()) do
					if v.Name:find("Chest") then
						repeat
							wait();
							topos(v.RootPart.CFrame);
						until _G.Settings.Farm["Auto Farm Chest Tween"] == false or (not v.Parent);
						topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
					end;
				end;
			end;
		end);
	end;
end);
Tabs.FarmTab:Toggle({
    Title = "Auto Farm Chest [ Instant ]",
    Value = _G.Settings.Farm["Auto Farm Chest Instant"],
    Desc = "Auto Claim Chest Teleport",
    Callback = function(value)
        _G.Settings.Farm["Auto Farm Chest Instant"] = value
    end
})
Tabs.FarmTab:Toggle({
    Title = "Auto Chest Hop",
    Value = _G.Settings.Farm["Auto Chest Hop"],
    Desc = "Auto Hop if chest is not avillable",
    Callback = function(value)
        _G.Settings.Farm["Auto Chest Hop"] = value
    end
})
Tabs.FarmTab:Toggle({
    Title = "Auto Stop Items",
    Value = _G.Settings.Farm["Auto Stop Items"],
    Desc = "Stop When Get God's Chalice or FoD",
    Callback = function(value)
        _G.Settings.Farm["Auto Stop Items"] = value
    end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G.Settings.Farm["Auto Stop Items"] then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("God's Chalice") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("God's Chalice") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
					_G.Settings.Farm["Auto Farm Chest Instant"] = false;
					_G.Settings.Farm["Auto Farm Chest Tween"] = false;
					topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
				end;
			end;
		end);
	end;
end);
if World2 or World3 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Chest Mirage island",
        Value = _G.Settings.Farm["Auto Farm Chest Mirage"],
        Desc = "Auto Claim Chest Mirage",
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Chest Mirage"] = value
            StopTween(_G.Settings.Farm["Auto Farm Chest Mirage"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Chest Mirage"] then
				for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland.Chests:GetChildren()) do
					if string.find(v.Name, "Chest") then
						if (game:GetService("Workspace")):FindFirstChild(v.Name) then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if (game:GetService("Workspace")):FindFirstChild(v.Name) then
									topos(v.CFrame);
								end;
							until _G.Settings.Farm["Auto Farm Chest Mirage"] == false or (not v.Parent);
							topos((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame);
							break;
						end;
					end;
				end;
			end;
		end;
	end);
end;
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Farm["Auto Farm Chest Instant"] then
				for i, v in pairs((game:GetService("Workspace")).ChestModels:GetChildren()) do
					if v.Name:find("Chest") then
						repeat
							wait();
							if v.Name == "DiamondChest" then
								InstantTp(v.RootPart.CFrame);
								InstantTp(((game:GetService("Workspace")).ChestModels:FindFirstChild("DiamondChest")).RootPart.CFrame);
							elseif v.Name == "GoldChest" then
								InstantTp(v.RootPart.CFrame);
								InstantTp(((game:GetService("Workspace")).ChestModels:FindFirstChild("GoldChest")).RootPart.CFrame);
							elseif v.Name == "SilverChest" then
								InstantTp(v.RootPart.CFrame);
								InstantTp(((game:GetService("Workspace")).ChestModels:FindFirstChild("SilverChest")).RootPart.CFrame);
							end;
						until not _G.Settings.Farm["Auto Farm Chest Instant"] or (not v.Parent);
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while task.wait(0.2) do
		if _G.Settings.Farm["Auto Farm Chest Instant"] then
			(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
		end;
	end;
end);
if World3 then
    Tabs.FarmTab:Section({ Title = "Cake Farm" })
    local CakePrinceStatus = Tabs.FarmTab:Paragraph({
        Title = "Cake Prince Status",
        Desc = "Cake Prince Status"
    })
    spawn(function()
        while task.wait(5) do
            pcall(function()
                local status = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                local len = string.len(status)
                if len == 88 then
                    CakePrinceStatus:SetDesc("Cake Prince Status: " .. string.sub(status, 39, 41) .. " Remaining")
                elseif len == 87 then
                    CakePrinceStatus:SetDesc("Cake Prince Status: " .. string.sub(status, 39, 40) .. " Remaining")
                elseif len == 86 then
                    CakePrinceStatus:SetDesc("Cake Prince Status: " .. string.sub(status, 39, 39) .. " Remaining")
                else
                    CakePrinceStatus:SetDesc("Cake Prince Status: Spawned!")
                end
            end)
        end
    end)
    Tabs.FarmTab:Toggle({
        Title = "Auto Katakuri",
        Value = _G.Settings.Farm["Auto Farm Katakuri"],
        Desc = "Auto Farm + Kill Cake Prince",
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Katakuri"] = value
            StopTween(_G.Settings.Farm["Auto Farm Katakuri"])
        end
    })
    local CakePos = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Katakuri"] then
				pcall(function()
					if game.ReplicatedStorage:FindFirstChild("Cake Prince") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Cake Prince" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											topos(v.HumanoidRootPart.CFrame * Pos);
											RemoveAnimation(v);
											Attack();
										until not _G.Settings.Farm["Auto Farm Katakuri"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						elseif (game:GetService("Workspace")).Map.CakeLoaf.BigMirror.Other.Transparency == 0 and ((CFrame.new((-1990.672607421875), 4532.99951171875, (-14973.6748046875))).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 then
							topos(CFrame.new(-2151.82153, 149.315704, -12404.9053));
						end;
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Cookie Crafter") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Guard") or (game:GetService("Workspace")).Enemies:FindFirstChild("Baking Staff") or (game:GetService("Workspace")).Enemies:FindFirstChild("Head Baker") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Katakuri"] or (not v.Parent) or v.Humanoid.Health <= 0 or (game:GetService("Workspace")).Map.CakeLoaf.BigMirror.Other.Transparency == 0 or (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]");
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375));
					end;
				end);
			end;
		end;
	end);
    Tabs.FarmTab:Toggle({
        Title = "Auto Spawn Cake Prince",
        Value = _G.Settings.Farm["Auto Spawn Cake Prince"],
        Callback = function(value)
            _G.Settings.Farm["Auto Spawn Cake Prince"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Spawn Cake Prince"] then
				wait(2);
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CakePrinceSpawner", true);
			end;
		end;
	end);
    Tabs.FarmTab:Toggle({
        Title = "Auto Kill Cake Prince Only",
        Value = _G.Settings.Farm["Auto Kill Cake Prince"],
        Callback = function(value)
            _G.Settings.Farm["Auto Kill Cake Prince"] = value
            StopTween(_G.Settings.Farm["Auto Kill Cake Prince"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Kill Cake Prince"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Prince") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cake Prince" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										RemoveAnimation(v);
										Attack();
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy();
										end;
									until not _G.Settings.Farm["Auto Kill Cake Prince"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					end;
				end);
			end;
		end;
	end);
    Tabs.FarmTab:Toggle({
        Title = "Auto Kill Dough King Only",
        Value = _G.Settings.Farm["Auto Kill Dough King"],
        Callback = function(value)
            _G.Settings.Farm["Auto Kill Dough King"] = value
            StopTween(_G.Settings.Farm["Auto Kill Dough King"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Kill Dough King"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Dough King") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Dough King" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										RemoveAnimation(v);
										Attack();
										if v.Humanoid:FindFirstChild("Animator") then
											v.Humanoid.Animator:Destroy();
										end;
									until not _G.Settings.Farm["Auto Kill Dough King"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
Tabs.SettingsTab:Section({ Title = "Settings" })
Tabs.SettingsTab:Toggle({
    Title = "Spin Position",
    Value = _G.Settings.Setting["Spin Position"],
    Desc = "Spin Position When Farm",
    Callback = function(value)
        _G.Settings.Setting["Spin Position"] = value
    end
})
Tabs.SettingsTab:Slider({
    Title = "Farm Distnace",
    Value = {
        Min = 0,
        Max = 50,
        Default = _G.Settings.Setting["Farm Distance"],
    },
    Callback = function(value)
        _G.Settings.Setting["Farm Distance"] = value
    end
})
Tabs.SettingsTab:Slider({
    Title = "Player Tween Speed",
    Value = {
        Min = 100,
        Max = 350,
        Default = _G.Settings.Setting["Player Tween Speed"],
    },
    Callback = function(value)
        _G.Settings.Setting["Player Tween Speed"] = value
    end
})
Tabs.SettingsTab:Toggle({
    Title = "Bring Mob",
    Value = _G.Settings.Setting["Bring Mob"],
    Callback = function(value)
        _G.Settings.Setting["Bring Mob"] = value
    end
})
local Bring = {
	"Low",
	"Normal",
	"High"
};
Tabs.SettingsTab:Dropdown({
    Title = "BringMob Mode",
    Values = Bring,
    Value = _G.Settings.Setting["Bring Mob Mode"],
    Callback = function(value)
        _G.Settings.Setting["Bring Mob Mode"] = value
    end
})
spawn(function()
	while wait() do
		if _G.Settings.Setting["Bring Mob Mode"] then
			pcall(function()
				if _G.Settings.Setting["Bring Mob Mode"] == "Low" then
					BringMobDistance = 150;
				elseif _G.Settings.Setting["Bring Mob Mode"] == "Normal" then
					BringMobDistance = 250;
				elseif _G.Settings.Setting["Bring Mob Mode"] == "High" then
					BringMobDistance = 800;
				end;
			end);
		end;
	end;
end);
Tabs.SettingsTab:Toggle({
    Title = "Fast Attack",
    Value = _G.Settings.Setting["Fast Attack"],
    Desc = "Fast Attack",
    Callback = function(value)
        _G.Settings.Setting["Fast Attack"] = value
    end
})
local AttackList = {
	"Slow",
	"Normal",
	"Fast",
	"Super Fast"
};
spawn(function()
	while wait() do
		if _G.Settings.Setting["Fast Attack Mode"] == "Slow" then
			_G.Settings.Setting["Fast Attack Delay"] = 0.32;
		elseif _G.Settings.Setting["Fast Attack Mode"] == "Normal" then
			_G.Settings.Setting["Fast Attack Delay"] = 0.22;
		elseif _G.Settings.Setting["Fast Attack Mode"] == "Fast" then
			_G.Settings.Setting["Fast Attack Delay"] = 0.17;
		elseif _G.Settings.Setting["Fast Attack Mode"] == "Super Fast" then
			_G.Settings.Setting["Fast Attack Delay"] = 0.12;
		end;
	end;
end);
Tabs.SettingsTab:Dropdown({
    Title = "Fast Attack Mode",
    Values = AttackList,
    Value = _G.Settings.Setting["Fast Attack Mode"],
    Callback = function(value)
        _G.Settings.Setting["Fast Attack Mode"] = value
    end
})
Tabs.SettingsTab:Toggle({
    Title = "Attack Aura",
    Value = _G.Settings.Setting["Attack Aura"],
    Desc = "Attack Mob",
    Callback = function(value)
        _G.Settings.Setting["Attack Aura"] = value
    end
})
spawn(function()
	(game:GetService("RunService")).RenderStepped:Connect(function()
		if _G.Settings.Setting["Attack Aura"] and (not _G.Settings.Main["Auto Farm Fruit Mastery"]) and (not _G.Settings.Main["Auto Farm Gun Mastery"]) then
			pcall(function()
				Attack();
			end);
		end;
	end);
end);
local env = (getgenv or getrenv or getfenv)();
local rs = game:GetService("ReplicatedStorage");
local players = game:GetService("Players");
local client = players.LocalPlayer;
local modules = rs:WaitForChild("Modules");
local net = modules:WaitForChild("Net");
local charFolder = workspace:WaitForChild("Characters");
local enemyFolder = workspace:WaitForChild("Enemies");
local playerFolder = game:GetService("Players");
function getAllBladeHits(Sizes)
	local Hits = {};
	local Client = game.Players.LocalPlayer;
	local Players = (game:GetService("Players")):GetChildren();
	local Enemies = (game:GetService("Workspace")).Enemies:GetChildren();
	for i = 1, #Enemies do
		local v = Enemies[i];
		local Human = v:FindFirstChildOfClass("Humanoid");
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
			table.insert(Hits, Human.RootPart);
		end;
	end;
	for i = 1, #Players do
		local v = Players[i];
		local Human = v.Character:FindFirstChildOfClass("Humanoid");
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes + 5 then
			table.insert(Hits, Human.RootPart);
		end;
	end;
	return Hits;
end;
local AttackModule = {};
local RegisterAttack = net:WaitForChild("RE/RegisterAttack");
local RegisterHit = net:WaitForChild("RE/RegisterHit");
function AttackModule:AttackEnemy(EnemyHead, Table)
	if EnemyHead then
		RegisterAttack:FireServer(0);
		RegisterAttack:FireServer(1);
		RegisterAttack:FireServer(2);
		RegisterAttack:FireServer(3);
		RegisterHit:FireServer(EnemyHead, Table or {});
	end;
end;
function AttackModule:AttackNearest()
	local args = {
		nil,
		{}
	};
	for _, Enemy in enemyFolder:GetChildren() do
		if not args[1] and Enemy:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < 60 then
			args[1] = Enemy:FindFirstChild("HumanoidRootPart");
		elseif Enemy:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < 60 then
			table.insert(args[2], {
				[1] = Enemy,
				[2] = Enemy:FindFirstChild("HumanoidRootPart")
			});
		end;
	end;
	self:AttackEnemy(unpack(args));
end;
function AttackModule:BladeHits()
	self:AttackNearest();
end;
function Attack()
	if not _G.Settings.Main["Auto Farm Fruit Mastery"] or (not _G.Settings.Main["Auto Farm Gun Mastery"]) then
		if _G.Settings.Setting["Fast Attack"] then
			AttackModule:BladeHits();
		else
			AttackModule:BladeHits();
		end;
	end;
end;
Tabs.SettingsTab:Section({ Title = "Graphic" })
Tabs.SettingsTab:Toggle({
    Title = "Hide Notifications",
    Value = _G.Settings.Setting["Hide Notification"],
    Desc = "Invisible Notification",
    Callback = function(value)
        _G.Settings.Setting["Hide Notification"] = value
    end
})
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Hide Notification"] then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false;
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true;
		end;
	end;
end);
Tabs.SettingsTab:Toggle({
    Title = "Hide Damage Text",
    Value = _G.Settings.Setting["Hide Damage Text"],
    Desc = "Invisible Damage Text",
    Callback = function(value)
        _G.Settings.Setting["Hide Damage Text"] = value
    end
})
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Hide Damage Text"] then
			(game:GetService("ReplicatedStorage")).Assets.GUI.DamageCounter.Enabled = false;
		else
			(game:GetService("ReplicatedStorage")).Assets.GUI.DamageCounter.Enabled = true;
		end;
	end;
end);
Tabs.SettingsTab:Section({ Title = "Mastery Setting" })
Tabs.SettingsTab:Slider({
    Title = "Kill At %",
    Value = {
        Min = 1,
        Max = 100,
        Default = _G.Settings.Setting["Mastery Health"],
    },
    Callback = function(value)
        _G.Settings.Setting["Mastery Health"] = value
    end
})
Tabs.SettingsTab:Section({ Title = "Skill Devil Fruit" })
Tabs.SettingsTab:Toggle({
    Title = "Skill Z",
    Value = _G.Settings.Setting["Fruit Mastery Skill Z"],
    Desc = "Auto Skill Z",
    Callback = function(value)
        _G.Settings.Setting["Fruit Mastery Skill Z"] = value
    end
})
Tabs.SettingsTab:Toggle({
    Title = "Skill X",
    Value = _G.Settings.Setting["Fruit Mastery Skill X"],
    Desc = "Auto Skill X",
    Callback = function(value)
        _G.Settings.Setting["Fruit Mastery Skill X"] = value
    end
})
Tabs.SettingsTab:Toggle({
    Title = "Skill C",
    Value = _G.Settings.Setting["Fruit Mastery Skill C"],
    Desc = "Auto Skill C",
    Callback = function(value)
        _G.Settings.Setting["Fruit Mastery Skill C"] = value
    end
})
Tabs.SettingsTab:Toggle({
    Title = "Skill V",
    Value = _G.Settings.Setting["Fruit Mastery Skill V"],
    Desc = "Auto Skill V",
    Callback = function(value)
        _G.Settings.Setting["Fruit Mastery Skill V"] = value
    end
})
Tabs.SettingsTab:Toggle({
    Title = "Skill F",
    Value = _G.Settings.Setting["Fruit Mastery Skill F"],
    Desc = "Auto Skill F",
    Callback = function(value)
        _G.Settings.Setting["Fruit Mastery Skill F"] = value
    end
})
Tabs.SettingsTab:Section({ Title = "Skill Gun" })
Tabs.SettingsTab:Toggle({
    Title = "Skill Z",
    Value = _G.Settings.Setting["Gun Mastery Skill Z"],
    Desc = "Auto Skill Z",
    Callback = function(value)
        _G.Settings.Setting["Gun Mastery Skill Z"] = value
    end
})
Tabs.SettingsTab:Toggle({
    Title = "Skill X",
    Value = _G.Settings.Setting["Gun Mastery Skill X"],
    Desc = "Auto Skill X",
    Callback = function(value)
        _G.Settings.Setting["Gun Mastery Skill X"] = value
    end
})
Tabs.SettingsTab:Section({ Title = "Other" })
Tabs.SettingsTab:Toggle({
    Title = "Auto Set Spawn Point",
    Value = _G.Settings.Setting["Auto Set Spawn Point"],
    Desc = "Set Spawn Point",
    Callback = function(value)
        _G.Settings.Setting["Auto Set Spawn Point"] = value
    end
})
spawn(function()
	while wait(2) do
		if _G.Settings.Setting["Auto Set Spawn Point"] then
			pcall(function()
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetSpawnPoint");
			end);
		end;
	end;
end);
Tabs.SettingsTab:Toggle({
    Title = "Auto Observation",
    Value = _G.Settings.Setting["Auto Observation"],
    Desc = "Auto Active Observation",
    Callback = function(value)
        _G.Settings.Setting["Auto Observation"] = value
    end
})
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Auto Observation"] then
			if not (game:GetService("Players")).LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
				(game:GetService("VirtualUser")):CaptureController();
				(game:GetService("VirtualUser")):SetKeyDown("0x65");
				wait();
				(game:GetService("VirtualUser")):SetKeyUp("0x65");
			end;
		end;
	end;
end);
Tabs.SettingsTab:Toggle({
    Title = "Auto Haki",
    Value = _G.Settings.Setting["Auto Haki"],
    Desc = "Auto Active Buso",
    Callback = function(value)
        _G.Settings.Setting["Auto Haki"] = value
    end
})
Tabs.SettingsTab:Toggle({
    Title = "Auto Rejoin",
    Value = _G.Settings.Setting["Auto Rejoin"],
    Desc = "Auto Rejoin if disconnected or get kicked",
    Callback = function(value)
        _G.Settings.Setting["Auto Rejoin"] = value
    end
})
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Auto Rejoin"] then
			game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v)
				if v.Name == "ErrorPrompt" and v:FindFirstChild("MessageArea") and v.MessageArea:FindFirstChild("ErrorFrame") then
					(game:GetService("TeleportService")):Teleport(game.PlaceId);
				end;
			end);
		end;
	end;
end);
spawn(function()
	while wait(0.2) do
		if _G.Settings.Setting["Auto Haki"] then
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local args = {
					[1] = "Buso"
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
		end;
	end;
end);
Tabs.SettingsTab:Toggle({
    Title = "Bypass Anti Cheat",
    Value = _G.Settings.Setting["Bypass Anti Cheat"],
    Desc = "Reset Flags",
    Callback = function(value)
        _G.Settings.Setting["Bypass Anti Cheat"] = value
    end
})
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.Settings.Setting["Bypass Anti Cheat"] then
				for i, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetDescendants()) do
					if v:IsA("LocalScript") then
						if v.Name == "General" or v.Name == "Shiftlock" or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
							v:Destroy();
						end;
					end;
				end;
				for i, v in pairs((game:GetService("Players")).LocalPlayer.PlayerScripts:GetDescendants()) do
					if v:IsA("LocalScript") then
						if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans" or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp" or v.Name == "PlayerList" then
							v:Destroy();
						end;
					end;
				end;
			end;
		end);
	end;
end);
Tabs.HoldTab:Section({ Title = "Mastery" })
Tabs.HoldTab:Slider({
    Title = "Skill Z",
    Value = {
        Min = 0,
        Max = 5,
        Default = _G.Settings.Hold["Hold Mastery Skill Z"],
    },
    Callback = function(value)
        _G.Settings.Hold["Hold Mastery Skill Z"] = value
    end
})
Tabs.HoldTab:Slider({
    Title = "Skill X",
    Value = {
        Min = 0,
        Max = 5,
        Default = _G.Settings.Hold["Hold Mastery Skill X"],
    },
    Callback = function(value)
        _G.Settings.Hold["Hold Mastery Skill X"] = value
    end
})
Tabs.HoldTab:Slider({
    Title = "Skill C",
    Value = {
        Min = 0,
        Max = 5,
        Default = _G.Settings.Hold["Hold Mastery Skill C"],
    },
    Callback = function(value)
        _G.Settings.Hold["Hold Mastery Skill C"] = value
    end
})
Tabs.HoldTab:Slider({
    Title = "Skill V",
    Value = {
        Min = 0,
        Max = 5,
        Default = _G.Settings.Hold["Hold Mastery Skill V"],
    },
    Callback = function(value)
        _G.Settings.Hold["Hold Mastery Skill V"] = value
    end
})
Tabs.HoldTab:Slider({
    Title = "Skill F",
    Value = {
        Min = 0,
        Max = 5,
        Default = _G.Settings.Hold["Hold Mastery Skill F"],
    },
    Callback = function(value)
        _G.Settings.Hold["Hold Mastery Skill F"] = value
    end
})
if World3 then
    Tabs.HoldTab:Section({ Title = "Sea Event" })
    Tabs.HoldTab:Slider({
        Title = "Skill Z",
        Value = {
            Min = 0,
            Max = 5,
            Default = _G.Settings.Hold["Hold Sea Skill Z"],
        },
        Callback = function(value)
            _G.Settings.Hold["Hold Sea Skill Z"] = value
        end
    })
    Tabs.HoldTab:Slider({
        Title = "Skill X",
        Value = {
            Min = 0,
            Max = 5,
            Default = _G.Settings.Hold["Hold Sea Skill Z"],
        },
        Callback = function(value)
            _G.Settings.Hold["Hold Sea Skill Z"] = value
        end
    })
    Tabs.HoldTab:Slider({
        Title = "Skill C",
        Value = {
            Min = 0,
            Max = 5,
            Default = _G.Settings.Hold["Hold Sea Skill C"],
        },
        Callback = function(value)
            _G.Settings.Hold["Hold Sea Skill C"] = value
        end
    })
    Tabs.HoldTab:Slider({
        Title = "Skill V",
        Value = {
            Min = 0,
            Max = 5,
            Default = _G.Settings.Hold["Hold Sea Skill V"],
        },
        Callback = function(value)
            _G.Settings.Hold["Hold Sea Skill V"] = value
        end
    })
    Tabs.HoldTab:Slider({
        Title = "Skill F",
        Value = {
            Min = 0,
            Max = 5,
            Default = _G.Settings.Hold["Hold Sea Skill F"],
        },
        Callback = function(value)
            _G.Settings.Hold["Hold Sea Skill F"] = value
        end
    })
end
if World1 or World2 then
    Tabs.ItemsTab:Section({ Title = "World" })
end
if World1 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Second Sea",
        Value = _G.Settings.Items["Auto Second Sea"],
        Callback = function(value)
            _G.Settings.Items["Auto Second Sea"] = value
            StopTween(_G.Settings.Items["Auto Second Sea"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Second Sea"] then
				pcall(function()
					local MyLevel = (game:GetService("Players")).LocalPlayer.Data.Level.Value;
					if MyLevel >= 700 and World1 then
						if (game:GetService("Workspace")).Map.Ice.Door.CanCollide == false and (game:GetService("Workspace")).Map.Ice.Door.Transparency == 1 then
							local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877);
							repeat
								topos(CFrame1);
								wait();
							until (CFrame1.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.Settings.Items["Auto Second Sea"] == false;
							wait(1.1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
							wait(0.5);
							EquipWeapon("Key");
							repeat
								topos(CFrame.new(1347.7124, 37.3751602, -1325.6488));
								wait();
							until (Vector3.new(1347.7124, 37.3751602, (-1325.6488)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.Settings.Items["Auto Second Sea"] == false;
							wait(0.5);
						elseif (game:GetService("Workspace")).Map.Ice.Door.CanCollide == false and (game:GetService("Workspace")).Map.Ice.Door.Transparency == 1 then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Ice Admiral") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Ice Admiral" then
										if not v.Humanoid.Health <= 0 then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												OldCFrameSecond = v.HumanoidRootPart.CFrame;
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													v.HumanoidRootPart.CanCollide = false;
													v.Humanoid.WalkSpeed = 0;
													v.Head.CanCollide = false;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													v.HumanoidRootPart.CFrame = OldCFrameSecond;
													topos(v.HumanoidRootPart.CFrame * Pos);
													Attack();
												until not _G.Settings.Items["Auto Second Sea"] or (not v.Parent) or v.Humanoid.Health <= 0;
											end;
										else
											(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelDressrosa");
										end;
									end;
								end;
							elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Ice Admiral") then
								topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Ice Admiral")).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7));
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Third Sea",
        Value = _G.Settings.Items["Auto Third Sea"],
        Callback = function(value)
            _G.Settings.Items["Auto Third Sea"] = value
            StopTween(_G.Settings.Items["Auto Third Sea"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Third Sea"] then
				pcall(function()
					if (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 1500 and World2 then
						_G.Settings.Main["Auto Farm"] = false;
						if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ZQuestProgress", "General") == 0 then
							topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016));
							if ((CFrame.new((-1926.3221435547), 12.819851875305, 1738.3092041016)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								wait(1.5);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
							end;
							wait(1.8);
							if (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "rip_indra" then
										OldCFrameThird = v.HumanoidRootPart.CFrame;
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.CFrame = OldCFrameThird;
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.CanCollide = false;
											v.Humanoid.WalkSpeed = 0;
											Attack();
											(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelZou");
										until _G.Settings.Items["Auto Third Sea"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
									end;
								end;
							elseif not (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") and ((CFrame.new((-26880.93359375), 22.848554611206, 473.18951416016)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
								topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016));
							end;
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Farm Factory",
        Value = _G.Settings.Items["Auto Farm Factory"],
        Callback = function(value)
            _G.Settings.Items["Auto Farm Factory"] = value
            StopTween(_G.Settings.Items["Auto Farm Factory"])
        end
    })
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Farm Factory"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Core") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Core" and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									topos(CFrame.new(448.46756, 199.356781, -441.389252));
									AttackOld();
								until v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Farm Factory"] == false;
							end;
						end;
					else
						topos(CFrame.new(448.46756, 199.356781, -441.389252));
					end;
				end;
			end);
		end;
	end);
elseif World3 then
    Tabs.SeaStackTab:Section({ Title = "Prehistoric Island" })
    Prehistoriccheck = Tabs.SeaStackTab:Paragraph({
        Title = "Prehistoric Island",
        Desc = "Prehistoric Island Not Spawn"
    })
    spawn(function()
        while wait(0.2) do
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
                    Prehistoriccheck:SetDesc("🦴 Prehistoric Island Spawning")
                    _G.PrehistoricSpawn = true
                else
                    Prehistoriccheck:SetDesc("🦴 Prehistoric Island Not Spawn")
                    _G.PrehistoricSpawn = false
                end
            end)
        end
    end)
    Tabs.SeaStackTab:Toggle({
        Title = "Summon Prehistoric Island",
        Value = _G.Settings.SeaStack["Summon Prehistoric Island"],
        Desc = "Need Volcano Magnet",
        Callback = function(value)
            _G.Settings.SeaStack["Summon Prehistoric Island"] = value
            StopTween(_G.Settings.SeaStack["Summon Prehistoric Island"])
            if TweenBoatPrehistoric then
                TweenBoatPrehistoric:Stop()
            end
        end
    })
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaStack["Summon Prehistoric Island"] then
					if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
							BTP(BuyBoatCFrame);
						else
							BuyBoat = topos(BuyBoatCFrame);
						end;
						if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Stop();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
							wait(1);
						end;
					elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						repeat
							wait();
							if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
								if TweenBoatPrehistoric then
									TweenBoatPrehistoric:Stop();
								end;
								local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
							elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
								TweenBoatPrehistoric = TweenBoat(CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
							end;
						until not _G.Settings.SeaStack["Summon Prehistoric Island"] or game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island");
						if TweenBoatPrehistoric then
							TweenBoatPrehistoric:Stop();
						end;
					end;
				end;
			end);
		end;
	end);
    Tabs.SeaStackTab:Toggle({
        Title = "Tween To Prehistoric Island",
        Value = _G.Settings.SeaStack["Tween To Prehistoric Island"],
        Desc = "Need Spawn Prehistoric Island",
        Callback = function(value)
            _G.Settings.SeaStack["Tween To Prehistoric Island"] = value
            StopTween(_G.Settings.SeaStack["Tween To Prehistoric Island"])
        end
    })
    spawn(function()
		while wait() do
			if _G.Settings.SeaStack["Tween To Prehistoric Island"] then
				pcall(function()
					if (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
						topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Prehistoric Island")).CFrame);
					end;
				end);
			end;
		end;
	end);
    Tabs.SeaStackTab:Toggle({
        Title = "Auto Kill Lava Golem",
        Value = _G.Settings.SeaStack["Auto Kill Lava Golem"],
        Desc = "Need Spawn Prehistoric Island",
        Callback = function(value)
            _G.Settings.SeaStack["Auto Kill Lava Golem"] = value
            StopTween(_G.Settings.SeaStack["Auto Kill Lava Golem"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.DragonDojo["Auto Kill Lava Golem"] then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Golem") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Lava Golem" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.DragonDojo["Auto Kill Lava Golem"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
    Tabs.SeaStackTab:Section({ Title = "Frozen Dimension" })
    Frozencheck = Tabs.SeaStackTab:Paragraph({
        Title = "Frozen Dimension",
        Desc = "Frozen Dimension Not Spawn"
    })
    spawn(function()
        while wait(0.2) do
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
                    Frozencheck:SetDesc("❄️ Frozen Dimension Spawning")
                    _G.FrozenSpawn = true
                else
                    Frozencheck:SetDesc("❄️ Frozen Dimension Not Spawn")
                    _G.FrozenSpawn = false
                end
            end)
        end
    end)
    Tabs.SeaStackTab:Toggle({
        Title = "Teleport To Frozen Dimension",
        Value = _G.Settings.SeaStack["Teleport To Frozen Dimension"],
        Desc = "Tween Player To Frozen Dimension",
        Callback = function(value)
            _G.Settings.SeaStack["Teleport To Frozen Dimension"] = value
            StopTween(_G.Settings.SeaStack["Teleport To Frozen Dimension"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaStack["Teleport To Frozen Dimension"] then
				pcall(function()
					repeat
						wait();
						topos(CFrame.new((game:GetService("Workspace")).Map.FrozenDimension.Center.Position.X, 500, (game:GetService("Workspace")).Map.FrozenDimension.Center.Position.Z));
					until not _G.Settings.SeaStack["Teleport To Frozen Dimension"];
				end);
			end;
		end;
	end);
    Tabs.SeaStackTab:Toggle({
        Title = "Sail To Frozen Dimension",
        Value = _G.Settings.SeaStack["Sail To Frozen Dimension"],
        Desc = "Tween Boat To Frozen Dimension",
        Callback = function(value)
            _G.Settings.SeaStack["Sail To Frozen Dimension"] = value
            StopTween(_G.Settings.SeaStack["Sail To Frozen Dimension"])
        end
    })
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaStack["Sail To Frozen Dimension"] then
					if (game:GetService("Workspace")).Map:FindFirstChild("FrozenDimension") then
						if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
							local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
							if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
								BTP(BuyBoatCFrame);
							else
								BuyBoat = topos(BuyBoatCFrame);
							end;
							if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
								if BuyBoat then
									BuyBoat:Stop();
								end;
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
								wait(1);
							end;
						elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
							repeat
								wait();
								if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
									local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
								elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
									local stopboat = TweenBoat(CFrame.new((game:GetService("Workspace")).Map.FrozenDimension.Center.Position.X, 0, (game:GetService("Workspace")).Map.FrozenDimension.Center.Position.Z));
								end;
							until not _G.Settings.SeaStack["Sail To Frozen Dimension"];
							stopboat:Stop();
						end;
					end;
				end;
			end);
		end;
	end);
    Tabs.SeaStackTab:Toggle({
        Title = "Summon Frozen Dimension",
        Value = _G.Settings.SeaStack["Summon Frozen Dimension"],
        Desc = "Spawn Frozen Dimension",
        Callback = function(value)
            _G.Settings.SeaStack["Summon Frozen Dimension"] = value
            StopTween(_G.Settings.SeaStack["Summon Frozen Dimension"])
            if TweenBoatFrozen then
                TweenBoatFrozen:Stop()
            end
        end
    })
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaStack["Summon Frozen Dimension"] then
					if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
							BTP(BuyBoatCFrame);
						else
							BuyBoat = topos(BuyBoatCFrame);
						end;
						if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Stop();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
							wait(1);
						end;
					elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						repeat
							wait();
							if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
								if TweenBoatFrozen then
									TweenBoatFrozen:Stop();
								end;
								local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
							elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
								TweenBoatFrozen = TweenBoat(CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536));
							end;
						until not _G.Settings.SeaStack["Summon Frozen Dimension"] or game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension");
						if TweenBoatFrozen then
							TweenBoatFrozen:Stop();
						end;
					end;
				end;
			end);
		end;
	end);
    local BribeStatus = Tabs.SeaStackTab:Paragraph({
        Title = "Leviathan Status",
        Desc = "Leviathan Status"
    })
    Tabs.SeaStackTab:Button({
        Title = "Bribe Leviathan ( Buy Info Leviathan )",
        Callback = function()
            local Status = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "2")
            BribeStatus:SetDesc("Leviathan Status: " .. Status)
        end
    })
    function GetHighestPoint()
		for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland:GetDescendants()) do
			if v:IsA("MeshPart") then
				if v.MeshId == "rbxassetid://6745037796" then
					return v;
				end;
			end;
		end;
	end;
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Tween To Highest Mirage"] then
					if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
						topos((GetHighestPoint()).CFrame * CFrame.new(0, 211.88, 0));
					end;
				end;
			end;
		end);
	end);
    Tabs.SeaStackTab:Section({ Title = "Kitsune Island" })
    Kitsunecheck = Tabs.SeaStackTab:Paragraph({
        Title = "Kitsune Island",
        Desc = "Kitsune Island Not Spawn"
    })    
    spawn(function()
        while wait(0.2) do
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                    Kitsunecheck:SetDesc("⛩️ Kitsune Island Spawning")
                    _G.KitsuneSpawn = true
                else
                    Kitsunecheck:SetDesc("⛩️ Kitsune Island Not Spawn")
                    _G.KitsuneSpawn = false
                end
            end)
        end
    end)
    Tabs.SeaStackTab:Toggle({
        Title = "Summon Kitsune Island",
        Value = _G.Settings.SeaStack["Summon Kitsune Island"],
        Desc = "Spawn Kitsune Island",
        Callback = function(value)
            _G.Settings.SeaStack["Summon Kitsune Island"] = value
            StopTween(_G.Settings.SeaStack["Summon Kitsune Island"])
            if TweenBoatKitsune then
                TweenBoatKitsune:Stop()
            end
        end
    })
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaStack["Summon Kitsune Island"] then
					if not (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
							BTP(BuyBoatCFrame);
						else
							BuyBoatKitsune = topos(BuyBoatCFrame);
						end;
						if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoatKitsune then
								BuyBoatKitsune:Stop();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
							wait(1);
						end;
					elseif (game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
						repeat
							wait();
							if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
								if TweenBoatKitsune then
									TweenBoatKitsune:Stop();
								end;
								local stoppos = topos(((game:GetService("Workspace")).Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"])).VehicleSeat.CFrame * CFrame.new(0, 1, 0));
							elseif (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == true then
								TweenBoatKitsune = TweenBoat(CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372));
							end;
						until not _G.Settings.SeaStack["Summon Kitsune Island"] or game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island");
						if TweenBoatKitsune then
							TweenBoatKitsune:Stop();
						end;
					end;
				end;
			end);
		end;
	end);
    Tabs.SeaStackTab:Toggle({
        Title = "Teleport To Kitsune Island",
        Value = _G.Settings.SeaStack["Teleport To Kitsune Island"],
        Desc = "Tween To Kitsune Island",
        Callback = function(value)
            _G.Settings.SeaStack["Teleport To Kitsune Island"] = value
            StopTween(_G.Settings.SeaStack["Teleport To Kitsune Island"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaStack["Teleport To Kitsune Island"] then
				if (game:GetService("Workspace")).Map:FindFirstChild("KitsuneIsland") then
					topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0, 0, 10));
				end;
			end;
		end;
	end);
    Tabs.SeaStackTab:Toggle({
        Title = "Auto Collect Azure Ember",
        Value = _G.Settings.SeaStack["Auto Collect Azure Ember"],
        Desc = "Tween To Azure Ember",
        Callback = function(value)
            _G.Settings.SeaStack["Auto Collect Azure Ember"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaStack["Auto Collect Azure Ember"] then
				pcall(function()
					if (game:GetService("Workspace")):FindFirstChild("AttachedAzureEmber") then
						topos((((game:GetService("Workspace")):WaitForChild("EmberTemplate")):FindFirstChild("Part")).CFrame);
					end;
				end);
			end;
		end;
	end);
    Tabs.SeaStackTab:Slider({
        Title = "Set Azure Ember",
        Value = {
            Min = 10,
            Max = 25,
            Default = _G.Settings.SeaStack["Set Azure Ember"],
        },
        Callback = function(value)
            _G.Settings.SeaStack["Set Azure Ember"] = value
        end
    })
    Tabs.SeaStackTab:Toggle({
        Title = "Auto Trade Azure Ember",
        Value = _G.Settings.SeaStack["Auto Trade Azure Ember"],
        Desc = "Trade Azure Ember",
        Callback = function(value)
            _G.Settings.SeaStack["Auto Trade Azure Ember"] = value
        end
    })
    function GetCountMaterials(MaterialName)
		local Inventory = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventory");
		for i, v in pairs(Inventory) do
			if v.Name == MaterialName then
				return v.Count;
			end;
		end;
	end;
	spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaStack["Auto Trade Azure Ember"] then
				pcall(function()
					local AzureAvilable = GetCountMaterials("Azure Ember");
					if AzureAvilable >= _G.Settings.SeaStack["Set Azure Ember"] then
						((game:GetService("ReplicatedStorage")).Modules.Net:FindFirstChild("RF/KitsuneStatuePray")):InvokeServer();
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("KitsuneStatuePray");
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"] then
					if (game:GetService("Workspace")).NPCs:FindFirstChild("Advanced Fruit Dealer") then
						topos(CFrame.new((game:GetService("Workspace")).NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position));
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Find Blue Gear"] then
					if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
						for i, v in pairs((game:GetService("Workspace")).Map.MysticIsland:GetChildren()) do
							if v:IsA("MeshPart") then
								if v.Material == Enum.Material.Neon then
									topos(v.CFrame);
								end;
							end;
						end;
					end;
				end;
			end;
		end);
	end);
end;
if World2 or World3 then
    Tabs.SeaStackTab:Section({ Title = "Mirage Island" })
    Mirragecheck = Tabs.SeaStackTab:Paragraph({
        Title = "Mirage Island",
        Desc = "Mirage Island Not Spawn"
    })
    spawn(function()
        pcall(function()
            while wait(0.2) do
                if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
                    Mirragecheck:SetDesc("🏝️ Mirage Island Spawning")
                    _G.MirageSpawn = true
                else
                    Mirragecheck:SetDesc("🏝️ Mirage Island Not Spawn")
                    _G.MirageSpawn = false
                end
            end
        end)
    end)
    Tabs.SeaStackTab:Toggle({
        Title = "Teleport To Mirage Island",
        Value = _G.Settings.SeaStack["Teleport To Mirage Island"],
        Desc = "Tween To Mirage Island",
        Callback = function(value)
            _G.Settings.SeaStack["Teleport To Mirage Island"] = value
            StopTween(_G.Settings.SeaStack["Teleport To Mirage Island"])
        end
    })
    Tabs.SeaStackTab:Toggle({
        Title = "Teleport Advanced Fruit Dealer",
        Value = _G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"],
        Desc = "Tween To Advanced Fruit Dealer",
        Callback = function(value)
            _G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"] = value
            StopTween(_G.Settings.SeaStack["Teleport To Advanced Fruit Dealer"])
        end
    })
    if World2 then
        Tabs.SeaStackTab:Section({ Title = "Sea Beast" })
        Tabs.SeaStackTab:Toggle({
            Title = "Auto Attack Seabeasts",
            Value = _G.Settings.SeaStack["Auto Attack Seabeasts"],
            Desc = "Need spawn seabeasts",
            Callback = function(value)
                _G.Settings.SeaStack["Auto Attack Seabeasts"] = value
                StopTween(_G.Settings.SeaStack["Auto Attack Seabeasts"])
            end
        })
        spawn(function()
			pcall(function()
				while wait() do
					if _G.Settings.SeaStack["Auto Attack Seabeasts"] then
						if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
							for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
								if CheckSeaBeast() then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0);
										if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 400 then
											_G.SeaSkill = true;
										else
											_G.SeaSkill = false;
										end;
										AutoHaki();
										Skillaimbot = true;
										AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
										if SBAttacking then
											topos(CFrameSeaBeast * CFrame.new(math.random(100, 300), 100, math.random(100, 300)));
										else
											topos(CFrameSeaBeast * CFrame.new(0, 100, 0));
										end;
									until not _G.Settings.SeaEvent["Auto Farm Seabeasts"] or CheckSeaBeast() == false or (not v:FindFirstChild("Humanoid")) or (not v:FindFirstChild("HumanoidRootPart")) or v.Humanoid.Health < 0 or (not v.Parent);
									Skillaimbot = false;
									_G.SeaSkill = false;
								else
									Skillaimbot = false;
									_G.SeaSkill = false;
								end;
							end;
						end;
					end;
				end;
			end);
		end);
	end;
	spawn(function()
		pcall(function()
			while wait() do
				if _G.Settings.SeaStack["Teleport To Mirage Island"] then
					if (game:GetService("Workspace")).Map:FindFirstChild("MysticIsland") then
						topos(CFrame.new((game:GetService("Workspace")).Map.MysticIsland.Center.Position.X, 500, (game:GetService("Workspace")).Map.MysticIsland.Center.Position.Z));
					end;
				end;
			end;
		end);
	end);
end;
if World3 then
    Tabs.DragonDojoTab:Section({ Title = "Dragon Dojo" })
    function getBlazeEmberQuest()
		local ResQuest = ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer({
			Context = "Check"
		});
		if ResQuest then
			for key, value in pairs(ResQuest) do
				if key == "Text" then
					return value;
				end;
			end;
		end;
	end;
	function getRequestQuest()
		local Req = ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer({
			Context = "RequestQuest"
		});
		return Req;
	end;
	function getIsOnQuest()
		local ResQuest = ((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer({
			Context = "Check"
		});
		if ResQuest then
			for key, value in pairs(ResQuest) do
				if key == "Text" then
					if string.find(value, "Venomous Assailant") or string.find(value, "Hydra Enforcer") or string.find(value, "Destroy 10 trees") then
						return true;
					end;
				end;
			end;
		end;
		return false;
	end;
	spawn(function()
		while wait(0.2) do
			if _G.Settings.DragonDojo["Auto Farm Blaze Ember"] then
				pcall(function()
					if not _G.OnBlzeQuest and (not getIsOnQuest()) then
						local DragonHunterPos = CFrame.new(5864.86377, 1209.55066, 812.775024, 0.879059196, 0.00000000381980803, 0.476712614, -0.0000000131110456, 1, 0.0000000161639893, -0.476712614, -0.0000000204593036, 0.879059196);
						topos(DragonHunterPos);
						((((game:GetService("ReplicatedStorage")):WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/DragonHunter")):InvokeServer({
							Context = "RequestQuest"
						});
					end;
					SaveBlazeEmberQuest();
					_G.OnBlzeQuest = true;
				end);
			end;
		end;
	end);
	function SaveBlazeEmberQuest()
		if string.find(getBlazeEmberQuest(), "Venomous Assailant") then
			_G.BlazeEmberQuest = "Venomous Assailant";
		elseif string.find(getBlazeEmberQuest(), "Hydra Enforcer") then
			_G.BlazeEmberQuest = "Hydra Enforcer";
		elseif string.find(getBlazeEmberQuest(), "Destroy 10 trees") then
			_G.BlazeEmberQuest = "Destroy 10 trees";
		end;
	end;
	_G.OnBlzeQuest = false;
	spawn(function()
		while wait(0.2) do
			if isQuestCompleated() then
				_G.OnBlzeQuest = false;
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.DragonDojo["Auto Farm Blaze Ember"] then
				pcall(function()
					if _G.BlazeEmberQuest == "Venomous Assailant" and _G.OnBlzeQuest then
						autoKillVenemousAssailant();
					elseif _G.BlazeEmberQuest == "Hydra Enforcer" and _G.OnBlzeQuest then
						autoKillHydraEnforcer();
					elseif _G.BlazeEmberQuest == "Destroy 10 trees" and _G.OnBlzeQuest then
						autoDestroyHydraTrees();
					end;
				end);
			end;
		end;
	end);
	function isQuestCompleated()
		for i, v in pairs((game:GetService("Players")).LocalPlayer.PlayerGui.Notifications:GetChildren()) do
			for _, Notif in pairs(v:GetChildren()) do
				if string.find(Notif.Text, "Task completed!") or string.find(Notif.Text, "Head back to the Dojo") then
					return true;
				end;
			end;
		end;
		return false;
	end;
	function CollectBlazeEmber()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (((game:GetService("Workspace")):WaitForChild("EmberTemplate")):FindFirstChild("Part")).CFrame;
	end;
    Tabs.DragonDojoTab:Toggle({
        Title = "Auto Farm Blaze Ember",
        Value = _G.Settings.DragonDojo["Auto Farm Blaze Ember"],
        Desc = "Auto Farm Blaze Ember",
        Callback = function(value)
            _G.Settings.DragonDojo["Auto Farm Blaze Ember"] = value
            StopTween(_G.Settings.DragonDojo["Auto Farm Blaze Ember"])
        end
    })
    function autoKillVenemousAssailant()
		if not (game:GetService("Workspace")).Enemies:FindFirstChild("Venomous Assailant") then
			topos(CFrame.new(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, 1, -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
		else
			for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
				if v.Name == "Venomous Assailant" then
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						repeat
							(game:GetService("RunService")).Heartbeat:wait();
							AutoHaki();
							EquipWeapon(_G.Settings.Main["Selected Weapon"]);
							v.HumanoidRootPart.CanCollide = false;
							v.Humanoid.WalkSpeed = 0;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
							PosMon = v.HumanoidRootPart.CFrame;
							MonFarm = v.Name;
							topos(v.HumanoidRootPart.CFrame * Pos);
							Attack();
						until not v.Parent or v.Humanoid.Health <= 0 or (not _G.Settings.DragonDojo["Auto Farm Blaze Ember"]) or (not _G.OnBlzeQuest);
					end;
				end;
			end;
		end;
	end;
	function autoKillHydraEnforcer()
		if not (game:GetService("Workspace")).Enemies:FindFirstChild("Hydra Enforcer") then
			topos(CFrame.new(4789.29639, 1078.59082, 962.764099, -0.381989956, 0.0000000198627319, 0.924166501, 0.0000000126859874, 1, -0.0000000162490341, -0.924166501, 0.00000000551699708, -0.381989956));
		else
			for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
				if v.Name == "Hydra Enforcer" then
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						repeat
							(game:GetService("RunService")).Heartbeat:wait();
							AutoHaki();
							EquipWeapon(_G.Settings.Main["Selected Weapon"]);
							v.HumanoidRootPart.CanCollide = false;
							v.Humanoid.WalkSpeed = 0;
							v.Head.CanCollide = false;
							v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
							PosMon = v.HumanoidRootPart.CFrame;
							MonFarm = v.Name;
							topos(v.HumanoidRootPart.CFrame * Pos);
							Attack();
						until not v.Parent or v.Humanoid.Health <= 0 or (not _G.Settings.DragonDojo["Auto Farm Blaze Ember"]) or (not _G.OnBlzeQuest);
					end;
				end;
			end;
		end;
	end;
	function autoDestroyHydraTrees()
		local Pos1 = CFrame.new(5260.28223, 1004.24329, 347.062622, 0.923247099, -0.00000000370291953, 0.384206682, -0.000000000671108058, 1, 0.0000000112505019, -0.384206682, -0.0000000106448379, 0.923247099);
		local Pos2 = CFrame.new(5237.94775, 1004.24329, 429.596344, 0.371416599, 0.00000000207420636, 0.92846632, 0.00000000476562345, 1, -0.00000000414041734, -0.92846632, 0.00000000596254068, 0.371416599);
		local Pos3 = CFrame.new(5320.87793, 1004.24329, 439.152954, 0.136340275, -0.0000000995428806, -0.990662038, 0.0000000610136723, 1, -0.0000000920841288, 0.990662038, -0.0000000478891593, 0.136340275);
		local Pos4 = CFrame.new(5346.70752, 1004.24329, 359.389008, 0.296962529, 0.0000000642768185, -0.954889119, -0.0000000737323518, 1, 0.0000000443832349, 0.954889119, 0.0000000572260639, 0.296962529);
		local myPos = (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame;
		if (myPos.Position - Pos1.Position).Magnitude <= 3 then
			useAllSkill();
		else
			topos(Pos1);
		end;
		if (myPos.Position - Pos2.Position).Magnitude <= 3 then
			useAllSkill();
		else
			topos(Pos2);
		end;
		if (myPos.Position - Pos3.Position).Magnitude <= 3 then
			useAllSkill();
		else
			topos(Pos3);
		end;
		if (myPos.Position - Pos4.Position).Magnitude <= 3 then
			useAllSkill();
		else
			topos(Pos4);
		end;
	end;
	function useAllSkill()
		if DoneSkillFruit == false then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Blox Fruit" then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					end;
				end;
			end;
			(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "F", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "F", false, game);
			DoneSkillFruit = true;
		end;
		if DoneSkillMelee == false then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Melee" then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					end;
				end;
			end;
			(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
			DoneSkillMelee = true;
		end;
		if DoneSkillSword == false then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Sword" then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					end;
				end;
			end;
			(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
			wait(0);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
			DoneSkillSword = true;
		end;
		if DoneSkillGun == false then
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					if v.ToolTip == "Gun" then
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
					end;
				end;
			end;
			(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
			wait(0.1);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
			(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
			wait(0.1);
			(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
			DoneSkillGun = true;
		end;
		DoneSkillGun = false;
		DoneSkillSword = false;
		DoneSkillFruit = false;
		DoneSkillMelee = false;
	end;
    Tabs.DragonDojoTab:Toggle({
        Title = "Auto Collect Blaze Ember",
        Value = _G.Settings.DragonDojo["Auto Collect Blaze Ember"],
        Callback = function(value)
            _G.Settings.DragonDojo["Auto Collect Blaze Ember"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.DragonDojo["Auto Collect Blaze Ember"] then
				pcall(function()
					if ((game:GetService("Workspace")):WaitForChild("EmberTemplate")):FindFirstChild("Part") then
						CollectBlazeEmber();
					end;
				end);
			end;
		end;
	end);
    Tabs.DragonDojoTab:Button({
        Title = "Teleport To Dragon Hunter",
        Callback = function()
            topos(CFrame.new(5864.86377, 1209.55066, 812.775024, 0.879059196, 0.00000000381980803, 0.476712614, -0.0000000131110456, 1, 0.0000000161639893, -0.476712614, -0.0000000204593036, 0.879059196))
        end
    })
    Tabs.DragonDojoTab:Button({
        Title = "Craft Volcanic Magnet",
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("CraftItem", "Craft", "Volcanic Magnet")
        end
    })
    Tabs.CraftTab:Section({ Title = "Scroll Crafts" })
    Tabs.CraftTab:Toggle({
        Title = "Auto Craft Common Scroll",
        Value = _G.Settings.Craft["Auto Craft Common Scroll"],
        Desc = "Craft Common Scroll",
        Callback = function(value)
            _G.Settings.Craft["Auto Craft Common Scroll"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Craft["Auto Craft Common Scroll"] then
				pcall(function()
					repeat
						wait(1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "CommonScroll");
					until not _G.Settings.Craft["Auto Craft Common Scroll"];
				end);
			end;
		end;
	end);
    Tabs.CraftTab:Toggle({
        Title = "Auto Craft Rare Scroll",
        Value = _G.Settings.Craft["Auto Craft Rare Scroll"],
        Desc = "Craft Rare Scroll",
        Callback = function(value)
            _G.Settings.Craft["Auto Craft Rare Scroll"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Craft["Auto Craft Rare Scroll"] then
				pcall(function()
					repeat
						wait(1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "RareScroll");
					until not _G.Settings.Craft["Auto Craft Rare Scroll"];
				end);
			end;
		end;
	end);
    Tabs.CraftTab:Toggle({
        Title = "Auto Craft Legendary Scroll",
        Value = _G.Settings.Craft["Auto Craft Legendary Scroll"],
        Desc = "Craft Legendary Scroll",
        Callback = function(value)
            _G.Settings.Craft["Auto Craft Legendary Scroll"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Craft["Auto Craft Legendary Scroll"] then
				pcall(function()
					repeat
						wait(1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LegendaryScroll");
					until not _G.Settings.Craft["Auto Craft Legendary Scroll"];
				end);
			end;
		end;
	end);
    Tabs.CraftTab:Toggle({
        Title = "Auto Craft Mythical Scroll",
        Value = _G.Settings.Craft["Auto Craft Mythical Scroll"],
        Desc = "Craft Mythical Scroll",
        Callback = function(value)
            _G.Settings.Craft["Auto Craft Mythical Scroll"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Craft["Auto Craft Mythical Scroll"] then
				pcall(function()
					repeat
						wait(1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CraftItem", "Craft", "MythicalScroll");
					until not _G.Settings.Craft["Auto Craft Mythical Scroll"];
				end);
			end;
		end;
	end);
    Tabs.CraftTab:Section({ Title = "Beast Hunter Crafts" })
    Tabs.CraftTab:Button({
        Title = "Craft Leviathan Crown",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanCrown")
        end
    })
    Tabs.CraftTab:Button({
        Title = "Craft Leviathan Shield",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "LeviathanShield")
        end
    })
    Tabs.CraftTab:Button({
        Title = "Craft Beast Hunter",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "BeastHunter")
        end
    })
    Tabs.CraftTab:Section({ Title = "Shark Hunter Crafts" })
    Tabs.CraftTab:Button({
        Title = "Craft Tooth Necklace",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "ToothNecklace")
        end
    })
    Tabs.CraftTab:Button({
        Title = "Craft Terror Jaw",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "TerrorJaw")
        end
    })
    Tabs.CraftTab:Button({
        Title = "Craft Monster Magnet",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "MonsterMagnet")
        end
    })
end

Tabs.ItemsTab:Section({ Title = "Fighting Style" })
Tabs.ItemsTab:Toggle({
    Title = "Auto Superhuman",
    Value = _G.Settings.Items["Auto Super Human"],
    Callback = function(value)
        _G.Settings.Items["Auto Super Human"] = value
    end
})
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Super Human"] then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 150000 then
					UnEquipWeapon("Combat");
					wait(0.1);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
				end;
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.Settings.Main["Selected Weapon"] = "Superhuman";
				end;
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value <= 299 then
						_G.Settings.Main["Selected Weapon"] = "Black Leg";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value <= 299 then
						_G.Settings.Main["Selected Weapon"] = "Electro";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate")).Level.Value <= 299 then
						_G.Settings.Main["Selected Weapon"] = "Fishman Karate";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value <= 299 then
						_G.Settings.Main["Selected Weapon"] = "Dragon Claw";
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 300000 then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 300000 then
						UnEquipWeapon("Black Leg");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 750000 then
						UnEquipWeapon("Electro");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 750000 then
						UnEquipWeapon("Electro");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate")).Level.Value >= 300 and (game:GetService("Players")).Localplayer.Data.Fragments.Value >= 1500 then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate")).Level.Value >= 300 and (game:GetService("Players")).Localplayer.Data.Fragments.Value >= 1500 then
						UnEquipWeapon("Fishman Karate");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
					end;
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 3000000 then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
					end;
					if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")).Level.Value >= 300 and (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 3000000 then
						UnEquipWeapon("Dragon Claw");
						wait(0.1);
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
					end;
				end;
			end;
		end;
	end);
end);
Tabs.ItemsTab:Toggle({
    Title = "Auto DeathStep",
    Value = _G.Settings.Items["Auto Death Step"],
    Callback = function(value)
        _G.Settings.Items["Auto Death Step"] = value
    end
})
spawn(function()
	while wait(0.2) do
		if _G.Settings.Items["Auto Death Step"] then
			if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value >= 450 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.Settings.Main["Selected Weapon"] = "Death Step";
				end;
				if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg")).Level.Value >= 450 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
					_G.Settings.Main["Selected Weapon"] = "Death Step";
				end;
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg")).Level.Value <= 449 then
					_G.Settings.Main["Selected Weapon"] = "Black Leg";
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBlackLeg");
			end;
		end;
	end;
end);
Tabs.ItemsTab:Toggle({
    Title = "Auto Sharkman Karate",
    Value = _G.Settings.Items["Auto Fishman Karate"],
    Callback = function(value)
        _G.Settings.Items["Auto Fishman Karate"] = value
        StopTween(_G.Settings.Items["Auto Fishman Karate"])
    end
})
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Fishman Karate"] then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyFishmanKarate");
				if string.find((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
					if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Water Key") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Water Key") then
						topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365));
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
					elseif (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate")).Level.Value >= 400 then
					else
						Ms = "Tide Keeper";
						if (game:GetService("Workspace")).Enemies:FindFirstChild(Ms) then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == Ms then
									OldCFrameShark = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.Head.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameShark;
										topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
										Attack();
									until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Fishman Karate"] == false or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Water Key") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Water Key");
								end;
							end;
						else
							topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -0.000000013857326, 0.885206044, 0.0000000040332897, 1, 0.0000000135347511, -0.885206044, -0.00000000272606271, 0.465199202));
							wait(3);
						end;
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
				end;
			end;
		end;
	end);
end);
Tabs.ItemsTab:Toggle({
    Title = "Auto Electric Claw",
    Value = _G.Settings.Items["Auto Electric Claw"],
    Callback = function(value)
        _G.Settings.Items["Auto Electric Claw"] = value
        StopTween(_G.Settings.Items["Auto Electric Claw"])
    end
})
spawn(function()
	pcall(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Electric Claw"] then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") then
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 400 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.Settings.Main["Selected Weapon"] = "Electric Claw";
					end;
					if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 400 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						_G.Settings.Main["Selected Weapon"] = "Electric Claw";
					end;
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value <= 399 then
						_G.Settings.Main["Selected Weapon"] = "Electro";
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectro");
				end;
			end;
			if _G.Settings.Items["Auto Electric Claw"] then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") then
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro")).Level.Value >= 400 or ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro")).Level.Value >= 400 then
						if _G.Settings.Main["Auto Farm"] == false then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-12550.532226563), 336.22631835938, (-7510.4233398438))).Position).Magnitude <= 10;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
						elseif _G.Settings.Main["Auto Farm"] == true then
							_G.Settings.Main["Auto Farm"] = false;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
							wait(2);
							repeat
								task.wait();
								topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-12550.532226563), 336.22631835938, (-7510.4233398438))).Position).Magnitude <= 10;
							wait(1);
							repeat
								task.wait();
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199));
							until not _G.Settings.Items["Auto Electric Claw"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - (CFrame.new((-10371.4717), 330.764496, (-10131.4199))).Position).Magnitude <= 10;
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
							_G.Settings.Main["Selected Weapon"] = "Electric Claw";
							wait(0.1);
							_G.Settings.Main["Auto Farm"] = true;
						end;
					end;
				end;
			end;
		end;
	end);
end);
Tabs.ItemsTab:Toggle({
    Title = "Auto Dragon Talon",
    Value = _G.Settings.Items["Auto Dragon Talon"],
    Callback = function(value)
        _G.Settings.Items["Auto Dragon Talon"] = value
    end
})
spawn(function()
	while wait(0.2) do
		if _G.Settings.Items["Auto Dragon Talon"] then
			if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") then
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.Settings.Main["Selected Weapon"] = "Dragon Talon";
				end;
				if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw")).Level.Value >= 400 then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
					_G.Settings.Main["Selected Weapon"] = "Dragon Talon";
				end;
				if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw")).Level.Value <= 399 then
					_G.Settings.Main["Selected Weapon"] = "Dragon Claw";
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
			end;
		end;
	end;
end);
Tabs.ItemsTab:Toggle({
    Title = "Auto GodHuman",
    Value = _G.Settings.Items["Auto God Human"],
    Callback = function(value)
        _G.Settings.Items["Auto God Human"] = value
    end
})
spawn(function()
    while task.wait(0.2) do
        if _G.Settings.Items["Auto God Human"] then
            pcall(function()
                if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Superhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Superhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Black Leg") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Fishman Karate") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electro") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Claw") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Godhuman") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Godhuman") then
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Superhuman") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Superhuman")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Superhuman") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Superhuman")).Level.Value >= 400 then
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep");
                        end;
                    else
                        WindUI:Notify({
                            Title = "Not Have Superhuman",
                            Duration = 3
                        })
                    end;
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Death Step")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Death Step")).Level.Value >= 400 then
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate");
                        end;
                    else
                        WindUI:Notify({
                            Title = "Not Have Death Step",
                            Duration = 3
                        })
                    end;
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Sharkman Karate")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Sharkman Karate")).Level.Value >= 400 then
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw");
                        end;
                    else
                        WindUI:Notify({
                            Title = "Not Have Sharkman Karate",
                            Duration = 3
                        })
                    end;
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Electric Claw")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Electric Claw")).Level.Value >= 400 then
                            (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon");
                        end;
                    else
                        WindUI:Notify({
                            Title = "Not Have Electric Claw",
                            Duration = 3
                        })
                    end;
                    if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                        if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and ((game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Dragon Talon")).Level.Value >= 400 or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon") and ((game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Dragon Talon")).Level.Value >= 400 then
                            if string.find((game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
                                WindUI:Notify({
                                    Title = "Not Have Enough Material",
                                    Duration = 3
                                })
                            else
                                (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyGodhuman");
                            end;
                        end;
                    else
                        WindUI:Notify({
                            Title = "Not Have Dragon Talon",
                            Duration = 3
                        })
                    end;
                else
                    (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuySuperhuman");
                end;
            end);
        end;
    end
end)
Tabs.FarmTab:Section({ Title = "Materials" })
if World2 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Radioactive",
        Value = _G.Settings.Farm["Auto Farm Radioactive"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Radioactive"] = value
            StopTween(_G.Settings.Farm["Auto Farm Radioactive"])
        end
    })
    local MaterialsPos1 = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Radioactive"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Factory Staff") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Factory Staff" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Radioactive"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570312));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Factory Staff") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Factory Staff")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Mystic Droplet",
        Value = _G.Settings.Farm["Auto Farm Mystic Droplet"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Mystic Droplet"] = value
            StopTween(_G.Settings.Farm["Auto Farm Mystic Droplet"])
        end
    })
    local MaterialsPos2 = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Mystic Droplet"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Water Fighter") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Water Fighter" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Mystic Droplet"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Water Fighter") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Water Fighter")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World1 or World2 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Magma Ore",
        Value = _G.Settings.Farm["Auto Farm Magma Ore"],
        Desc = "Auto Farm Magma Ore",
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Magma Ore"] = value
            StopTween(_G.Settings.Farm["Auto Farm Magma Ore"])
        end
    })
    local MaterialsPos3 = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Magma Ore"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Military Spy") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Military Spy" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Magma Ore"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Military Spy") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Military Spy")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos4 = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Magma Ore"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Lava Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Lava Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Magma Ore"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Lava Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Lava Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World1 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Angel Wings",
        Value = _G.Settings.Farm["Auto Farm Angel Wings"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Angel Wings"] = value
            StopTween(_G.Settings.Farm["Auto Farm Angel Wings"])
        end
    })
    local MaterialsPos5 = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Angel Wings"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Royal Soldier") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Royal Soldier" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Angel Wings"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Royal Soldier") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Royal Soldier")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World1 or Wolrd2 or World3 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Leather",
        Value = _G.Settings.Farm["Auto Farm Leather"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Leather"] = value
            StopTween(_G.Settings.Farm["Auto Farm Leather"])
        end
    })
    local MaterialsPos6 = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Leather"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Leather"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos7 = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Leather"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Marine Captain") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Marine Captain" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Leather"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Marine Captain") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Marine Captain")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos8 = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Leather"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Jungle Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Jungle Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Leather"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Jungle Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Jungle Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Ectoplasm",
        Value = _G.Settings.Farm["Auto Farm Ectoplasm"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Ectoplasm"] = value
            StopTween(_G.Settings.Farm["Auto Farm Ectoplasm"])
        end
    })
    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Farm["Auto Farm Ectoplasm"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Deckhand") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Engineer") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Steward") or (game:GetService("Workspace")).Enemies:FindFirstChild("Ship Officer") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									if string.find(v.Name, "Ship") then
										v.HumanoidRootPart.CanCollide = false;
										v.Head.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
									else
										topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
									end;
								until _G.Settings.Farm["Auto Farm Ectoplasm"] == false or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					else
						local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
						if Distance > 18000 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
						end;
						topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625));
					end;
				end;
			end;
		end);
	end);
end;
if World1 or World2 or World3 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Scrap Metal",
        Value = _G.Settings.Farm["Auto Farm Scrap Metal"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Scrap Metal"] = value
            StopTween(_G.Settings.Farm["Auto Farm Scrap Metal"])
        end
    })
    local MaterialsPos9 = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Scrap Metal"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Brute") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Brute" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Scrap Metal"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Brute") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Brute")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos10 = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Scrap Metal"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Mercenary") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Mercenary" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Scrap Metal"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Mercenary") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mercenary")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local MaterialsPos11 = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Scrap Metal"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Pirate Millionaire") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Pirate Millionaire" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Scrap Metal"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Pirate Millionaire") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pirate Millionaire")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Conjured Cocoa",
        Value = _G.Settings.Farm["Auto Farm Conjured Cocoa"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Conjured Cocoa"] = value
            StopTween(_G.Settings.Farm["Auto Farm Conjured Cocoa"])
        end
    })
    local MaterialsPos12 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Conjured Cocoa"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Chocolate Bar Battler") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Chocolate Bar Battler" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Conjured Cocoa"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Chocolate Bar Battler") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Chocolate Bar Battler")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Dragon Scale",
        Value = _G.Settings.Farm["Auto Farm Dragon Scale"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Dragon Scale"] = value
            StopTween(_G.Settings.Farm["Auto Farm Dragon Scale"])
        end
    })
    local MaterialsPos13 = CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Dragon Scale"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Dragon Crew Warrior") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Dragon Crew Warrior" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Dragon Scale"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(5824.06982421875, 51.38640213012695, -1106.694580078125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Dragon Crew Warrior") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Dragon Crew Warrior")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Gunpowder",
        Value = _G.Settings.Farm["Auto Farm Gunpowder"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Gunpowder"] = value
            StopTween(_G.Settings.Farm["Auto Farm Gunpowder"])
        end
    })
    local MaterialsPos14 = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Gunpowder"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Pistol Billionaire") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Pistol Billionaire" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Gunpowder"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Pistol Billionaire") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Pistol Billionaire")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Fish Tail",
        Value = _G.Settings.Farm["Auto Farm Fish Tail"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Fish Tail"] = value
            StopTween(_G.Settings.Farm["Auto Farm Fish Tail"])
        end
    })
    local MaterialsPos15 = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Fish Tail"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Fishman Captain") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Fishman Captain" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not Fish or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Fishman Captain") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Fishman Captain")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
    Tabs.FarmTab:Toggle({
        Title = "Auto Farm Mini Tusk",
        Value = _G.Settings.Farm["Auto Farm Mini Tusk"],
        Callback = function(value)
            _G.Settings.Farm["Auto Farm Mini Tusk"] = value
            StopTween(_G.Settings.Farm["Auto Farm Mini Tusk"])
        end
    })
    local MaterialsPos16 = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Farm["Auto Farm Mini Tusk"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Mythological Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Mythological Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Farm["Auto Farm Mini Tusk"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Mythological Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Mythological Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
function NormalAttack()
	AttackModule:BladeHits();
end;
spawn(function()
	(game:GetService("RunService")).RenderStepped:Connect(function()
		pcall(function()
			if UseSkill or UseGunSkill or _G.SeaSkill then
				for i, v in pairs((game:GetService("Players")).LocalPlayer.PlayerGui.Notifications:GetChildren()) do
					for _, Notif in pairs(v:GetChildren()) do
						if string.find(Notif.Text, "Skill locked!") then
							v:Destroy();
						end;
					end;
				end;
			end;
		end);
	end);
end);
function EquipWeaponSword()
	pcall(function()
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA("Tool") then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid);
			end;
		end;
	end);
end;
Tabs.ItemsTab:Section({ Title = "Gun & Sword" })
if World3 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Buddy Sword",
        Value = _G.Settings.Items["Auto Buddy Sword"],
        Callback = function(value)
            _G.Settings.Items["Auto Buddy Sword"] = value
            StopTween(_G.Settings.Items["Auto Buddy Sword"])
        end
    })
    local BigMomPos = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Buddy Sword"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Queen") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cake Queen" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Buddy Sword"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Cake Queen") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Cake Queen")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
function CheckItemCount(itemName, itemCount)
	for i, v in next, game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
		if v.Name == itemName and v.Count >= itemCount then
			return true;
		end;
	end;
	return false;
end;
function DetectChest()
	local dist = math.huge;
	local name;
	for k, v in pairs(game.Workspace:GetChildren()) do
		if string.match(v.Name, "Chest") then
			local magnitude = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
			if magnitude < dist then
				dist = magnitude;
				name = v;
			end;
		end;
	end;
	if not name then
		for i, v in next, (game:GetService("Workspace")).Map:GetDescendants() do
			if v:IsA("Part") and string.find(v.Name, "Chest") then
				local magnitude = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
				if magnitude < dist then
					dist = magnitude;
					name = v;
				end;
			end;
		end;
	end;
	return name;
end;
local MobBlacklist = {};
function DetectPartSpawnMob(name)
	local name1;
	if string.find(name, "Lv.") then
		name1 = name:gsub(" %pLv. %d+%p", "");
	end;
	for i, v in pairs((game:GetService("Workspace"))._WorldOrigin.EnemySpawns:GetChildren()) do
		local stringgsub;
		if string.find(v.Name, "Lv.") then
			stringgsub = v.Name:gsub(" %pLv. %d+%p", "");
		end;
		if v:IsA("Part") and (stringgsub and stringgsub == name or name == v.Name or name1 and v.Name == name1) then
			return v;
		end;
	end;
	for i, v in pairs(getnilinstances()) do
		local stringgsub;
		if string.find(v.Name, "Lv.") then
			stringgsub = v.Name:gsub(" %pLv. %d+%p", "");
		end;
		if v:IsA("Part") and (stringgsub and stringgsub == name or name == v.Name or name1 and v.Name == name1) then
			return v;
		end;
	end;
end;
function TeleportSpawnMob(Path, value)
	if typeof(Path) == "table" then
		if #MobBlacklist >= 4 then
			MobBlacklist = {};
			return;
		end;
		local GetPart;
		for i, v in next, Path do
			if not table.find(MobBlacklist, v) then
				GetPart = DetectPartSpawnMob(v);
				repeat
					task.wait();
					topos(GetPart.CFrame * CFrame.new(0, 60, 0));
				until (GetPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= 100 or DetectMob(Path) or (not value);
			end;
		end;
	else
		GetPart = DetectPartSpawnMob(Path);
		topos(GetPart.CFrame * CFrame.new(0, 60, 0));
	end;
end;
function DetectMob(c)
	local dist = math.huge;
	local name;
	for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
		local stringgsub = v.Name:gsub(" %pLv. %d+%p", "");
		if (typeof(c) == "table" and (table.find(c, v.Name) or table.find(c, stringgsub)) or (v.Name == c or c == stringgsub)) and v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
			local magnitude = (v.HumanoidRootPart.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).magnitude;
			if magnitude < dist then
				dist = magnitude;
				name = v;
			end;
		end;
	end;
	return name;
end;
if World3 then
    function DetectRequestSoulGuitar()
		local Mob = {};
		local PlaceId;
		local NameRemote;
		if not CheckItemCount("Ectoplasm", 250) then
			Mob = {
				"Ship Deckhand [Lv. 1250]",
				"Ship Steward [Lv. 1300]",
				"Ship Officer [Lv. 1325]",
				"Ship Engineer [Lv. 1275]"
			};
			PlaceId = 4442272183;
			NameRemote = "TravelDressrosa";
		elseif not CheckItemCount("Bones", 500) then
			Mob = {
				"Reborn Skeleton [Lv. 1975]",
				"Demonic Soul [Lv. 2025]",
				"Living Zombie [Lv. 2000]",
				"Posessed Mummy [Lv. 2050]"
			};
			PlaceId = 7449423635;
			NameRemote = "TravelZou";
		end;
		return Mob, PlaceId, NameRemote;
	end;
    local CommF = (game:GetService("ReplicatedStorage")).Remotes.CommF_;
	function GuitarPuzzleProgress()
		if not CommF:InvokeServer("GuitarPuzzleProgress", "Check") then
			if game.Lighting.Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and (game.Lighting.ClockTime > 16 or game.Lighting.ClockTime < 5) then
				if (game:GetService("Players")).LocalPlayer:DistanceFromCharacter(Vector3.new(-8654.314453125, 140.9499053955078, 6167.5283203125)) > 50 then
					topos(CFrame.new(-8654.314453125, 140.9499053955078, 6167.5283203125));
				end;
				CommF:InvokeServer("gravestoneEvent", 2);
				CommF:InvokeServer("gravestoneEvent", 2, true);
				task.wait(1);
			else
				WindUI:Notify({
                    Title = "Hop Full Moon",
                    Duration = 5
                })
				Hop();
			end;
        else
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Dialogue.Visible then
				game.VirtualUser:Button1Down(Vector2.new(0, 0));
				game.VirtualUser:Button1Down(Vector2.new(0, 0));
			end;
            if not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Swamp then
				if ((CFrame.new((-10171.7607421875), 138.62667846679688, 6008.0654296875)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
					toTarget((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position, (CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875)).Position, CFrame.new(-10171.7607421875, 138.62667846679688 + 20, 6008.0654296875));
				elseif CountZombie() == 6 then
					for i, v in pairs(game.workspace.Enemies:GetChildren()) do
						if v.Name == "Living Zombie [Lv. 2000]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat
								task.wait();
								EquipWeapon(_G.Settings.Main["Selected Weapon"]);
								AutoHaki();
								v.HumanoidRootPart.CanCollide = false;
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								PosMon = v.HumanoidRootPart.CFrame;
								MonFarm = v.Name;
								topos(v.HumanoidRootPart.CFrame * Pos);
								Attack();
							until v.Humanoid.Health <= 0 or (not v.Parent);
						end;
					end;
				end;
				return;
			elseif not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Gravestones then
				if (game:GetService("Players")).LocalPlayer:DistanceFromCharacter(Vector3.new(-8761.4765625, 142.10487365722656, 6086.07861328125)) > 50 then
					topos(CFrame.new(-8761.4765625, 142.10487365722656, 6086.07861328125));
				else
					local ClickSigns = {
						game.workspace.Map["Haunted Castle"].Placard1.Right.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard2.Right.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard3.Left.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard4.Right.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard5.Left.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard6.Left.ClickDetector,
						game.workspace.Map["Haunted Castle"].Placard7.Left.ClickDetector
					};
					for i, v in pairs(ClickSigns) do
						fireclickdetector(v);
					end;
				end;
			elseif not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Ghost then
				if (game:GetService("Players")).LocalPlayer:DistanceFromCharacter(Vector3.new(-9755.6591796875, 271.0661315917969, 6290.61474609375)) > 50 then
					topos(CFrame.new(-9755.6591796875, 271.0661315917969, 6290.61474609375));
				end;
				CommF:InvokeServer("GuitarPuzzleProgress", "Ghost");
				task.wait(3);
			elseif not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Trophies then
				if (game:GetService("Players")).LocalPlayer:DistanceFromCharacter(Vector3.new(-9530.0126953125, 6.104853630065918, 6054.83349609375)) > 50 then
					topos(CFrame.new(-9530.0126953125, 6.104853630065918, 6054.83349609375));
				end;
				local Tablet = game.workspace.Map["Haunted Castle"].Tablet;
				for i, v in pairs(BlankTablets) do
					local x = Tablet[v];
					if x.Line.Position.X ~= 0 then
						repeat
							task.wait();
							fireclickdetector(x.ClickDetector);
						until x.Line.Position.X == 0;
					end;
				end;
				for i, v in pairs(Trophy) do
					local x = game.workspace.Map["Haunted Castle"].Trophies.Quest[v].Handle.CFrame;
					x = tostring(x);
					x = (x:split(", "))[4];
					local c = "180";
					if x == "1" or x == "-1" then
						c = "90";
					end;
					if not string.find(tostring(Tablet[i].Line.Rotation.Z), c) then
						repeat
							task.wait();
							fireclickdetector(Tablet[i].ClickDetector);
						until string.find(tostring(Tablet[i].Line.Rotation.Z), c);
						print(i, c);
					end;
				end;
			elseif not (CommF:InvokeServer("GuitarPuzzleProgress", "Check")).Pipes then
				for i, v in pairs(Pipes) do
					local x = game.workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model[i];
					if x.BrickColor.Name ~= v then
						repeat
							task.wait();
							fireclickdetector(x.ClickDetector);
						until x.BrickColor.Name == v;
					end;
				end;
			end;
		end;
	end;
    function AutoSoulGuitar()
		if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("soulGuitarBuy", true) == "[You already own this item.]" then
			WindUI:Notify({
                Title = "You already own this item",
                Duration = 5
            })
			task.wait(5);
			return;
		end;
		if game.Players.LocalPlayer.Data.Fragments.Value < 5000 then
			task.wait(2);
			WindUI:Notify({
                Title = "Need 5000 Fragments",
                Duration = 5
            })
			return;
		end;
		if not CheckItemCount("Ectoplasm", 250) then
			task.wait(2);
			WindUI:Notify({
                Title = "Need 250 Ectoplasm",
                Duration = 5
            })
			return;
		end;
        if CheckItemCount("Dark Fragment", 1) and CheckItemCount("Ectoplasm", 250) and CheckItemCount("Bones", 500) then
			(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("soulGuitarBuy", true);
			(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("soulGuitarBuy");
			if World3 then
				GuitarPuzzleProgress();
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelZou");
			end;
			return;
		end;
		if not CheckItemCount("Dark Fragment", 1) then
			if World2 then
				if CheckNameBoss("Darkbeard [Lv. 1000] [Raid Boss]") then
					local v = CheckNameBoss("Darkbeard [Lv. 1000] [Raid Boss]");
					repeat
						task.wait();
						AutoHaki();
						EquipWeapon(_G.Settings.Main["Selected Weapon"]);
						v.HumanoidRootPart.CanCollide = false;
						v.Humanoid.WalkSpeed = 0;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
						topos(v.HumanoidRootPart.CFrame * Pos);
						Attack();
					until v.Humanoid.Health <= 0 or (not v.Parent);
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") then
					if ((game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						EquipWeapon("Fist of Darkness");
						firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, (game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection, 0);
						firetouchinterest(game.Players.LocalPlayer.Character["Fist of Darkness"].Handle, (game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection, 1);
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, (game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection, 0);
						firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, (game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection, 1);
					else
						topos((game:GetService("Workspace")).Map.DarkbeardArena.Summoner.Detection.CFrame);
					end;
				else
					local v = DetectChest();
					repeat
						task.wait();
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 2 then
							firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0);
							firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1);
						end;
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 5 then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "W", false, game);
							task.wait();
							(game:service("VirtualInputManager")):SendKeyEvent(false, "W", false, game);
						end;
						InstantTp(v.CFrame * CFrame.new(0, 1, 0));
					until not v or (not v.Parent) or (not _G.Settings.Items["Auto Soul Guitar"]);
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("TravelDressrosa");
			end;
		else
			local Mob, PlaceId, NameRemote = DetectRequestSoulGuitar();
			if game.PlaceId == PlaceId then
				if not DetectMob(Mob) then
					TeleportSpawnMob(Mob, _G.Settings.Items["Auto Soul Guitar"]);
				else
					local v = DetectMob(Mob);
					repeat
						task.wait();
						EquipWeapon(_G.Settings.Main["Selected Weapon"]);
						AutoHaki();
						v.HumanoidRootPart.CanCollide = false;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
						PosMon = v.HumanoidRootPart.CFrame;
						MonFarm = v.Name;
						topos(v.HumanoidRootPart.CFrame * Pos);
						Attack();
					until not v or (not v.Parent) or v.Humanoid.Health == 0 or (not _G.Settings.Items["Auto Soul Guitar"]);
				end;
			else
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(NameRemote);
			end;
		end;
	end;
    Tabs.ItemsTab:Toggle({
        Title = "Auto Soul Guitar",
        Value = _G.Settings.Items["Auto Soul Guitar"],
        Callback = function(value)
            _G.Settings.Items["Auto Soul Guitar"] = value
            StopTween(_G.Settings.Items["Auto Soul Guitar"])
        end
    })
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Soul Guitar"] then
					AutoSoulGuitar();
				end;
			end);
		end;
	end);
end;
if World2 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Rengoku",
        Value = _G.Settings.Items["Auto Rengoku"],
        Callback = function(value)
            _G.Settings.Items["Auto Rengoku"] = value
            StopTween(_G.Settings.Items["Auto Rengoku"])
        end
    })
    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Rengoku"] and World2 then
					if (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Hidden Key") then
						EquipWeapon("Hidden Key");
						topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875));
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Snow Lurker") or (game:GetService("Workspace")).Enemies:FindFirstChild("Arctic Warrior") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Settings.Items["Auto Rengoku"] == false or (not v.Parent) or v.Humanoid.Health <= 0;
							end;
						end;
					else
						topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188));
					end;
				end;
			end;
		end);
	end);
end;
if World3 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Hallow Scythe",
        Value = _G.Settings.Items["Auto Hallow Scythe"],
        Desc = "Auto Kill Soul Reaper",
        Callback = function(value)
            _G.Settings.Items["Auto Hallow Scythe"] = value
            StopTween(_G.Settings.Items["Auto Hallow Scythe"])
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Hallow Scythe"] then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if string.find(v.Name, "Soul Reaper") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
									v.HumanoidRootPart.Transparency = 1;
								until v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Hallow Scythe"] == false;
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Hallow Essence") then
						repeat
							topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125));
							wait();
						until ((CFrame.new((-8932.322265625), 146.83154296875, 6062.55078125)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8;
						EquipWeapon("Hallow Essence");
					elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Soul Reaper") then
						topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Soul Reaper")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
					end;
				end);
			end;
		end;
	end);
end;
if World1 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Warden Sword",
        Value = _G.Settings.Items["Auto Warden Sword"],
        Desc = "Auto Get Warden Sword",
        Callback = function(value)
            _G.Settings.Items["Auto Warden Sword"] = value
            StopTween(_G.Settings.Items["Auto Warden Sword"])
        end
    })
    local NamfonPos = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Warden Sword"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Chief Warden") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Chief Warden" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Warden Sword"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World3 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Cursed Dual Katana",
        Value = _G.Settings.Items["Auto Cursed Dual Katana"],
        Desc = "Must be have Yama and Tushita",
        Callback = function(value)
            _G.Settings.Items["Auto Cursed Dual Katana"] = value
            StopTween(_G.Settings.Items["Auto Cursed Dual Katana"])
        end
    })
    Tabs.ItemsTab:Toggle({
        Title = "Auto Get Yama",
        Value = _G.Settings.Items["Auto Yama"],
        Desc = "Auto Get Yama Fully",
        Callback = function(value)
            _G.Settings.Items["Auto Yama"] = value
        end
    })
    Tabs.ItemsTab:Toggle({
        Title = "Auto Get Yama Hop",
        Value = _G.Settings.Items["Auto Yama Hop"],
        Desc = "Hop If Elite Hunter Not Spawn",
        Callback = function(value)
            _G.Settings.Items["Auto Yama Hop"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Yama Hop"] then
				pcall(function()
					if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress") < 30 then
						if _G.Settings.Items["Auto Yama"] then
							if not (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre")) or (not (game:GetService("Workspace")).Enemies:FindFirstChild("Urban")) then
								Hop();
							end;
						end;
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Yama"] then
				if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
					repeat
						wait(0.1);
						fireclickdetector((game:GetService("Workspace")).Map.Waterfall.SealedKatana.Handle.ClickDetector);
					until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Yama") or (not _G.Settings.Items["Auto Yama"]);
				elseif string.find(QuestTitle, "Diablo") or string.find(QuestTitle, "Deandre") or string.find(QuestTitle, "Urban") then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Diablo") or (game:GetService("Workspace")).Enemies:FindFirstChild("Deandre") or (game:GetService("Workspace")).Enemies:FindFirstChild("Urban") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until _G.Settings.Farm["Auto Elite Hunter"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
								end;
							end;
						end;
					end;
				else
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("EliteHunter");
				end;
			end;
		end;
	end);
    spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Cursed Dual Katana"] then
					if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
								EquipWeapon("Tushita");
							end;
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
								EquipWeapon("Yama");
							end;
						end;
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LoadItem", "Tushita");
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Items["Auto Cursed Dual Katana"] then
					if GetMaterial("Alucard Fragment") == 0 then
						Auto_Quest_Yama_1 = true;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif GetMaterial("Alucard Fragment") == 1 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = true;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif GetMaterial("Alucard Fragment") == 2 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = true;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
					elseif GetMaterial("Alucard Fragment") == 3 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = true;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif GetMaterial("Alucard Fragment") == 4 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = true;
						Auto_Quest_Tushita_3 = false;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif GetMaterial("Alucard Fragment") == 5 then
						Auto_Quest_Yama_1 = false;
						Auto_Quest_Yama_2 = false;
						Auto_Quest_Yama_3 = false;
						Auto_Quest_Tushita_1 = false;
						Auto_Quest_Tushita_2 = false;
						Auto_Quest_Tushita_3 = true;
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
					elseif GetMaterial("Alucard Fragment") == 6 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or (game:GetService("Workspace")).ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
							Auto_Quest_Yama_1 = false;
							Auto_Quest_Yama_2 = false;
							Auto_Quest_Yama_3 = false;
							Auto_Quest_Tushita_1 = false;
							Auto_Quest_Tushita_2 = false;
							Auto_Quest_Tushita_3 = false;
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
										if v.Humanoid.Health > 0 then
											EquipWeapon(Sword);
											topos(v.HumanoidRootPart.CFrame * pos);
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											Attack();
										end;
									end;
								end;
							end;
                        elseif ((CFrame.new((-12361.7060546875), 603.3547973632812, (-6550.5341796875))).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
							wait(1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
							wait(1);
							topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
							wait(1.5);
							(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
							wait(1.5);
							topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875));
						else
							topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875));
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Yama_1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Mythological Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Mythological Pirate" then
								repeat
									wait();
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, (-2)));
								until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_1 == false;
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
							end;
						end;
					else
						topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875));
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if Auto_Quest_Yama_2 then
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50, 50, 50, 50);
							v.HazeESP.MaxDistance = "inf";
						end;
					end;
					for i, v in pairs((game:GetService("ReplicatedStorage")):GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							v.HazeESP.Size = UDim2.new(50, 50, 50, 50);
							v.HazeESP.MaxDistance = "inf";
						end;
					end;
				end;
			end);
		end;
	end);
    spawn(function()
		while wait(0.2) do
			pcall(function()
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
						v.HumanoidRootPart.CFrame = PosMonsEsp;
						v.HumanoidRootPart.CanCollide = false;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
						if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
							local vc = Instance.new("BodyVelocity", v.HumanoidRootPart);
							vc.MaxForce = Vector3.new(1, 1, 1) * math.huge;
							vc.Velocity = Vector3.new(0, 0, 0);
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Yama_2 then
				pcall(function()
					for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if v:FindFirstChild("HazeESP") then
							repeat
								(game:GetService("RunService")).Heartbeat:wait();
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
									topos(v.HumanoidRootPart.CFrame * Pos);
								else
									EquipWeapon(Sword);
									topos(v.HumanoidRootPart.CFrame * Pos);
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									v.HumanoidRootPart.Transparency = 1;
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.CanCollide = false;
									PosMon = v.HumanoidRootPart.CFrame;
									MonFarm = v.Name;
									Attack();
									if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy();
									end;
								end;
							until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_2 == false or (not v.Parent) or v.Humanoid.Health <= 0 or (not v:FindFirstChild("HazeESP"));
						else
							for x, y in pairs((game:GetService("ReplicatedStorage")):GetChildren()) do
								if y:FindFirstChild("HazeESP") then
									if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
										topos(y.HumanoidRootPart.CFrameMon * Pos);
									else
										topos(y.HumanoidRootPart.CFrame * Pos);
									end;
								end;
							end;
						end;
					end;
				end);
			end;
		end;
	end);
    spawn(function()
		while wait(0.2) do
			if Auto_Quest_Yama_3 then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
						topos((game:GetService("Workspace")).Map["Haunted Castle"].Summoner.Detection.CFrame);
					elseif (game:GetService("Workspace")).Map:FindFirstChild("HellDimension") then
						repeat
							wait();
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
										if v.Humanoid.Health > 0 then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(Sword);
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												v.HumanoidRootPart.Transparency = 1;
												v.Humanoid.JumpPower = 0;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												Attack();
											until v.Humanoid.Health <= 0 or (not v.Parent) or Auto_Quest_Yama_3 == false;
										end;
									end;
								end;
							else
								wait(5);
								topos((game:GetService("Workspace")).Map.HellDimension.Torch1.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HellDimension.Torch2.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HellDimension.Torch3.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								(game:GetService("VirtualInputManager")):SendKeyEvent(false, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HellDimension.Exit.CFrame);
							end;
						until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3;
					elseif (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Soul Reaper") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Soul Reaper" then
									if v.Humanoid.Health > 0 then
										repeat
											wait();
											topos(v.HumanoidRootPart.CFrame * Pos);
										until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Yama_3 == false or (game:GetService("Workspace")).Map:FindFirstChild("HellDimension");
									end;
								end;
							end;
						else
							topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625));
						end;
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
					end;
				end);
			end;
		end;
	end);
    spawn(function()
		while wait(0.2) do
			if Auto_Quest_Tushita_1 then
				topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125));
				wait(5);
				topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625));
				wait(5);
				topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875));
			end;
		end;
	end);
	spawn(function()
		while wait(0.2) do
			if Auto_Quest_Tushita_2 then
				pcall(function()
					if ((CFrame.new((-5539.3115234375), 313.800537109375, (-2972.372314453125))).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(Sword);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.Transparency = 1;
										v.Humanoid.JumpPower = 0;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										Attack();
									until v.Humanoid.Health <= 0 or (not v.Parent) or Auto_Quest_Tushita_2 == false;
								end;
							end;
						end;
					else
						topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125));
					end;
				end);
			end;
		end;
	end);
    spawn(function()
		while wait(0.2) do
			if Auto_Quest_Tushita_3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Cake Queen") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Cake Queen" then
									if v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											EquipWeapon(Sword);
											topos(v.HumanoidRootPart.CFrame * Pos);
											v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											v.HumanoidRootPart.Transparency = 1;
											v.Humanoid.JumpPower = 0;
											v.Humanoid.WalkSpeed = 0;
											v.HumanoidRootPart.CanCollide = false;
											PosMon = v.HumanoidRootPart.CFrame;
											MonFarm = v.Name;
											Attack();
										until _G.Settings.Items["Auto Cursed Dual Katana"] == false or Auto_Quest_Tushita_3 == false or (game:GetService("Workspace")).Map:FindFirstChild("HeavenlyDimension");
									end;
								end;
							end;
						else
							topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375));
						end;
					elseif (game:GetService("Workspace")).Map:FindFirstChild("HeavenlyDimension") then
						repeat
							wait();
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or (game:GetService("Workspace")).Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
										if v.Humanoid.Health > 0 then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(Sword);
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												v.HumanoidRootPart.Transparency = 1;
												v.Humanoid.JumpPower = 0;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.CanCollide = false;
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												Attack();
											until v.Humanoid.Health <= 0 or (not v.Parent) or Auto_Quest_Tushita_3 == false;
										end;
									end;
								end;
							else
								wait(5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Torch1.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Torch2.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Torch3.CFrame);
								wait(1.5);
								(game:GetService("VirtualInputManager")):SendKeyEvent(true, "E", false, game);
								wait(1.5);
								topos((game:GetService("Workspace")).Map.HeavenlyDimension.Exit.CFrame);
							end;
						until not _G.Settings.Items["Auto Cursed Dual Katana"] or (not Auto_Quest_Tushita_3) or GetMaterial("Alucard Fragment") == 6;
					end;
				end);
			end;
		end;
	end);
    function CheckTorch()
		local a;
		if not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch1.Particles.Main.Enabled then
			a = "1";
		elseif not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch2.Particles.Main.Enabled then
			a = "2";
		elseif not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch3.Particles.Main.Enabled then
			a = "3";
		elseif not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch4.Particles.Main.Enabled then
			a = "4";
		elseif not (game:GetService("Workspace")).Map.Turtle.QuestTorches.Torch5.Particles.Main.Enabled then
			a = "5";
		end;
		for i, v in next, (game:GetService("Workspace")).Map.Turtle.QuestTorches:GetChildren() do
			if v:IsA("MeshPart") and string.find(v.Name, a) and (not v.Particles.Main.Enabled) then
				return v;
			end;
		end;
	end;
    Tabs.ItemsTab:Toggle({
        Title = "Auto Get Tushita",
        Value = _G.Settings.Items["Auto Tushita"],
        Desc = "Need Spawn Longma and Rip Indra",
        Callback = function(value)
            _G.Settings.Items["Auto Tushita"] = value
            StopTween(_G.Settings.Items["Auto Tushita"])
        end
    })
    function CheckNameBoss(a)
		for i, v in next, game.ReplicatedStorage:GetChildren() do
			if v:IsA("Model") and (typeof(a) == "table" and table.find(a, v.Name) or v.Name == a) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				return v;
			end;
		end;
		for i, v in next, game.Workspace.Enemies:GetChildren() do
			if v:IsA("Model") and (typeof(a) == "table" and table.find(a, v.Name) or v.Name == a) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				return v;
			end;
		end;
	end;
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Tushita"] and World3 then
				pcall(function()
					if not (game:GetService("Workspace")).Map.Turtle:FindFirstChild("TushitaGate") then
						if CheckNameBoss("Longma [Lv. 2000] [Boss]") then
							local v = CheckNameBoss("Longma [Lv. 2000] [Boss]");
							repeat
								task.wait();
								AutoHaki();
								EquipWeapon(_G.Settings.Main["Selected Weapon"]);
								v.HumanoidRootPart.CanCollide = false;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
								topos(v.HumanoidRootPart.CFrame * Pos);
								Attack();
							until not v or (not v.Parent) or v.Humanoid.Health == 0;
						end;
					elseif CheckNameBoss("rip_indra True Form [Lv. 5000] [Raid Boss]") then
						if not game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") and (not game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch")) then
							topos((game:GetService("Workspace")).Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame);
						else
							EquipWeapon("Holy Torch");
							if CheckTorch() then
								topos((CheckTorch()).CFrame);
							end;
						end;
					else
						WindUI:Notify({
                            Title = "Rip Indra Not Spawn",
                            Duration = 2
                        })
						task.wait(3);
					end;
				end);
			end;
		end;
	end);
    Tabs.ItemsTab:Toggle({
        Title = "Auto Canvander",
        Value = _G.Settings.Items["Auto Canvander"],
        Callback = function(value)
            _G.Settings.Items["Auto Canvander"] = value
            StopTween(_G.Settings.Items["Auto Canvander"])
        end
    })
    local CavandisPos = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Canvander"] and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Beautiful Pirate") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Beautiful Pirate" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Canvander"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(CavandisPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Beautiful Pirate") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Beautiful Pirate")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;

if World3 then
    Tabs.SeaTab:Section({ Title = "Sea Event" })
    local ListSeaBoat = {
		"Guardian",
		"Beast Hunter",
		"PirateGrandBrigade",
		"MarineGrandBrigade",
		"PirateBrigade",
		"MarineBrigade",
		"PirateSloop",
		"MarineSloop"
	};
	local ListSeaZone = {
		"Zone 1",
		"Zone 2",
		"Zone 3",
		"Zone 4",
		"Zone 5",
		"Zone 6",
		"Infinite"
	};
    Tabs.SeaTab:Dropdown({
        Title = "Choose Boat",
        Values = ListSeaBoat,
        Value = _G.Settings.SeaEvent["Selected Boat"],
        Callback = function(value)
            _G.Settings.SeaEvent["Selected Boat"] = value
        end
    })
    Tabs.SeaTab:Dropdown({
        Title = "Choose Zone",
        Values = ListSeaZone,
        Value = _G.Settings.SeaEvent["Selected Zone"],
        Callback = function(value)
            _G.Settings.SeaEvent["Selected Zone"] = value
        end
    })
    Tabs.SeaTab:Slider({
        Title = "Boat Tween Speed",
        Value = {
            Min = 100,
            Max = 350,
            Default = _G.Settings.SeaEvent["Boat Tween Speed"],
        },
        Callback = function(value)
            _G.Settings.SeaEvent["Boat Tween Speed"] = value
        end
    })
    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.SeaEvent["Selected Zone"] == "Zone 1" then
					CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -0.000000000236509201, -0.991110802, -0.0569955558, 0.120211802);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 2" then
					CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -0.000000000415334017, -0.949422479, -0.0606706589, 0.308084518);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 3" then
					CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 0.0000000000270896673, -0.925605655, -0.0370079502, 0.376675636);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 4" then
					CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 5" then
					CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -0.00000000139882339, -0.981290519, -0.0365765914, -0.189026669);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Zone 6" then
					CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 0.000000000202319411, -0.99428153, -0.0651681125, -0.0846010372);
				elseif _G.Settings.SeaEvent["Selected Zone"] == "Infinite" then
					CFrameSelectedZone = CFrame.new(-148073.359, 8.99999523, 7721.05078, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, -0.000000000000391858095, -0.996583343, -0.0000186321486, -0.0825930536);
				end;
			end;
		end);
	end);
    Tabs.SeaTab:Toggle({
        Title = "Auto Sail Boat",
        Value = _G.Settings.SeaEvent["Sail Boat"],
        Desc = "Sail Boat",
        Callback = function(value)
            _G.Settings.SeaEvent["Sail Boat"] = value
            StopTween(_G.Settings.SeaEvent["Sail Boat"])
            if not _G.Settings.SeaEvent["Sail Boat"] then
                _G.SeaSkill = false
                Skillaimbot = false
            end
            if StopTweenBoat then
                StopTweenBoat:Stop()
            end
        end
    })
    function CheckBoat()
		for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
			if v.Name == _G.Settings.SeaEvent["Selected Boat"] then
				for _, child in pairs(v:GetChildren()) do
					if child.Name == "MyBoatEsp" then
						return v;
					end;
				end;
			end;
		end;
		return false;
	end;
	function CheckEnemiesBoat()
		if (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") then
			return true;
		end;
		return false;
	end;
	function CheckShark()
		for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
			if v.Name == "Shark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Shark") then
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
						return true;
					end;
				end;
			end;
		end;
		return false;
	end;
	function CheckPiranha()
		for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
			if v.Name == "Piranha" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
				if (game:GetService("Workspace")).Enemies:FindFirstChild("Piranha") then
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
						return true;
					end;
				end;
			end;
		end;
		return false;
	end;
	function AddEsp(Name, Parent)
		local BillboardGui = Instance.new("BillboardGui");
		local TextLabel = Instance.new("TextLabel");
		BillboardGui.Parent = Parent;
		BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		BillboardGui.Active = true;
		BillboardGui.Name = Name;
		BillboardGui.AlwaysOnTop = true;
		BillboardGui.LightInfluence = 1;
		BillboardGui.Size = UDim2.new(0, 200, 0, 50);
		BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0);
		TextLabel.Parent = BillboardGui;
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		TextLabel.BackgroundTransparency = 1;
		TextLabel.Size = UDim2.new(1, 0, 1, 0);
		TextLabel.Font = Enum.Font.GothamBold;
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
		TextLabel.TextSize = 15;
		TextLabel.Text = "My Boat";
	end;
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.SeaEvent["Sail Boat"] then
					if not CheckBoat() then
						local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
							BTP(BuyBoatCFrame);
						else
							BuyBoat = topos(BuyBoatCFrame);
						end;
						if ((CFrame.new((-16927.451171875), 9.0863618850708, 433.8642883300781)).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Stop();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
							for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
								if v.Name == _G.Settings.SeaEvent["Selected Boat"] then
									if (v.VehicleSeat.CFrame.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										AddEsp("MyBoatEsp", v);
									end;
								end;
							end;
							wait(1);
						end;
					elseif CheckBoat() then
						for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
							if v.Name == _G.Settings.SeaEvent["Selected Boat"] then
								if v:FindFirstChild("MyBoatEsp") then
									if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
										if CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] or CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
											if stoppos then
												stoppos:Stop();
											end;
										else
											stoppos = topos(v.VehicleSeat.CFrame * CFrame.new(0, 1, 0));
										end;
									else
										repeat
											wait();
											StopTweenBoat = TweenBoat(CFrameSelectedZone);
										until CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] or CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] or (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false or _G.Settings.SeaEvent["Sail Boat"] == false;
										if StopTweenBoat then
											StopTweenBoat:Stop();
										end;
										(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
										wait(0.1);
										(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.SeaEvent["Sail Boat"] then
					if CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] or CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] or (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] or (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] or CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
						if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
							(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
							wait(0.1);
							(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
						end;
					end;
				end;
			end;
		end);
	end);
	function DodgeSeabeasts()
		local seaBeastsFolder = (game:GetService("Workspace")).SeaBeasts;
		for _, seaBeast in pairs(seaBeastsFolder:GetChildren()) do
			if seaBeast:FindFirstChild("Humanoid") and seaBeast:FindFirstChild("Anims") then
				local humanoid = seaBeast.Humanoid;
				local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid;
				for _, anim in pairs(seaBeast.Anims:GetChildren()) do
					if anim:IsA("Animation") then
						if anim.AnimationId == "rbxassetid://8708221792" or anim.AnimationId == "rbxassetid://8708222556" or anim.AnimationId == "rbxassetid://8708223619" or anim.AnimationId == "rbxassetid://8708225668" then
							for _, animationTrack in pairs(animator:GetPlayingAnimationTracks()) do
								if animationTrack.Animation.AnimationId == anim.AnimationId then
									if animationTrack.IsPlaying then
										return true;
									else
										return false;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	spawn(function()
		while wait(0.2) do
			if _G.Settings.SeaEvent["Sail Boat"] then
				pcall(function()
					if _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") and _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Fish Crew Member") then
								if v.Name == "Fish Crew Member" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											Attack();
											_G.SeaSkill = false;
										until not _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") and _G.Settings.SeaEvent["Auto Farm Ghost Ship"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									local BoatCFrame = v.Engine.CFrame;
									if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									topos(BoatCFrame);
									AutoHaki();
									Skillaimbot = true;
									AimSkill = v.Engine.CFrame * CFrame.new(0, (-15), 0);
									AimBotSkillPosition = AimSkill.Position;
								until not v.Parent or v.Health < 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild("FishBoat")) or (not v:FindFirstChild("Engine")) or (not _G.Settings.SeaEvent["Auto Farm Ghost Ship"]);
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									local BoatCFrame = v.Engine.CFrame;
									AutoHaki();
									if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									topos(BoatCFrame);
									Skillaimbot = true;
									AimSkill = v.Engine.CFrame * CFrame.new(0, (-15), 0);
									AimBotSkillPosition = AimSkill.Position;
								until not v.Parent or v.Health.Value < 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild("PirateGrandBrigade")) or (not v:FindFirstChild("Engine")) or (not _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"]);
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") and _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									local BoatCFrame = v.Engine.CFrame;
									if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									topos(BoatCFrame);
									Skillaimbot = true;
									AutoHaki();
									AimSkill = v.Engine.CFrame * CFrame.new(0, (-15), 0);
									AimBotSkillPosition = AimSkill.Position;
								until not v.Parent or v.Health.Value < 0 or (not (game:GetService("Workspace")).Enemies:FindFirstChild("PirateBrigade")) or (not v:FindFirstChild("Engine")) or (not _G.Settings.SeaEvent["Auto Farm Pirate Brigade"]);
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and CheckSeaBeast() and _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
						if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
							for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
								if CheckSeaBeast() then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0);
										if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 400 then
											_G.SeaSkill = true;
										else
											_G.SeaSkill = false;
										end;
										AutoHaki();
										Skillaimbot = true;
										AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
										if DodgeSeabeasts() then
											topos(v.HumanoidRootPart.CFrame * CFrame.new(math.random((-200), 300), 400, math.random((-200), 300)));
										else
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 400, 0));
										end;
									until not _G.Settings.SeaEvent["Auto Farm Seabeasts"] or CheckSeaBeast() == false or (not v:FindFirstChild("Humanoid")) or (not v:FindFirstChild("HumanoidRootPart")) or v.Humanoid.Health <= 0 or (not v.Parent);
									Skillaimbot = false;
									_G.SeaSkill = false;
								else
									Skillaimbot = false;
									_G.SeaSkill = false;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") and _G.Settings.SeaEvent["Auto Farm Terrorshark"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Terrorshark") then
								if v.Name == "Terrorshark" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											Attack();
											_G.SeaSkill = false;
											topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0));
										until not _G.Settings.SeaEvent["Auto Farm Terrorshark"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and CheckPiranha() and _G.Settings.SeaEvent["Auto Farm Piranha"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Piranha") then
								if v.Name == "Piranha" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											Attack();
											_G.SeaSkill = false;
										until not _G.Settings.SeaEvent["Auto Farm Piranha"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					elseif _G.Settings.SeaEvent["Sail Boat"] and CheckShark() and _G.Settings.SeaEvent["Auto Farm Shark"] then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Shark") then
								if v.Name == "Shark" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(v.HumanoidRootPart.CFrame * Pos);
											Attack();
											_G.SeaSkill = false;
										until not _G.Settings.SeaEvent["Auto Farm Shark"] or (not v.Parent) or v.Humanoid.Health <= 0;
									end;
								end;
							end;
						end;
					else
						Skillaimbot = false;
						_G.SeaSkill = false;
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
					end;
				end);
			end;
		end;
	end);
    Tabs.SeaTab:Section({ Title = "Enemies" })
    Tabs.SeaTab:Toggle({
        Title = "Auto Farm Shark",
        Value = _G.Settings.SeaEvent["Auto Farm Shark"],
        Desc = "Auto Kill Shark",
        Callback = function(value)
            _G.Settings.SeaEvent["Auto Farm Shark"] = value
            StopTween(_G.Settings.SeaEvent["Auto Farm Shark"])
        end
    })
    Tabs.SeaTab:Toggle({
        Title = "Auto Farm Piranha",
        Value = _G.Settings.SeaEvent["Auto Farm Piranha"],
        Desc = "Auto Kill Piranha",
        Callback = function(value)
            _G.Settings.SeaEvent["Auto Farm Piranha"] = value
            StopTween(_G.Settings.SeaEvent["Auto Farm Piranha"])
        end
    })
    Tabs.SeaTab:Toggle({
        Title = "Auto Farm Fish Crew Member",
        Value = _G.Settings.SeaEvent["Auto Farm Fish Crew Member"],
        Desc = "Auto Kill Fish Crew Member",
        Callback = function(value)
            _G.Settings.SeaEvent["Auto Farm Fish Crew Member"] = value
            StopTween(_G.Settings.SeaEvent["Auto Farm Fish Crew Member"])
        end
    })
    Tabs.SeaTab:Section({ Title = "Boat" })
    Tabs.SeaTab:Toggle({
        Title = "Auto Kill Ghost Ship",
        Value = _G.Settings.SeaEvent["Auto Farm Ghost Ship"],
        Desc = "Auto Kill Use Skill",
        Callback = function(value)
            _G.Settings.SeaEvent["Auto Farm Ghost Ship"] = value
            if not _G.Settings.SeaEvent["Auto Farm Ghost Ship"] then
                _G.SeaSkill = false
                Skillaimbot = false
            end
            StopTween(_G.Settings.SeaEvent["Auto Farm Ghost Ship"])
        end
    })
    Tabs.SeaTab:Toggle({
        Title = "Auto Kill Pirate Brigade",
        Value = _G.Settings.SeaEvent["Auto Farm Pirate Brigade"],
        Desc = "Auto Kill Enemies Use Skill",
        Callback = function(value)
            _G.Settings.SeaEvent["Auto Farm Pirate Brigade"] = value
            StopTween(_G.Settings.SeaEvent["Auto Farm Pirate Brigade"])
        end
    })
    Tabs.SeaTab:Toggle({
        Title = "Auto Kill Pirate Grand Brigade",
        Value = _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"],
        Desc = "Auto Kill Enemies Use Skill",
        Callback = function(value)
            _G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"] = value
            StopTween(_G.Settings.SeaEvent["Auto Farm Pirate Grand Brigade"])
        end
    })
    Tabs.SeaTab:Section({ Title = "Boss" })
    Tabs.SeaTab:Toggle({
        Title = "Auto Kill Terrorshark",
        Value = _G.Settings.SeaEvent["Auto Farm Terrorshark"],
        Callback = function(value)
            _G.Settings.SeaEvent["Auto Farm Terrorshark"] = value
            StopTween(_G.Settings.SeaEvent["Auto Farm Terrorshark"])
        end
    })
    Tabs.SeaTab:Toggle({
        Title = "Auto Kill Seabest",
        Value = _G.Settings.SeaEvent["Auto Farm Seabeasts"],
        Callback = function(value)
            _G.Settings.SeaEvent["Auto Farm Seabeasts"] = value
            if not _G.Settings.SeaEvent["Auto Farm Seabeasts"] then
                _G.SeaSkill = false
                Skillaimbot = false
            end
            StopTween(_G.Settings.SeaEvent["Auto Farm Seabeasts"])
        end
    })
    Tabs.SeaTab:Section({ Title = "Ability" })
    Tabs.SeaTab:Toggle({
        Title = "Lightning",
        Value = _G.Settings.SeaEvent.Lightning,
        Desc = "For lightning in the night",
        Callback = function(value)
            _G.Settings.SeaEvent.Lightning = value
        end
    })
    local RunService = game:GetService("RunService");
	RunService.Heartbeat:Connect(function()
		local Lighting = game:GetService("Lighting");
		if _G.Settings.SeaEvent.Lightning then
			Lighting.ClockTime = 12;
		end;
	end);
    Tabs.SeaTab:Toggle({
        Title = "Speed Boat",
        Value = _G.Settings.SeaEvent["Increase Boat Speed"],
        Callback = function(value)
            _G.Settings.SeaEvent["Increase Boat Speed"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			pcall(function()
				local vehicleSeats = {};
				for i, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("VehicleSeat") then
						table.insert(vehicleSeats, v);
					end;
				end;
				if _G.Settings.SeaEvent["Increase Boat Speed"] then
					for _, v in pairs(vehicleSeats) do
						v.MaxSpeed = 350;
					end;
				else
					for _, v in pairs(vehicleSeats) do
						v.MaxSpeed = 150;
					end;
				end;
			end);
		end;
	end);
    Tabs.SeaTab:Toggle({
        Title = "No Clip Rock",
        Value = _G.Settings.SeaEvent["No Clip Rock"],
        Desc = "NoClip",
        Callback = function(value)
            _G.Settings.SeaEvent["No Clip Rock"] = value
        end
    })
    spawn(function()
		while wait(0.2) do
			pcall(function()
				for i, boat in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
					for _, v in pairs((game:GetService("Workspace")).Boats[boat.Name]:GetDescendants()) do
						if v:IsA("BasePart") then
							if _G.Settings.SeaEvent["No Clip Rock"] or _G.Settings.SeaEvent["Sail Boat"] then
								v.CanCollide = false;
							else
								v.CanCollide = true;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
    Tabs.SettingSeaTab:Section({ Title = "Settings Sea Event" })
    Tabs.SettingSeaTab:Toggle({
        Title = "Use Skill Devil Fruit",
        Value = _G.Settings.SettingSea["Skill Devil Fruit"],
        Desc = "Use Fruit Skill",
        Callback = function(value)
            _G.Settings.SettingSea["Skill Devil Fruit"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Use Skill Melee",
        Value = _G.Settings.SettingSea["Skill Melee"],
        Desc = "Use Melee Skill",
        Callback = function(value)
            _G.Settings.SettingSea["Skill Melee"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Use Skill Sword",
        Value = _G.Settings.SettingSea["Skill Sword"],
        Desc = "Use Sword Skill",
        Callback = function(value)
            _G.Settings.SettingSea["Skill Sword"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Use Skill Gun",
        Value = _G.Settings.SettingSea["Skill Gun"],
        Desc = "Use Gun Skill",
        Callback = function(value)
            _G.Settings.SettingSea["Skill Gun"] = value
        end
    })
    Tabs.SettingSeaTab:Section({ Title = "[ Skill Fruit ]" })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill Z",
        Value = _G.Settings.SettingSea["Sea Fruit Skill Z"],
        Desc = "Auto Skill Z",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Fruit Skill Z"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill X",
        Value = _G.Settings.SettingSea["Sea Fruit Skill X"],
        Desc = "Auto Skill X",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Fruit Skill X"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill C",
        Value = _G.Settings.SettingSea["Sea Fruit Skill C"],
        Desc = "Auto Skill C",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Fruit Skill C"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill V",
        Value = _G.Settings.SettingSea["Sea Fruit Skill V"],
        Desc = "Auto Skill V",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Fruit Skill V"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill F",
        Value = _G.Settings.SettingSea["Sea Fruit Skill F"],
        Desc = "Auto Skill F",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Fruit Skill F"] = value
        end
    })
    Tabs.SettingSeaTab:Section({ Title = "[ Skill Melee ]" })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill Z",
        Value = _G.Settings.SettingSea["Sea Melee Skill Z"],
        Desc = "Auto Skill Z",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Melee Skill Z"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill X",
        Value = _G.Settings.SettingSea["Sea Melee Skill X"],
        Desc = "Auto Skill X",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Melee Skill X"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill C",
        Value = _G.Settings.SettingSea["Sea Melee Skill C"],
        Desc = "Auto Skill C",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Melee Skill C"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill V",
        Value = _G.Settings.SettingSea["Sea Melee Skill V"],
        Desc = "Auto Skill V",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Melee Skill V"] = value
        end
    })
    Tabs.SettingSeaTab:Section({ Title = "[ Skill Sword ]" })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill Z",
        Value = _G.Settings.SettingSea["Sea Sword Skill Z"],
        Desc = "Auto Skill Z",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Sword Skill Z"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill X",
        Value = _G.Settings.SettingSea["Sea Sword Skill X"],
        Desc = "Auto Skill X",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Sword Skill X"] = value
        end
    })
    Tabs.SettingSeaTab:Section({ Title = "[ Skill Gun ]" })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill Z",
        Value = _G.Settings.SettingSea["Sea Gun Skill Z"],
        Desc = "Auto Skill Z",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Gun Skill Z"] = value
        end
    })
    Tabs.SettingSeaTab:Toggle({
        Title = "Skill X",
        Value = _G.Settings.SettingSea["Sea Gun Skill X"],
        Desc = "Auto Skill X",
        Callback = function(value)
            _G.Settings.SettingSea["Sea Gun Skill X"] = value
        end
    })
end;
DoneSkillGun = false;
DoneSkillSword = false;
DoneSkillFruit = false;
DoneSkillMelee = false;
spawn(function()
	while wait() do
		pcall(function()
			if _G.SeaSkill then
				if _G.Settings.SettingSea["Skill Devil Fruit"] and DoneSkillFruit == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Blox Fruit" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill Z"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill X"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill C"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill C"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill V"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill V"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
					end;
					if _G.Settings.SettingSea["Sea Fruit Skill F"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "F", false, game);
						wait(_G.Settings.Hold["Hold Sea Skill F"]);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "F", false, game);
					end;
					DoneSkillFruit = true;
				end;
                if _G.Settings.SettingSea["Skill Melee"] and DoneSkillMelee == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Melee" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Melee Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Melee Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					if _G.Settings.SettingSea["Sea Melee Skill C"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
					end;
					if _G.Settings.SettingSea["Sea Melee Skill V"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
					end;
					DoneSkillMelee = true;
				end;
                if _G.Settings.SettingSea["Skill Sword"] and DoneSkillSword == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Sword" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Sword Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Sword Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(0);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					DoneSkillSword = true;
				end;
                if _G.Settings.SettingSea["Skill Gun"] and DoneSkillGun == false then
					for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Gun" then
								game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
							end;
						end;
					end;
					if _G.Settings.SettingSea["Sea Gun Skill Z"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
						wait(0.1);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					end;
					if _G.Settings.SettingSea["Sea Gun Skill X"] then
						(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
						wait(0.1);
						(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					end;
					DoneSkillGun = true;
				end;
				DoneSkillGun = false;
				DoneSkillSword = false;
				DoneSkillFruit = false;
				DoneSkillMelee = false;
			end;
		end);
	end;
end);
function CheckSeaBeast()
	if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
		for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
			if v:FindFirstChild("Humanoid") or v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 then
				return true;
			end;
		end;
	end;
	return false;
end;
function EquipAllWeapon()
	pcall(function()
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") and (not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening")) then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name);
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid);
				wait(1);
			end;
		end;
	end);
end;
local gg = getrawmetatable(game);
local old = gg.__namecall;
setreadonly(gg, false);
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod();
	local args = {
		...
	};
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if Skillaimbot then
					args[2] = AimBotSkillPosition;
					return old(unpack(args));
				end;
			end;
		end;
	end;
	return old(...);
end);
spawn(function()
	while wait(0.2) do
		pcall(function()
			if UseSkill then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
						if _G.Settings.Setting["Fruit Mastery Skill Z"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill Z"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill X"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill X"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill C"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill C"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill V"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill V"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
						end;
						if _G.Settings.Setting["Fruit Mastery Skill F"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "F", false, game);
							wait(_G.Settings.Hold["Hold Mastery Skill F"]);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "F", false, game);
						end;
					end;
				end;
			end;
		end);
	end;
end);
spawn(function()
	while wait() do
		pcall(function()
			if UseGunSkill then
				for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
					if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.Setting["Mastery Health"] / 100 then
						if _G.Settings.Setting["Gun Mastery Skill Z"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
							wait(0.5);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
						end;
						if _G.Settings.Setting["Gun Mastery Skill X"] then
							(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
							wait(0.5);
							(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
						end;
					end;
				end;
			end;
		end);
	end;
end);
if World2 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Dragon Trident",
        Value = _G.Settings.Items["Auto Dragon Trident"],
        Callback = function(value)
            _G.Settings.Items["Auto Dragon Trident"] = value
            StopTween(_G.Settings.Items["Auto Dragon Trident"])
        end
    })
    local TridentPos = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Dragon Trident"] and World2 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Tide Keeper") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Tide Keeper" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Dragon Trident"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Tide Keeper") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Tide Keeper")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World1 then
    local NamfonPos = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Warden Sword"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Chief Warden") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Chief Warden" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Warden Sword"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Chief Warden")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local GayMakPos = CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Greybeard"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Greybeard") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Greybeard" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Greybeard"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(GayMakPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Greybeard") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Greybeard")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
    Tabs.ItemsTab:Toggle({
    Title = "Auto Pole",
    Value = _G.Settings.Items["Auto Pole"],
    Callback = function(value)
        _G.Settings.Items["Auto Pole"] = value
        StopTween(_G.Settings.Items["Auto Pole"])
    end
    })
    Tabs.ItemsTab:Toggle({
    Title = "Auto Shark saw",
    Value = _G.Settings.Items["Auto Shark Saw"],
    Callback = function(value)
        _G.Settings.Items["Auto Shark Saw"] = value
        StopTween(_G.Settings.Items["Auto Shark Saw"])
    end
    })
    Tabs.ItemsTab:Toggle({
    Title = "Auto Greybeard",
    Value = _G.Settings.Items["Auto Greybeard"],
    Callback = function(value)
        _G.Settings.Items["Auto Greybeard"] = value
        StopTween(_G.Settings.Items["Auto Greybeard"])
    end
    })
    local PolePos = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Pole"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Thunder God") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Thunder God" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Pole"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Thunder God") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Thunder God")).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
						end;
					end;
				end);
			end;
		end;
	end);
	local SharkPos = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Shark Saw"] and World1 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("The Saw") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "The Saw" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not _G.Settings.Items["Auto Shark Saw"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(SharkPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094));
						if (game:GetService("ReplicatedStorage")):FindFirstChild("The Saw") then
							topos(((game:GetService("ReplicatedStorage")):FindFirstChild("The Saw")).HumanoidRootPart.CFrame * CFrame.new(2, 40, 2));
						end;
					end;
				end);
			end;
		end;
	end);
end;
if World2 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Swan Glasses",
        Value = _G.Settings.Items["Auto Swan Glasses"],
        Desc = "Auto Kill Don Swan",
        Callback = function(value)
            _G.Settings.Items["Auto Swan Glasses"] = value
            StopTween(_G.Settings.Items["Auto Swan Glasses"])
        end
    })
    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Swan Glasses"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Don Swan") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Don Swan" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until _G.Settings.Items["Auto Swan Glasses"] == false or v.Humanoid.Health <= 0;
							end;
						end;
					else
						repeat
							task.wait();
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625));
						until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625)).Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.Settings.Items["Auto Swan Glasses"] == false;
					end;
				end;
			end;
		end);
	end);
end;
if World3 then
    Tabs.ItemsTab:Section({ Title = "Other" })
    Tabs.ItemsTab:Toggle({
        Title = "Auto Arena Trainer",
        Value = _G.Settings.Items["Auto Arena Trainer"],
        Callback = function(value)
            _G.Settings.Items["Auto Arena Trainer"] = value
            StopTween(_G.Settings.Items["Auto Arena Trainer"])
        end
    })
    local GGPos = CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312);
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Items["Auto Arena Trainer"] and World3 then
				pcall(function()
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") or string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") or string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Training Dummy") then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Training Dummy") or (game:GetService("Workspace")).Enemies:FindFirstChild("Training Dummy") or (game:GetService("Workspace")).Enemies:FindFirstChild("Training Dummy") then
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == "Training Dummy" or v.Name == "Training Dummy" or v.Name == "Training Dummy" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												AutoHaki();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												topos(v.HumanoidRootPart.CFrame * Pos);
												Attack();
											until _G.Settings.Items["Auto Arena Trainer"] == false or v.Humanoid.Health <= 0 or (not v.Parent);
										end;
									end;
								end;
							else
								topos(GGPos);
								topos(CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312));
								if (game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy") then
									topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy")).HumanoidRootPart.CFrame * MethodFarm);
								elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy") then
									topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy")).HumanoidRootPart.CFrame * MethodFarm);
								elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy") then
									topos(((game:GetService("ReplicatedStorage")):FindFirstChild("Training Dummy")).HumanoidRootPart.CFrame * MethodFarm);
								end;
							end;
						end;
					elseif _G.Settings.Items["Auto Arena Trainer"] and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ArenaTrainer") == "I don't have anything for you right now. Come back later." then
						Hop();
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ArenaTrainer");
					end;
				end);
			end;
		end;
	end);
    Tabs.ItemsTab:Toggle({
        Title = "Auto Dark Dagger",
        Value = _G.Settings.Items["Auto Dark Dagger"],
        Callback = function(value)
            _G.Settings.Items["Auto Dark Dagger"] = value
            StopTween(_G.Settings.Items["Auto Dark Dagger"])
        end
    })
    local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Dark Dagger"] then
					if (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra True Form") or (game:GetService("Workspace")).Enemies:FindFirstChild("rip_indra") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat
									(game:GetService("RunService")).Heartbeat:wait();
									AutoHaki();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									v.HumanoidRootPart.CanCollide = false;
									v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
									topos(v.HumanoidRootPart.CFrame * Pos);
									Attack();
								until _G.Settings.Items["Auto Dark Dagger"] == false or v.Humanoid.Health <= 0;
							end;
						end;
					else
						topos(AdminPos);
						UnEquipWeapon(_G.Settings.Main["Selected Weapon"]);
						topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781));
					end;
				end;
			end;
		end);
	end);
    Tabs.ItemsTab:Toggle({
        Title = "Auto Press Haki Button",
        Value = _G.Settings.Items["Auto Press Haki Button"],
        Desc = "Need Legendary Haki Color",
        Callback = function(value)
            _G.Settings.Items["Auto Press Haki Button"] = value
            StopTween(_G.Settings.Items["Auto Press Haki Button"])
        end
    })
    spawn(function()
		while wait(0.3) do
			pcall(function()
				if _G.Settings.Items["Auto Press Haki Button"] then
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Winter Sky");
					wait(0.5);
					repeat
						topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208));
						wait();
					until _G.StopTween == true or _G.Settings.Items["Auto Press Haki Button"] == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-5420.16602), 1084.9657, (-2666.8208))).Magnitude <= 10;
					wait(0.5);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Pure Red");
					wait(0.5);
					repeat
						topos(CFrame.new(-5414.41357, 309.865753, -2212.45776));
						wait();
					until _G.StopTween == true or _G.Settings.Items["Auto Press Haki Button"] == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-5414.41357), 309.865753, (-2212.45776))).Magnitude <= 10;
					wait(0.5);
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("activateColor", "Snow White");
					wait(0.5);
					repeat
						topos(CFrame.new(-4971.47559, 331.565765, -3720.02954));
						wait();
					until _G.StopTween == true or _G.Settings.Items["Auto Press Haki Button"] == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-4971.47559), 331.565765, (-3720.02954))).Magnitude <= 10;
					wait(0.5);
					(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
					wait(3);
					(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 600));
				end;
			end);
		end;
	end);
    Tabs.ItemsTab:Toggle({
        Title = "Auto Rainbow Haki",
        Value = _G.Settings.Items["Auto Rainbow Haki"],
        Callback = function(value)
            _G.Settings.Items["Auto Rainbow Haki"] = value
            StopTween(_G.Settings.Items["Auto Rainbow Haki"])
        end
    })
    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Rainbow Haki"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false then
						topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875));
						if (Vector3.new((-11892.0703125), 930.57672119141, (-8760.1591796875)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							wait(1.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end;
					elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Stone") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Stone" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.0000203251839, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199));
						end;
					elseif (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Island Empress") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Island Empress" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291));
						end;
					elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Kilo Admiral") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Kilo Admiral" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479));
						end;
					elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Captain Elephant") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Captain Elephant" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 0.0000000798849911, 0.69961375, -0.000000102065748, 1, -0.00000000994383065, -0.69961375, -0.0000000643015241, 0.714521289));
						end;
					elseif string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Beautiful Pirate") then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == "Beautiful Pirate" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										topos(v.HumanoidRootPart.CFrame * Pos);
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameRainbow;
										Attack();
									until _G.Settings.Items["Auto Rainbow Haki"] == false or v.Humanoid.Health <= 0 or (not v.Parent) or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
								end;
							end;
						else
							topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359));
						end;
					else
						topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875));
						if (Vector3.new((-11892.0703125), 930.57672119141, (-8760.1591796875)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
							wait(1.5);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("HornedMan", "Bet");
						end;
					end;
				end;
			end;
		end);
	end);
    Tabs.ItemsTab:Toggle({
        Title = "Auto Holy Torch",
        Value = _G.Settings.Items["Auto Holy Torch"],
        Callback = function(value)
            _G.Settings.Items["Auto Holy Torch"] = value
            StopTween(_G.Settings.Items["Auto Holy Torch"])
        end
    })
    spawn(function()
		while wait(0.5) do
			pcall(function()
				if _G.Settings.Items["Auto Holy Torch"] then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1));
						until (Vector3.new((-10752.4434), 415.261749, (-9367.43848)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229));
						until (Vector3.new((-11671.6289), 333.78125, (-9474.31934)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642));
						until (Vector3.new((-12133.1406), 521.507446, (-10654.292)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						repeat
							wait(0.2);
							EquipWeapon("Holy Torch");
							topos(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228));
						until (Vector3.new((-13336.127), 484.521179, (-6985.31689)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
						EquipWeapon("Holy Torch");
						repeat
							wait(0.2);
							topos(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108));
						until (Vector3.new((-13487.623), 336.436188, (-7924.53857)) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5;
						wait(2);
					end;
				end;
			end);
		end;
	end);
end;
if World2 then
    Tabs.ItemsTab:Toggle({
        Title = "Auto Bartlio Quest",
        Value = _G.Settings.Items["Auto Bartilo Quest"],
        Callback = function(value)
            _G.Settings.Items["Auto Bartilo Quest"] = value
        end
    })
    spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Items["Auto Bartilo Quest"] then
					if (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
						if string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find((game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Swan Pirate") then
								Ms = "Swan Pirate";
								for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if v.Name == Ms then
										pcall(function()
											repeat
												(game:GetService("RunService")).Heartbeat:wait();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												AutoHaki();
												v.HumanoidRootPart.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
												topos(v.HumanoidRootPart.CFrame * Pos);
												PosMon = v.HumanoidRootPart.CFrame;
												MonFarm = v.Name;
												Attack();
											until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Bartilo Quest"] == false or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										end);
									end;
								end;
							else
								repeat
									topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 0.0000000455137119, -0.230443969, 0.0000000267024713, 1, 0.0000000847491108, 0.230443969, 0.0000000763147128, -0.973085582));
									wait();
								until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, (-0.973085582), 0.0000000455137119, (-0.230443969), 0.0000000267024713, 1, 0.0000000847491108, 0.230443969, 0.0000000763147128, (-0.973085582))).Magnitude <= 10;
							end;
						else
							repeat
								topos(CFrame.new(-456.28952, 73.0200958, 299.895966));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-456.28952), 73.0200958, 299.895966)).Magnitude <= 10;
							wait(1.1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1);
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
						if (game:GetService("Workspace")).Enemies:FindFirstChild("Jeremy") then
							Ms = "Jeremy";
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v.Name == Ms then
									OldCFrameBartlio = v.HumanoidRootPart.CFrame;
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										AutoHaki();
										v.HumanoidRootPart.CanCollide = false;
										v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
										v.HumanoidRootPart.CFrame = OldCFrameBartlio;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Items["Auto Bartilo Quest"] == false;
								end;
							end;
						elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
							repeat
								topos(CFrame.new(-456.28952, 73.0200958, 299.895966));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-456.28952), 73.0200958, 299.895966)).Magnitude <= 10;
							wait(1.1);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo");
							wait(1);
							repeat
								topos(CFrame.new(2099.88159, 448.931, 648.997375));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10;
							wait(2);
						else
							repeat
								topos(CFrame.new(2099.88159, 448.931, 648.997375));
								wait();
							until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Level.Value >= 800 and (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
						repeat
							topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1850.49329), 13.1789551, 1750.89685)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1858.87305), 19.3777466, 1712.01807)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1803.94324), 16.5789185, 1750.89685)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1858.55835), 16.8604317, 1724.79541)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1869.54224, 15.987854, 1681.00659));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1869.54224), 15.987854, 1681.00659)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1800.0979), 16.4978027, 1684.52368)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1819.26343, 14.795166, 1717.90625));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1819.26343), 14.795166, 1717.90625)).Magnitude <= 10;
						wait(1);
						repeat
							topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541));
							wait();
						until not _G.Settings.Items["Auto Bartilo Quest"] or ((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new((-1813.51843), 14.8604736, 1724.79541)).Magnitude <= 10;
					end;
				end;
			end;
		end);
	end);
end;
spawn(function()
	while task.wait() do
		if _G.Settings.Setting["Bring Mob"] then
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name, "Boss") and v.Name == MonFarm and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= BringMobDistance then
						v.HumanoidRootPart.CFrame = PosMon;
						v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
					end;
				end;
			end);
		end;
	end;
end);
spawn(function()
	(game:GetService("RunService")).RenderStepped:Connect(function()
		wait();
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
		end;
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
		end;
	end);
end);
Tabs.StatsTab:Section({ Title = "Stats" })
local Pointstat = Tabs.StatsTab:Paragraph({
    Title = "Stat Points",
    Desc = "Stat Points : 0"
})
spawn(function()
    while wait(0.2) do
        pcall(function()
            Pointstat:SetDesc("Stat Points : " .. tostring(game:GetService("Players").LocalPlayer.Data.Points.Value))
        end)
    end
end)
Tabs.StatsTab:Toggle({
    Title = "Melee",
    Value = _G.Settings.Stats["Auto Add Melee Stats"],
    Desc = "Auto Add Meele Stats",
    Callback = function(value)
        _G.Settings.Stats["Auto Add Melee Stats"] = value
    end
})
Tabs.StatsTab:Toggle({
    Title = "Defense",
    Value = _G.Settings.Stats["Auto Add Defense Stats"],
    Desc = "Auto Add Defense Stats",
    Callback = function(value)
        _G.Settings.Stats["Auto Add Defense Stats"] = value
    end
})
Tabs.StatsTab:Toggle({
    Title = "Sword",
    Value = _G.Settings.Stats["Auto Add Sword Stats"],
    Desc = "Auto Add Sword Stats",
    Callback = function(value)
        _G.Settings.Stats["Auto Add Sword Stats"] = value
    end
})
Tabs.StatsTab:Toggle({
    Title = "Gun",
    Value = _G.Settings.Stats["Auto Add Gun Stats"],
    Desc = "Auto Add Gun Stats",
    Callback = function(value)
        _G.Settings.Stats["Auto Add Gun Stats"] = value
    end
})
Tabs.StatsTab:Toggle({
    Title = "Devil Fruit",
    Value = _G.Settings.Stats["Auto Add Devil Fruit Stats"],
    Desc = "Auto Add Fruit Stats",
    Callback = function(value)
        _G.Settings.Stats["Auto Add Devil Fruit Stats"] = value
    end
})
PointStats = 1
Tabs.StatsTab:Slider({
    Title = "Point",
    Value = {
        Min = 1,
        Max = 100,
        Default = PointStats,
    },
    Callback = function(value)
        PointStats = value
    end
})
spawn(function()
	while wait(0.2) do
		if game.Players.localPlayer.Data.Points.Value >= PointStats then
			if _G.Settings.Stats["Auto Add Melee Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Melee",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Defense Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Defense",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Sword Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Sword",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Gun Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Gun",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
			if _G.Settings.Stats["Auto Add Devil Fruit Stats"] then
				local args = {
					[1] = "AddPoint",
					[2] = "Demon Fruit",
					[3] = PointStats
				};
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer(unpack(args));
			end;
		end;
	end;
end);

local Melee = Tabs.StatsTab:Paragraph({
    Title = "Melee : ",
    Desc = ""
})
local Defense = Tabs.StatsTab:Paragraph({
    Title = "Defense : ",
    Desc = ""
})
local Sword = Tabs.StatsTab:Paragraph({
    Title = "Sword : ",
    Desc = ""
})
local Gun = Tabs.StatsTab:Paragraph({
    Title = "Gun : ",
    Desc = ""
})
local Fruit = Tabs.StatsTab:Paragraph({
    Title = "Fruit : ",
    Desc = ""
})

spawn(function()
    while wait(0.2) do
        pcall(function()
            Melee:SetDesc("Melee : " .. game.Players.LocalPlayer.Data.Stats.Melee.Level.Value)
        end)
    end
end)
spawn(function()
    while wait(0.2) do
        pcall(function()
            Defense:SetDesc("Defense : " .. game.Players.LocalPlayer.Data.Stats.Defense.Level.Value)
        end)
    end
end)
spawn(function()
    while wait(0.2) do
        pcall(function()
            Sword:SetDesc("Sword : " .. game.Players.LocalPlayer.Data.Stats.Sword.Level.Value)
        end)
    end
end)
spawn(function()
    while wait(0.2) do
        pcall(function()
            Gun:SetDesc("Gun : " .. game.Players.LocalPlayer.Data.Stats.Gun.Level.Value)
        end)
    end
end)
spawn(function()
    while wait(0.2) do
        pcall(function()
            Fruit:SetDesc("Fruit : " .. game.Players.LocalPlayer.Data.Stats["Demon Fruit"].Level.Value)
        end)
    end
end)
if World2 then
    Tabs.RaceV4Tab:Section({ Title = "Race V2" })
    Tabs.RaceV4Tab:Toggle({
        Title = "Auto Evo Race [ V2 ]",
        Value = _G.Settings.Race["Auto Race V2"],
        Callback = function(value)
            _G.Settings.Race["Auto Race V2"] = value
            StopTween(_G.Settings.Race["Auto Race V2"])
        end
    })
    Tabs.RaceV4Tab:Toggle({
        Title = "Auto Evo Race [ V3 ]",
        Value = _G.Settings.Race["Auto Race V3"],
        Callback = function(value)
            _G.Settings.Race["Auto Race V3"] = value
            StopTween(_G.Settings.Race["Auto Race V3"])
        end
    })
    spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoSeabeasts then
					if (game:GetService("Workspace")):FindFirstChild("SeaBeasts") then
						for i, v in pairs((game:GetService("Workspace")).SeaBeasts:GetChildren()) do
							if CheckSeaBeast() then
								repeat
									wait();
									local CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0);
									if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200 then
										_G.SeaSkill = true;
									else
										_G.SeaSkill = false;
									end;
									Skillaimbot = true;
									AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position;
									topos(CFrameSeaBeast * CFrame.new(0, 200, 0));
								until not _G.AutoSeabeasts or CheckSeaBeast() == false or (not v:FindFirstChild("Humanoid")) or (not v:FindFirstChild("HumanoidRootPart")) or v.Humanoid.Health < 0 or (not v.Parent);
								Skillaimbot = false;
								_G.SeaSkill = false;
							else
								Skillaimbot = false;
								_G.SeaSkill = false;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoSeabeasts then
					if not CheckBoat() then
						local BuyBoatCFrame = CFrame.new(-1936.93213, 6.6355958, -2568.47974, -0.922701657, -0.00000000988315652, 0.385514766, -0.000000016636152, 1, -0.0000000141811682, -0.385514766, -0.0000000194984704, -0.922701657);
						BuyBoat = topos(BuyBoatCFrame);
						if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
							if BuyBoat then
								BuyBoat:Cancel();
							end;
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BuyBoat", "MarineBrigade");
							wait(1);
							for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
								if v.Name == "MarineBrigade" then
									if (v.VehicleSeat.CFrame.Position - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										AddEsp("MyBoatEsp", v);
									end;
								end;
							end;
						end;
					elseif CheckBoat() then
						for i, v in pairs((game:GetService("Workspace")).Boats:GetChildren()) do
							if v.Name == "MarineBrigade" then
								if v:FindFirstChild("MyBoatEsp") then
									if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false then
										if CheckSeaBeast() then
											if TweenPlayer then
												TweenPlayer:Cancel();
											end;
										else
											local BoatPos = v.VehicleSeat.CFrame * CFrame.new(0, 1, 0);
											local Distance = (BoatPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
											TweenPlayer = (game:GetService("TweenService")):Create((game:GetService("Players")).LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear), {
												CFrame = BoatPos
											});
											TweenPlayer:Play();
										end;
									else
										repeat
											wait();
											local TargetPos = CFrame.new(-4124.19531, 9.00001144, -996.203918, 0.929954946, 0.0642714053, 0.362012357, -0.0689479187, 0.997620285, 0.00000000286939827, -0.361150861, -0.0249600001, 0.932173312);
											local Distance = (TargetPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
											TweenBoat = (game:service("TweenService")):Create(v.VehicleSeat, TweenInfo.new(Distance / 250, Enum.EasingStyle.Linear), {
												CFrame = TargetPos
											});
											if (v.VehicleSeat.CFrame.Position - TargetPos.Position).Magnitude <= 25 then
												TweenBoat:Cancel();
											else
												TweenBoat:Play();
											end;
										until CheckSeaBeast() or (game.Players.LocalPlayer.Character:WaitForChild("Humanoid")).Sit == false;
										if TweenBoat then
											TweenBoat:Cancel();
										end;
										(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
										wait(0.1);
										(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
									end;
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoSeabeasts then
					if CheckSeaBeast() then
						if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
							(game:GetService("VirtualInputManager")):SendKeyEvent(true, 32, false, game);
							wait(0.1);
							(game:GetService("VirtualInputManager")):SendKeyEvent(false, 32, false, game);
						end;
					end;
				end;
			end);
		end;
	end);
	function CheckV3()
		if (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Mink" then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Agility") then
				return true;
			end;
		elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Fishman" then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Water Body") then
				return true;
			end;
		elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Skypiea" then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Heavenly Blood") then
				return true;
			end;
		end;
		return false;
	end;
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.AutoMeleeSkill then
					(game:service("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
					wait(0);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
					(game:service("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
					wait(0);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
					(game:service("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
					wait(0);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
					(game:service("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
					wait(0);
					(game:service("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
				end;
			end);
		end;
	end);
	spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Race["Auto Race V3"] then
					if (game:GetService("Players")).LocalPlayer.Data.Race:FindFirstChild("Evolved") then
						local myRace = tostring((game:GetService("Players")).LocalPlayer.Data.Race.Value);
						if (game:GetService("Players")).LocalPlayer.Data.Beli.Value >= 2000000 then
							_G.AutoKatakuri = false;
							if myRace == "Skypiea" then
								if (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 0 then
									local QuestCFrame = CFrame.new(-1990.71094, 125.519119, -70.5762024, -0.235444918, -0.0000000715676052, -0.971887708, 0.0000000305724122, 1, -0.0000000810440568, 0.971887708, -0.0000000487943623, -0.235444918);
									topos(QuestCFrame);
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCFrame.Position).Magnitude <= 5 then
										(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "2");
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 1 then
									for i, v in pairs((game:GetService("Players")):GetChildren()) do
										if tostring(v.Data.Race.Value) == "Skypiea" then
											local Player = v:FindFirstChild(v.Name);
											if Player then
												repeat
													wait();
													topos(Player.HumanoidRootPart.CFrame * CFrame.new(0, 0, (-2)));
													Attack();
													AutoHaki();
													_G.AutoMeleeSkill = true;
													EquipWeapon("Melee");
												until not Player or (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2;
												_G.AutoMeleeSkill = false;
												UnEquipWeapon();
											end;
										end;
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2 then
									(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "3");
								end;
							elseif myRace == "Fishman" then
								if (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 0 then
									local QuestCFrame = CFrame.new(-1990.71094, 125.519119, -70.5762024, -0.235444918, -0.0000000715676052, -0.971887708, 0.0000000305724122, 1, -0.0000000810440568, 0.971887708, -0.0000000487943623, -0.235444918);
									topos(QuestCFrame);
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCFrame.Position).Magnitude <= 5 then
										(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "2");
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 1 then
									_G.AutoSeabeasts = true;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2 then
									_G.AutoSeabeasts = false;
									(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "3");
								end;
							elseif myRace == "Mink" then
								if (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 0 then
									local QuestCFrame = CFrame.new(-1990.71094, 125.519119, -70.5762024, -0.235444918, -0.0000000715676052, -0.971887708, 0.0000000305724122, 1, -0.0000000810440568, 0.971887708, -0.0000000487943623, -0.235444918);
									topos(QuestCFrame);
									if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - QuestCFrame.Position).Magnitude <= 5 then
										(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "2");
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 1 then
									for i, v in pairs((game:GetService("Workspace")):GetChildren()) do
										if string.find(v.Name, "Chest") then
											if (game:GetService("Workspace")):FindFirstChild(v.Name) then
												repeat
													wait(0.5);
													game.Players.LocalPlayer.Character:PivotTo(v:GetPivot());
													firesignal(v.Touched, game.Players.LocalPlayer.Character.HumanoidRootPart);
													(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
												until not v.Parent;
											end;
										end;
									end;
								elseif (((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "1") == 2 then
									(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Wenlocktoad", "3");
								end;
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Race V2"] then
					if not (game:GetService("Players")).LocalPlayer.Data.Race:FindFirstChild("Evolved") then
						if (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "1") == 0 then
							topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 0.0000000639014104, -0.68292886, 0.0000000359963224, 1, 0.0000000550667032, 0.68292886, 0.0000000156424669, -0.730484903));
							if (Vector3.new((-2779.83521), 72.9661407, (-3574.02002)) - (game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.3);
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "2");
							end;
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "1") == 1 then
							pcall(function()
								if not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 1") and (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Flower 1")) then
									topos((game:GetService("Workspace")).Flower1.CFrame);
								elseif not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 2") and (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Flower 2")) then
									topos((game:GetService("Workspace")).Flower2.CFrame);
								elseif not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 3") and (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Flower 3")) then
									if (game:GetService("Workspace")).Enemies:FindFirstChild("Zombie") then
										for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
											if v.Name == "Zombie" then
												repeat
													(game:GetService("RunService")).Heartbeat:wait();
													AutoHaki();
													EquipWeapon(_G.Settings.Main["Selected Weapon"]);
													topos(v.HumanoidRootPart.CFrame * Pos);
													v.HumanoidRootPart.CanCollide = false;
													v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
													Attack();
													PosMon = v.HumanoidRootPart.CFrame;
													MonFarm = v.Name;
												until (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Flower 3") or (not v.Parent) or v.Humanoid.Health <= 0 or _G.Settings.Race["Auto Race V2"] == false;
											end;
										end;
									else
										topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234));
									end;
								end;
							end);
						elseif (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "1") == 2 then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Alchemist", "3");
						end;
					end;
				end;
			end;
		end);
	end);
end;
if World3 then
    Tabs.RaceV4Tab:Section({ Title = "Race V4" })
    local PlaceV4List = {
		"Top Of GreatTree",
		"Timple Of Time",
		"Lever Pull",
		"Acient One"
	};
    Tabs.RaceV4Tab:Dropdown({
        Title = "Choose Place",
        Values = PlaceV4List,
        Value = _G.Settings.Race["Selected PlaceV4"],
        Callback = function(value)
            _G.Settings.Race["Selected PlaceV4"] = value
        end
    })
    Tabs.RaceV4Tab:Toggle({
        Title = "Teleport To Selected Place",
        Value = _G.Settings.Race["Teleport To PlaceV4"],
        Callback = function(value)
            _G.Settings.Race["Teleport To PlaceV4"] = value
            StopTween(_G.Settings.Race["Teleport To PlaceV4"])
        end
    })
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Race["Teleport To PlaceV4"] then
				pcall(function()
					if _G.Settings.Race["Selected PlaceV4"] == "Top Of GreatTree" then
						topos(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625));
					elseif _G.Settings.Race["Selected PlaceV4"] == "Timple Of Time" then
						(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
					elseif _G.Settings.Race["Selected PlaceV4"] == "Lever Pull" then
						local LeverPullPos = CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734);
						if (LeverPullPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1000 then
							(game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875);
						else
							topos(LeverPullPos);
						end;
					elseif _G.Settings.Race["Selected PlaceV4"] == "Acient One" then
						topos(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375));
					end;
				end);
			end;
		end;
	end);
	Tabs.RaceV4Tab:Toggle({
		Title = "Auto Buy Gear",
		Value = _G.Settings.Race["Auto Buy Gear"],
		Callback = function(value)
			_G.Settings.Race["Auto Buy Gear"] = value
			StopTween(_G.Settings.Race["Auto Buy Gear"])
		end
	})
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Buy Gear"] then
					local args = {
						[1] = true
					};
					local args = {
						[1] = "UpgradeRace",
						[2] = "Buy"
					};
					(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(args));
				end;
			end;
		end);
	end);
	Tabs.RaceV4Tab:Toggle({
		Title = "Tween To Highest Point Mirage Island",
		Value = _G.Settings.Race["Tween To Highest Mirage"],
		Desc = "Tween To Top Mirage Island",
		Callback = function(value)
			_G.Settings.Race["Tween To Highest Mirage"] = value
			StopTween(_G.Settings.Race["Tween To Highest Mirage"])
		end
	})
	Tabs.RaceV4Tab:Toggle({
		Title = "Find Blue Gear",
		Value = _G.Settings.Race["Find Blue Gear"],
		Desc = "Tween To Blue Gear",
		Callback = function(value)
			_G.Settings.Race["Find Blue Gear"] = value
			StopTween(_G.Settings.Race["Find Blue Gear"])
		end
	})
	Tabs.RaceV4Tab:Toggle({
		Title = "Auto Look Moon + Use Ability",
		Value = _G.Settings.Race["Look Moon Ability"],
		Desc = "Camera Focus To Moon",
		Callback = function(value)
			_G.Settings.Race["Look Moon Ability"] = value
		end
	})
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Race["Look Moon Ability"] then
					wait();
					local moonDir = game.Lighting:GetMoonDirection();
					local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100;
					game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos);
				end;
			end);
		end;
	end);
	Tabs.RaceV4Tab:Toggle({
		Title = "Auto Train",
		Value = _G.Settings.Race["Auto Train"],
		Callback = function(value)
			_G.Settings.Race["Auto Train"] = value
			StardFarm = value
			StopTween(_G.Settings.Race["Auto Train"])
		end
	})
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Train"] then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
						StardFarm = false;
						topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875));
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			if StardFarm and World3 then
				pcall(function()
					if (game:GetService("Workspace")).Enemies:FindFirstChild("Cocoa Warrior") or (game:GetService("Workspace")).Enemies:FindFirstChild("Chocolate Bar Battler") or (game:GetService("Workspace")).Enemies:FindFirstChild("Sweet Thief") or (game:GetService("Workspace")).Enemies:FindFirstChild("Candy Rebel") then
						for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
							if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										(game:GetService("RunService")).Heartbeat:wait();
										AutoHaki();
										EquipWeapon(_G.Settings.Main["Selected Weapon"]);
										v.HumanoidRootPart.CanCollide = false;
										v.Humanoid.WalkSpeed = 0;
										v.Head.CanCollide = false;
										PosMon = v.HumanoidRootPart.CFrame;
										MonFarm = v.Name;
										topos(v.HumanoidRootPart.CFrame * Pos);
										Attack();
									until not StardFarm or (not v.Parent) or v.Humanoid.Health <= 0;
								end;
							end;
						end;
					else
						topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875));
					end;
				end);
			end;
		end;
	end);
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Train"] then
					if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
						StardFarm = true;
					end;
				end;
			end;
		end);
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Race["Auto Train"] then
					(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Y", false, game);
					wait(0.1);
					(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Y", false, game);
				end;
			end);
		end;
	end);
	Tabs.RaceV4Tab:Toggle({
		Title = "Disabled Inf Stairs",
		Value = false,
		Callback = function(value)
			game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = value
		end
	})
	Tabs.RaceV4Tab:Button({
		Title = "Teleport To Race Door",
		Callback = function()
			local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			local race = game:GetService("Players").LocalPlayer.Data.Race.Value
			local function tp(cf)
				hrp.CFrame = cf
				wait(0.1)
				hrp.CFrame = cf
				wait(0.1)
				hrp.CFrame = cf
				wait(0.1)
				hrp.CFrame = cf
			end
			tp(CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875))
			wait(0.5)
			if race == "Human" then
				topos(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
			elseif race == "Skypiea" then
				topos(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
			elseif race == "Fishman" then
				topos(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
			elseif race == "Cyborg" then
				topos(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
			elseif race == "Ghoul" then
				topos(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
			elseif race == "Mink" then
				topos(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
			end
			wait(2)
			StopTween(false)
		end
	})
	Tabs.RaceV4Tab:Section({ Title = "Auto Complete Trials" })
	Tabs.RaceV4Tab:Button({
		Title = "Buy Ancient One Quest",
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
		end
	})
	Tabs.RaceV4Tab:Toggle({
		Title = "Auto Kill Player After Trial",
		Value = _G.Settings.Race["Auto Kill Player After Trial"],
		Callback = function(value)
			_G.Settings.Race["Auto Kill Player After Trial"] = value
			StopTween(_G.Settings.Race["Auto Kill Player After Trial"])
		end
	})
	Tabs.RaceV4Tab:Toggle({
		Title = "Auto Trial RaceV4",
		Value = _G.Settings.Race["Auto Trial"],
		Callback = function(value)
			_G.Settings.Race["Auto Trial"] = value
			StopTween(_G.Settings.Race["Auto Trial"])
		end
	})
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Race["Auto Trial"] then
					if (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Human" then
						for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat
										wait(0.1);
										v.Humanoid.Health = 0;
										v.HumanoidRootPart.CanCollide = false;
									until not _G.Settings.Race["Auto Trial"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Skypiea" then
						for i, v in pairs((game:GetService("Workspace")).Map.SkyTrial.Model:GetDescendants()) do
							if v.Name == "snowisland_Cylinder.081" then
								topos(v.CFrame * CFrame.new(0, 0, 0));
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Fishman" then
						for i, v in pairs((game:GetService("Workspace")).SeaBeasts.SeaBeast1:GetDescendants()) do
							if v.Name == "HumanoidRootPart" then
								repeat
									wait();
									topos(v.CFrame * CFrame.new(0, 200, 0));
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Melee" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
									wait(0.2);
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Blox Fruit" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "C", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "C", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "V", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "V", false, game);
									wait(0.2);
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Sword" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
									for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
										if v:IsA("Tool") then
											if v.ToolTip == "Gun" then
												game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
											end;
										end;
									end;
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "Z", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "Z", false, game);
									wait(0.2);
									(game:GetService("VirtualInputManager")):SendKeyEvent(true, "X", false, game);
									(game:GetService("VirtualInputManager")):SendKeyEvent(false, "X", false, game);
									wait(0.2);
								until not _G.Settings.Race["Auto Trial"] or (not v.Parent) or v.Humanoid.Health <= 0 or (not v:FindFirstChild("HumanoidRootPart"));
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Cyborg" then
						topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Ghoul" then
						for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								pcall(function()
									repeat
										wait(0.1);
										v.Humanoid.Health = 0;
										v.HumanoidRootPart.CanCollide = false;
									until not _G.Settings.Race["Auto Trial"] or (not v.Parent) or v.Humanoid.Health <= 0;
								end);
							end;
						end;
					elseif (game:GetService("Players")).LocalPlayer.Data.Race.Value == "Mink" then
						for i, v in pairs((game:GetService("Workspace")):GetDescendants()) do
							if v.Name == "StartPoint" then
								topos(v.CFrame * CFrame.new(0, 10, 0));
							end;
						end;
					end;
				end;
			end;
		end);
	end);
end;
spawn(function()
	while wait(0.2) do
		if _G.Settings.Race["Auto Kill Player After Trial"] then
			if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Timer.Visible == true then
				for i, v in pairs((game:GetService("Players")):GetPlayers()) do
					if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
						if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
							if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
								repeat
									(game:GetService("RunService")).Heartbeat:Wait();
									EquipWeapon(_G.Settings.Main["Selected Weapon"]);
									AutoHaki();
									topos(v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 20));
									Attack();
								until not _G.Settings.Race["Auto Kill Player After Trial"] or (not v.Character) or v.Character.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
print("1")
if World2 or World3 then
	Tabs.RaidTab:Section({ Title = "Raid" })
	local TimeRaid = Tabs.RaidTab:Paragraph({
		Title = "Wait For Raid",
		Desc = ""
	})
	local Island = Tabs.RaidTab:Paragraph({
		Title = "Start Raid",
		Desc = ""
	})
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
					TimeRaid:SetDesc(game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Text)
				else
					TimeRaid:SetDesc("Wait For Raid")
				end
			end
		end)
	end)
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland5") then
					Island:SetDesc("🏝️ Island 5")
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland4") then
					Island:SetDesc("🏝️ Island 4")
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland3") then
					Island:SetDesc("🏝️ Island 3")
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland2") then
					Island:SetDesc("🏝️ Island 2")
				elseif game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland1") then
					Island:SetDesc("🏝️ Island 1")
				else
					Island:SetDesc("Start Raid")
				end
			end
		end)
	end)
	print("0")
	function ChechRaidMapIsland(island)
		return game.Workspace.Map.RaidMap:FindFirstChild(island);
	end;
	function NextRaidIsland()
		local RaidPos = CFrame.new(0, 35, 0);
		if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
			if (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 5") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 5")).CFrame * RaidPos);
			elseif (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 4") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 4")).CFrame * RaidPos);
			elseif (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 3") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 3")).CFrame * RaidPos);
			elseif (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 2") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 2")).CFrame * RaidPos);
			elseif (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 1") then
				topos(((game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 1")).CFrame * RaidPos);
			end;
		end;
	end;
	function CheckMonRaids()
		for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
			if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
				return true;
			else
				return false;
			end;
		end;
	end;
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Raid["Auto Raid"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == true then
						if CheckMonRaids() then
							for i, v in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
										pcall(function()
											repeat
												wait();
												Attack();
												EquipWeapon(_G.Settings.Main["Selected Weapon"]);
												topos(v.HumanoidRootPart.CFrame * Pos);
												v.HumanoidRootPart.CanCollide = false;
												v.Humanoid.WalkSpeed = 0;
												v.Head.CanCollide = false;
												v.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											until not _G.Settings.Raid["Auto Raid"] or (not v.Parent) or v.Humanoid.Health <= 0;
										end);
									end;
								end;
							end;
						else
							NextRaidIsland();
						end;
					end;
				end;
			end;
		end);
	end);
	Raidslist = {};
	RaidsModule = require(game.ReplicatedStorage.Raids);
	for i, v in pairs(RaidsModule.raids) do
		table.insert(Raidslist, v);
	end;
	for i, v in pairs(RaidsModule.advancedRaids) do
		table.insert(Raidslist, v);
	end;
	Tabs.RaidTab:Dropdown({
		Title = "Choose Chip",
		Values = Raidslist,
		Value = _G.Settings.Raid["Selected Chip"],
		Callback = function(value)
			_G.Settings.Raid["Selected Chip"] = value
		end
	})
	spawn(function()
		pcall(function()
			while wait(0.2) do
				if _G.Settings.Raid["Auto Raid"] then
					if not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Special Microchip") or (not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Special Microchip")) then
						if not (game:GetService("Workspace"))._WorldOrigin.Locations:FindFirstChild("Island 1") then
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.Settings.Raid["Selected Chip"]);
						end;
					end;
				end;
			end;
		end);
	end);
	Tabs.RaidTab:Toggle({
		Title = "Auto Raid ( Fully )",
		Value = _G.Settings.Raid["Auto Raid"],
		Desc = "Start, Buy Chip, Kill Mob, Next Island",
		Callback = function(value)
			_G.Settings.Raid["Auto Raid"] = value
			StopTween(_G.Settings.Raid["Auto Raid"])
		end
	})
	Tabs.RaidTab:Toggle({
		Title = "Auto Awaken",
		Value = _G.Settings.Raid["Auto Awaken"],
		Desc = "Auto Awaken When Done Raid",
		Callback = function(value)
			_G.Settings.Raid["Auto Awaken"] = value
		end
	})
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Raid["Auto Awaken"] then
				pcall(function()
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("Awakener", "Awaken");
				end);
			end;
		end;
	end);
	Tabs.RaidTab:Slider({
		Title = "Price Devil Fruit",
		Value = {
			Min = 0,
			Max = 10000000,
			Default = _G.Settings.Raid["Price Devil Fruit"],
		},
		Callback = function(value)
			_G.Settings.Raid["Price Devil Fruit"] = value
		end
	})
	Tabs.RaidTab:Toggle({
		Title = "Auto Unstore Fruit",
		Value = _G.Settings.Raid["Unstore Devil Fruit"],
		Desc = "Unstore Devil Fruit",
		Callback = function(value)
			_G.Settings.Raid["Unstore Devil Fruit"] = value
		end
	})
	function GetFruitsInfo()
		for i, v in pairs((game:GetService("Players")).LocalPlayer.Backpack:GetChildren()) do
			if string.find(v.Name, "Fruit") then
				return true;
			end;
		end;
		for i, v in pairs((game:GetService("Players")).LocalPlayer.Character:GetChildren()) do
			if string.find(v.Name, "Fruit") then
				return true;
			end;
		end;
		return false;
	end;
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Raid["Unstore Devil Fruit"] then
					fruit = (game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("getInventoryFruits");
					for i, v in pairs(fruit) do
						if v.Price < _G.Settings.Raid["Price Devil Fruit"] then
							if not GetFruitsInfo() then
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LoadFruit", v.Name);
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.Settings.Raid["Auto Raid"] then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
						if not game.Workspace.Map.RaidMap:FindFirstChild("RaidIsland1") and (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Special Microchip") or (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Special Microchip") then
							if World2 then
								fireclickdetector((game:GetService("Workspace")).Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
							elseif World3 then
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5083.26025390625, 314.6056823730469, -3175.673095703125));
								fireclickdetector((game:GetService("Workspace")).Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
							end;
						end;
					end;
				end;
			end);
		end;
	end);
	Tabs.RaidTab:Button({
		Title = "Teleport to Lab",
		Callback = function()
			if World2 then
				topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
			elseif World3 then
				topos(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 0.0000000448217499, -0.378151238, 0.00000000455503146, 1, 0.000000107377559, 0.378151238, 0.000000097681621, -0.925743818))
			end
		end
	})
	if World2 then
		Tabs.RaidTab:Section({ Title = "Raid Law" })
		Tabs.RaidTab:Toggle({
			Title = "Auto Raid Law",
			Value = _G.Settings.Raid["Law Raid"],
			Desc = "Law Raid",
			Callback = function(value)
				_G.Settings.Raid["Law Raid"] = value
				StopTween(_G.Settings.Raid["Law Raid"])
			end
		})
		spawn(function()
			pcall(function()
				while wait(0.2) do
					if _G.Settings.Raid["Law Raid"] then
						if not (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Microchip") and (not (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Microchip")) and (not (game:GetService("Workspace")).Enemies:FindFirstChild("Order")) and (not (game:GetService("ReplicatedStorage")):FindFirstChild("Order")) then
							wait(0.3);
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "1");
							(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2");
						end;
					end;
				end;
			end);
		end);
		spawn(function()
			pcall(function()
				while wait(0.2) do
					if _G.Settings.Raid["Law Raid"] then
						if not (game:GetService("Workspace")).Enemies:FindFirstChild("Order") and (not (game:GetService("ReplicatedStorage")):FindFirstChild("Order")) then
							if (game:GetService("Players")).LocalPlayer.Character:FindFirstChild("Microchip") or (game:GetService("Players")).LocalPlayer.Backpack:FindFirstChild("Microchip") then
								fireclickdetector((game:GetService("Workspace")).Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
							end;
						end;
						if (game:GetService("ReplicatedStorage")):FindFirstChild("Order") or (game:GetService("Workspace")).Enemies:FindFirstChild("Order") then
							if (game:GetService("Workspace")).Enemies:FindFirstChild("Order") then
								for h, i in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if i.Name == "Order" then
										repeat
											(game:GetService("RunService")).Heartbeat:wait();
											Attack();
											AutoHaki();
											EquipWeapon(_G.Settings.Main["Selected Weapon"]);
											topos(i.HumanoidRootPart.CFrame * Pos);
											i.HumanoidRootPart.CanCollide = false;
											i.HumanoidRootPart.Size = Vector3.new(1, 1, 1);
											Attack();
										until not i.Parent or i.Humanoid.Health <= 0 or _G.Settings.Raid["Law Raid"] == false;
									end;
								end;
							elseif (game:GetService("ReplicatedStorage")):FindFirstChild("Order") then
								topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875));
							end;
						end;
					end;
				end;
			end);
		end);
	end;
end;

Tabs.TeleportTab:Section({ Title = "World" })
Tabs.TeleportTab:Button({
    Title = "Teleport To First Sea",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})

Tabs.TeleportTab:Button({
    Title = "Teleport To Second Sea",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

Tabs.TeleportTab:Button({
    Title = "Teleport To Third Sea",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})
Tabs.TeleportTab:Section({ Title = "Island" })
if World1 then
    Tabs.TeleportTab:Dropdown({
        Title = "Choose Island",
        Values = {
            "WindMill",
            "Marine",
            "Middle Town",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Snow Island",
            "MarineFord",
            "Colosseum",
            "Sky Island 1",
            "Sky Island 2",
            "Sky Island 3",
            "Prison",
            "Magma Village",
            "Under Water Island",
            "Fountain City",
            "Shank Room",
            "Mob Island"
        },
        AllowNone = true,
        Callback = function(value)
            _G.SelectIsland = value
        end
    })
end
if World2 then
    Tabs.TeleportTab:Dropdown({
        Title = "Choose Island",
        Values = {
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
        },
        AllowNone = true,
        Callback = function(value)
            _G.SelectIsland = value
        end
    })
end
if World3 then
    Tabs.TeleportTab:Dropdown({
        Title = "Choose Island",
        Values = {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky",
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Cocoa Island",
            "Candy Island",
            "Tiki Outpost",
            "Dragon Dojo"
        },
        AllowNone = true,
        Callback = function(value)
            _G.SelectIsland = value
        end
    })
end
Tabs.TeleportTab:Toggle({
    Title = "Teleport",
    Value = false,
    Desc = "Tween To Island",
    Callback = function(value)
        _G.TeleportIsland = value
        if _G.TeleportIsland == true then
            repeat
                wait()
                if _G.SelectIsland == "WindMill" then
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    topos(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    topos(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    topos(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    topos(CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5083.26025390625, 314.6056823730469, -3175.673095703125))
                elseif _G.SelectIsland == "MiniSky" then
                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5291.24951, 1005.4433, 393.762421, 0.994222522, 0.00000000945717726, -0.10733854, -0.00000000708227299, 1, 0.0000000225065655, 0.10733854, -0.0000000216163336, 0.994222522))
                elseif _G.SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Cocoa Island" then
                    topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif _G.SelectIsland == "Candy Island" then
                    topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    topos(CFrame.new(-16218.6826, 9.08636189, 445.618408, -0.0610186495, 0.00000000110512588, -0.99813664, -0.0000000183458475, 1, 0.00000000222871765, 0.99813664, 0.0000000184476558, -0.0610186495))
                elseif _G.SelectIsland == "Dragon Dojo" then
                    topos(CFrame.new(5743.31934, 1206.90991, 936.011047, 0.475779682, -0.00000000366404773, -0.879564524, 0.0000000254969592, 1, 0.00000000962622693, 0.879564524, -0.000000027006184, 0.475779682))
                end
            until not _G.TeleportIsland
        end
        StopTween(_G.TeleportIsland)
    end
})
Tabs.TeleportTab:Section({ Title = "Npc" })
if World1 then
    Tabs.TeleportTab:Dropdown({
        Title = "Choose NPC",
        Values = {
            "Random Devil Fruit",
            "Blox Fruits Dealer",
            "Remove Devil Fruit",
            "Ability Teacher",
            "Dark Step",
            "Electro",
            "Fishman Karate"
        },
        AllowNone = true,
        Callback = function(value)
            _G.SelectNPC = value
        end
    })
end
if World2 then
    Tabs.TeleportTab:Dropdown({
        Title = "Choose NPC",
        Values = {
            "Dargon Berath",
            "Mtsterious Man",
            "Mysterious Scientist",
            "Awakening Expert",
            "Nerd",
            "Bar Manager",
            "Blox Fruits Dealer",
            "Trevor",
            "Enhancement Editor",
            "Pirate Recruiter",
            "Marines Recruiter",
            "Chemist",
            "Cyborg",
            "Ghoul Mark",
            "Guashiem",
            "El Admin",
            "El Rodolfo",
            "Arowe"
        },
        AllowNone = true,
        Callback = function(value)
            _G.SelectNPC = value
        end
    })
end
if World3 then
    Tabs.TeleportTab:Dropdown({
        Title = "Choose NPC",
        Values = {
            "Blox Fruits Dealer",
            "Remove Devil Fruit",
            "Horned Man",
            "Hungey Man",
            "Previous Hero",
            "Butler",
            "Lunoven",
            "Trevor",
            "Elite Hunter",
            "Player Hunter",
            "Uzoth"
        },
        AllowNone = true,
        Callback = function(value)
            _G.SelectNPC = value
        end
    })
end
Tabs.TeleportTab:Toggle({
    Title = "Teleport",
    Value = _G.TeleportNPC,
    Desc = "Tween To Npc",
    Callback = function(value)
        _G.TeleportNPC = value
        if _G.TeleportNPC == true then
            repeat
                wait()
                if _G.SelectNPC == "Dargon Berath" then
                    topos(CFrame.new(703.372986, 186.985519, 654.522034, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Mtsterious Man" then
                    topos(CFrame.new(-2574.43335, 1627.92371, -3739.35767, 0.378697902, -0.00000000906400288, 0.92552036, -0.00000000895582009, 1, 0.0000000134578926, -0.92552036, -0.0000000133852689, 0.378697902))
                elseif _G.SelectNPC == "Mysterious Scientist" then
                    topos(CFrame.new(-6437.87793, 250.645355, -4498.92773, 0.502376854, -0.0000000101223634, -0.864648759, 0.0000000234106086, 1, 0.00000000189508653, 0.864648759, -0.0000000211940012, 0.502376854))
                elseif _G.SelectNPC == "Awakening Expert" then
                    topos(CFrame.new(-408.098846, 16.0459061, 247.432846, 0.028394036, 0.000000000617599138, 0.999596894, -0.00000000557905944, 1, -0.000000000459372484, -0.999596894, -0.00000000556376767, 0.028394036))
                elseif _G.SelectNPC == "Nerd" then
                    topos(CFrame.new(-401.783722, 73.0859299, 262.306702, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Bar Manager" then
                    topos(CFrame.new(-385.84726, 73.0458984, 316.088806, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-450.725464, 73.0458984, 355.636902, -0.780352175, -0.000000027266168, 0.625340283, 0.00000000978516468, 1, 0.0000000558128797, -0.625340283, 0.0000000496727601, -0.780352175))
                elseif _G.SelectNPC == "Trevor" then
                    topos(CFrame.new(-341.498322, 331.886444, 643.024963, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Plokster" then
                    topos(CFrame.new(-1885.16016, 88.3838196, -1912.28723, -0.513468027, 0, 0.858108759, 0, 1, 0, -0.858108759, 0, -0.513468027))
                elseif _G.SelectNPC == "Enhancement Editor" then
                    topos(CFrame.new(-346.820221, 72.9856339, 1194.36218, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Pirate Recruiter" then
                    topos(CFrame.new(-428.072998, 72.9495239, 1445.32422, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Marines Recruiter" then
                    topos(CFrame.new(-1349.77295, 72.9853363, -1045.12964, 0.866493046, 0, -0.499189168, 0, 1, 0, 0.499189168, 0, 0.866493046))
                elseif _G.SelectNPC == "Chemist" then
                    topos(CFrame.new(-2777.45288, 72.9919434, -3572.25732, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Ghoul Mark" then
                    topos(CFrame.new(635.172546, 125.976357, 33219.832, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Cyborg" then
                    topos(CFrame.new(629.146851, 312.307373, -531.624146, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Guashiem" then
                    topos(CFrame.new(937.953003, 181.083359, 33277.9297, 1, -0.0000000860126406, 0.0000000000000000381773896, 0.0000000860126406, 1, -0.000000000000000189969598, -0.000000000000000038177373, 0.000000000000000189969598, 1))
                elseif _G.SelectNPC == "El Admin" then
                    topos(CFrame.new(1322.80835, 126.345039, 33135.8789, 0.988783717, -0.0000000869797603, -0.149354503, 0.0000000862223786, 1, -0.0000000115461916, 0.149354503, -0.00000000146101409, 0.988783717))
                elseif _G.SelectNPC == "El Rodolfo" then
                    topos(CFrame.new(941.228699, 40.4686775, 32778.9922, -0.818029106, -0.0000000119524382, 0.575176775, -0.0000000128741648, 1, 0.00000000247053866, -0.575176775, -0.00000000538394795, -0.818029106))
                elseif _G.SelectNPC == "Arowe" then
                    topos(CFrame.new(-1994.51038, 125.519142, -72.2622986, -0.16715166, -0.0000000655417338, -0.985931218, -0.0000000713315558, 1, -0.0000000543836585, 0.985931218, 0.0000000612376851, -0.16715166))
                elseif _G.SelectNPC == "Random Devil Fruit" then
                    topos(CFrame.new(-1436.19727, 61.8777695, 4.75247526, -0.557794094, 0.0000000274216543, 0.829979479, 0.0000000583273234, 1, 0.00000000616037932, -0.829979479, 0.0000000518467118, -0.557794094))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-923.255066, 7.67800522, 1608.61011, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Remove Devil Fruit" then
                    topos(CFrame.new(5664.80469, 64.677681, 867.85907, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Ability Teacher" then
                    topos(CFrame.new(-1057.67822, 9.65220833, 1799.49146, -0.865874112, -0.0000000926330159, 0.500262439, -0.0000000733759435, 1, 0.00000005816689, -0.500262439, 0.0000000136579752, -0.865874112))
                elseif _G.SelectNPC == "Dark Step" then
                    topos(CFrame.new(-987.873047, 13.7778397, 3989.4978, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Electro" then
                    topos(CFrame.new(-5389.49561, 13.283, -2149.80151, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Fishman Karate" then
                    topos(CFrame.new(61581.8047, 18.8965912, 987.832703, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                elseif _G.SelectNPC == "Random Devil Fruit" then
                    topos(CFrame.new(-12491, 337, -7449))
                elseif _G.SelectNPC == "Blox Fruits Dealer" then
                    topos(CFrame.new(-12511, 337, -7448))
                elseif _G.SelectNPC == "Remove Devil Fruit" then
                    topos(CFrame.new(-5571, 1089, -2661))
                elseif _G.SelectNPC == "Horned Man" then
                    topos(CFrame.new(-11890, 931, -8760))
                elseif _G.SelectNPC == "Hungey Man" then
                    topos(CFrame.new(-10919, 624, -10268))
                elseif _G.SelectNPC == "Previous Hero" then
                    topos(CFrame.new(-10368, 332, -10128))
                elseif _G.SelectNPC == "Butler" then
                    topos(CFrame.new(-5125, 316, -3130))
                elseif _G.SelectNPC == "Lunoven" then
                    topos(CFrame.new(-5117, 316, -3093))
                elseif _G.SelectNPC == "Elite Hunter" then
                    topos(CFrame.new(-5420, 314, -2828))
                elseif _G.SelectNPC == "Player Hunter" then
                    topos(CFrame.new(-5559, 314, -2840))
                elseif _G.SelectNPC == "Uzoth" then
                    topos(CFrame.new(-9785, 852, 6667))
                end
            until not _G.TeleportNPC
        end
        StopTween(_G.TeleportNPC)
    end
})
if World2 then
	Tabs.ShopTab:Section({ Title = "Legendary Sword" })
	Tabs.ShopTab:Toggle({
    Title = "Auto Buy Legendary Sword",
    Value = _G.Settings.Shop["Auto Buy Legendary Sword"],
    Desc = "Buy Legendary Sword When Spawn",
    Callback = function(value)
        _G.Settings.Shop["Auto Buy Legendary Sword"] = value
    end
    })
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Shop["Auto Buy Legendary Sword"] then
				pcall(function()
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1");
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2");
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3");
				end);
			end;
		end;
	end);
end;
if World2 or World3 then
	Tabs.ShopTab:Section({ Title = "Haki Color" })
	local MOA_Status = Tabs.ShopTab:Paragraph({
		Title = "Master of Aura Status",
		Desc = "Master of Auras Not Spawn!"
	})
	spawn(function()
		while wait(0.2) do
			pcall(function()
				local response = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1")
				if response then
					MOA_Status:SetDesc("Master of Auras Spawn!")
				else
					MOA_Status:SetDesc("Master of Auras Not Spawn!")
				end
			end)
		end
	end)
	Tabs.ShopTab:Toggle({
		Title = "Auto Buy Haki Color",
		Value = _G.Settings.Shop["Auto Buy Haki Color"],
		Desc = "Auto Buy Haki Color",
		Callback = function(value)
			_G.Settings.Shop["Auto Buy Haki Color"] = value
		end
	})
	spawn(function()
		while wait(0.2) do
			if _G.Settings.Shop["Auto Buy Haki Color"] then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("ColorsDealer", "2");
			end;
		end;
	end);
end;
Tabs.ShopTab:Section({ Title = "Abilities" })
Tabs.ShopTab:Button({
    Title = "Buy Geppo [ $10,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Buso Haki [ $25,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Soru [ $25,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Observation Haki [ $750,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
    end
})

Tabs.ShopTab:Toggle({
    Title = "Auto Buy Abilities",
    Value = false,
    Desc = "Auto Buy Haki",
    Callback = function(t)
        Abilities = t
        while Abilities do
            wait(0.2)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
        end
    end
})
Tabs.ShopTab:Section({ Title = "Boats" })
local BoatList = {
    "Pirate Sloop",
    "Enforcer",
    "Rocket Boost",
    "Dinghy",
    "Pirate Basic",
    "Pirate Brigade"
}

Tabs.ShopTab:Dropdown({
    Title = "Select Boats",
    Values = BoatList,
    AllowNone = true,
    Callback = function(value)
        SelectBoat = value
        if value == "Pirate Sloop" then
            _G.SelectBoat = "PirateSloop"
        elseif value == "Enforcer" then
            _G.SelectBoat = "Enforcer"
        elseif value == "Rocket Boost" then
            _G.SelectBoat = "RocketBoost"
        elseif value == "Dinghy" then
            _G.SelectBoat = "Dinghy"
        elseif value == "Pirate Basic" then
            _G.SelectBoat = "PirateBasic"
        elseif value == "Pirate Brigade" then
            _G.SelectBoat = "PirateBrigade"
        end
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Boat",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectBoat)
    end
})
Tabs.ShopTab:Section({ Title = "Fighting Style" })
Tabs.ShopTab:Button({
    Title = "Buy Black Leg [ $150,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Electro [ $550,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Water Kung Fu [ $750,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Dragon Claw [ f1,500 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Superhuman [ $3,000,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Death Step [ f5,000 $5,000,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Sharkman Karate [ f5,000 $2,500,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Electric Claw [ f5,000 $3,000,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Dragon Talon [ f5,000 $3,000,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy God Human [ f5,000 $5,000,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    end
})

Tabs.ShopTab:Button({
    Title = "Buy Sanguine Art [ f5,000 $5,000,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
    end
})
Tabs.ShopTab:Section({ Title = "Sword" })
Tabs.ShopTab:Button({
    Title = "Cutlass [ $1,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
    end
})

Tabs.ShopTab:Button({
    Title = "Katana [ $1,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
    end
})

Tabs.ShopTab:Button({
    Title = "Iron Mace [ $25,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
    end
})

Tabs.ShopTab:Button({
    Title = "Dual Katana [ $12,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
    end
})

Tabs.ShopTab:Button({
    Title = "Triple Katana [ $60,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
    end
})

Tabs.ShopTab:Button({
    Title = "Pipe [ $100,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
    end
})

Tabs.ShopTab:Button({
    Title = "Dual-Headed Blade [ $400,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
    end
})

Tabs.ShopTab:Button({
    Title = "Bisento [ $1,200,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
    end
})

Tabs.ShopTab:Button({
    Title = "Soul Cane [ $750,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
    end
})

Tabs.ShopTab:Button({
    Title = "Pole v.2 [ f5,000 ]",
    Callback = function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
    end
})
Tabs.ShopTab:Section({ Title = "Gun" })
Tabs.ShopTab:Button({
    Title = "Slingshot [ $5,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
    end
})

Tabs.ShopTab:Button({
    Title = "Musket [ $8,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
    end
})

Tabs.ShopTab:Button({
    Title = "Flintlock [ $10,500 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
    end
})

Tabs.ShopTab:Button({
    Title = "Refined Slingshot [ $30,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
    end
})

Tabs.ShopTab:Button({
    Title = "Refined Flintlock [ $65,000 ]",
    Callback = function()
        local args = {
            [1] = "BuyItem",
            [2] = "Refined Flintlock"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Tabs.ShopTab:Button({
    Title = "Cannon [ $100,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
    end
})

Tabs.ShopTab:Button({
    Title = "Kabucha [ f1,500]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
    end
})

Tabs.ShopTab:Button({
    Title = "Bizarre Rifle [ 250 Ectoplasm ]",
    Callback = function()
        local A_1 = "Ectoplasm"
        local A_2 = "Buy"
        local A_3 = 1
        local Event = game:GetService("ReplicatedStorage").Remotes.CommF_
        Event:InvokeServer(A_1, A_2, A_3)
    end
})
Tabs.ShopTab:Section({ Title = "Stats" })
Tabs.ShopTab:Button({
    Title = "Reset Stats [ Use f2,500 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end
})

Tabs.ShopTab:Button({
    Title = "Random Race [ Use f3,000 ]",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})
Tabs.ShopTab:Section({ Title = "Accessories" })
Tabs.ShopTab:Button({
    Title = "Black Cape [ $50,000 ]",
    Callback = function()
        local args = {
            [1] = "BuyItem",
            [2] = "Black Cape"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Tabs.ShopTab:Button({
    Title = "Swordsman Hat [ $150,000 ]",
    Callback = function()
        local args = {
            [1] = "BuyItem",
            [2] = "Swordsman Hat"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Tabs.ShopTab:Button({
    Title = "Tomoe Ring [ $500,000 ]",
    Callback = function()
        local args = {
            [1] = "BuyItem",
            [2] = "Tomoe Ring"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})
Tabs.FruitTab:Section({ Title = "Fruits" })
Tabs.FruitTab:Toggle({
    Title = "Auto Random Fruit",
    Value = _G.Settings.Fruit["Auto Buy Random Fruit"],
    Desc = "Auto Buy Random Fruit",
    Callback = function(value)
        _G.Settings.Fruit["Auto Buy Random Fruit"] = value
    end
})

spawn(function()
    pcall(function()
        while wait(0.2) do
            if _G.Settings.Fruit["Auto Buy Random Fruit"] then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
            end
        end
    end)
end)

Tabs.FruitTab:Button({
    Title = "Random Fruit",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
    end
})
local RarityFruits = {
    Common = {
        "Rocket Fruit", "Spin Fruit", "Chop Fruit", "Spring Fruit", "Bomb Fruit", "Smoke Fruit", "Spike Fruit"
    },
    Uncommon = {
        "Flame Fruit", "Falcon Fruit", "Ice Fruit", "Sand Fruit", "Diamond Fruit", "Dark Fruit"
    },
    Rare = {
        "Light Fruit", "Rubber Fruit", "Barrier Fruit", "Ghost Fruit", "Magma Fruit"
    },
    Legendary = {
        "Quake Fruit", "Budha Fruit", "Love Fruit", "Spider Fruit", "Sound Fruit", "Phoenix Fruit", "Portal Fruit", "Rumble Fruit", "Pain Fruit", "Blizzard Fruit"
    },
    Mythical = {
        "Gravity Fruit", "Mammoth Fruit", "T-Rex Fruit", "Dough Fruit", "Shadow Fruit", "Venom Fruit", "Control Fruit", "Spirit Fruit", "Dragon Fruit", "Leopard Fruit", "Kitsune Fruit"
    }
}
local SelectRarityFruits = {
    "Common - Mythical",
    "Uncommon - Mythical",
    "Rare - Mythical",
    "Legendary - Mythical",
    "Mythical"
}
local ResultStoreFruits = {}

Tabs.FruitTab:Dropdown({
    Title = "Store Rarity Fruit",
    Values = SelectRarityFruits,
    Value = _G.Settings.Fruit["Store Rarity Fruit"],
    Callback = function(value)
        _G.Settings.Fruit["Store Rarity Fruit"] = value
    end
})

function CheckFruits()
    ResultStoreFruits = {}
    for i, v in pairs(RarityFruits) do
        if _G.Settings.Fruit["Store Rarity Fruit"] == "Common - Mythical" then
            if i == "Common" or i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        elseif _G.Settings.Fruit["Store Rarity Fruit"] == "Uncommon - Mythical" then
            if i == "Uncommon" or i == "Rare" or i == "Legendary" or i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        elseif _G.Settings.Fruit["Store Rarity Fruit"] == "Rare - Mythical" then
            if i == "Rare" or i == "Legendary" or i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        elseif _G.Settings.Fruit["Store Rarity Fruit"] == "Legendary - Mythical" then
            if i == "Legendary" or i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        elseif _G.Settings.Fruit["Store Rarity Fruit"] == "Mythical" then
            if i == "Mythical" then
                for _, fruit in ipairs(v) do
                    table.insert(ResultStoreFruits, fruit)
                end
            end
        end
    end
end

Tabs.FruitTab:Toggle({
    Title = "Auto Store Fruit",
    Value = _G.Settings.Fruit["Auto Store Fruit"],
    Desc = "Store Fruit",
    Callback = function(value)
        _G.Settings.Fruit["Auto Store Fruit"] = value
    end
})

spawn(function()
    while wait(0.2) do
        pcall(function()
            if _G.Settings.Fruit["Auto Store Fruit"] then
                for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        CheckFruits()
                        for z, Res in pairs(ResultStoreFruits) do
                            if v.Name == Res then
                                local NameFruit = v.Name
                                local FirstNameFruit = string.gsub(v.Name, " Fruit", "")
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit) then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", FirstNameFruit .. "-" .. FirstNameFruit, game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(NameFruit))
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Tabs.FruitTab:Toggle({
    Title = "Fruit Notification",
    Value = _G.Settings.Fruit["Fruit Notification"],
    Desc = "Add Notification When Fruit Spawn",
    Callback = function(value)
        _G.Settings.Fruit["Fruit Notification"] = value
    end
})

spawn(function()
    while wait(2) do
        if _G.Settings.Fruit["Fruit Notification"] then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    WindUI:Notify({
                        Title = "Fruit : " .. v.Name,
                        Duration = 3
                    })
                end
            end
        end
    end
end)
Tabs.FruitTab:Toggle({
    Title = "Teleport To Fruit",
    Value = _G.Settings.Fruit["Teleport To Fruit"],
    Desc = "Teleport To Fruit Instant",
    Callback = function(value)
        _G.Settings.Fruit["Teleport To Fruit"] = value
    end
})

spawn(function()
    while wait(0.2) do
        if _G.Settings.Fruit["Teleport To Fruit"] then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                end
            end
        end
    end
end)

Tabs.FruitTab:Toggle({
    Title = "Tween To Fruit",
    Value = _G.Settings.Fruit["Tween To Fruit"],
    Desc = "Teleport To Fruit Using Tween",
    Callback = function(value)
        _G.Settings.Fruit["Tween To Fruit"] = value
        StopTween(_G.Settings.Fruit["Tween To Fruit"])
    end
})

spawn(function()
    while wait(0.2) do
        if _G.Settings.Fruit["Tween To Fruit"] then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    topos(v.Handle.CFrame)
                end
            end
        end
    end
end)

Tabs.FruitTab:Button({
    Title = "Grab All Fruits",
    Callback = function()
        for i, v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Tool") then
                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            end
        end
    end
})
Tabs.FruitTab:Section({ Title = "Visual" })
Tabs.FruitTab:Button({
    Title = "Rain Fruit",
    Callback = function()
        for _, i in pairs((game:GetObjects("rbxassetid://14759368201"))[1]:GetChildren()) do
            i.Parent = game.Workspace.Map
            i:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
            if i.Fruit:FindFirstChild("AnimationController") then
                (i.Fruit:FindFirstChild("AnimationController"):LoadAnimation(i.Fruit:FindFirstChild("Idle"))):Play()
            end
            i.Handle.Touched:Connect(function(cR)
                if cR.Parent == game.Players.LocalPlayer.Character then
                    i.Parent = game.Players.LocalPlayer.Backpack
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(i)
                end
            end)
        end
    end
})
Tabs.MiscTab:Section({ Title = "Misc" })
Tabs.MiscTab:Button({
    Title = "Open Title Name",
    Callback = function()
        local args = { [1] = "getTitles" }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true
    end
})
Tabs.MiscTab:Section({ Title = "Teams" })
Tabs.MiscTab:Button({
    Title = "Join Pirates Team",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
})

Tabs.MiscTab:Button({
    Title = "Join Marines Team",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
    end
})
Tabs.MiscTab:Section({ Title = "Highlight" })
Tabs.MiscTab:Toggle({
    Title = "Hide Chat",
    Value = _G.Settings.Misc["Hide Chat"],
    Desc = "Invisible Chat",
    Callback = function(value)
        _G.Settings.Misc["Hide Chat"] = value
        local StarterGui = game:GetService("StarterGui")
        if _G.Settings.Misc["Hide Chat"] then
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
        else
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
        end
    end
})

Tabs.MiscTab:Toggle({
    Title = "Hide Leaderboard",
    Value = _G.Settings.Misc["Hide Leaderboard"],
    Desc = "Invisible Leaderboard",
    Callback = function(value)
        _G.Settings.Misc["Hide Leaderboard"] = value
        local StarterGui = game:GetService("StarterGui")
        if _G.Settings.Misc["Hide Leaderboard"] then
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
        else
            StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
        end
    end
})

Tabs.MiscTab:Toggle({
    Title = "Highlight Mode",
    Value = _G.Settings.Misc["Highlight Mode"],
    Desc = "Hide All Player Gui",
    Callback = function(value)
        _G.Settings.Misc["Highlight Mode"] = value
    end
})
Tabs.MiscTab:Section({ Title = "Codes" })
local x2Code = {
    "KITTGAMING",
    "ENYU_IS_PRO",
    "FUDD10",
    "BIGNEWS",
    "THEGREATACE",
    "SUB2GAMERROBOT_EXP1",
    "STRAWHATMAIME",
    "SUB2OFFICIALNOOBIE",
    "SUB2NOOBMASTER123",
    "SUB2DAIGROCK",
    "AXIORE",
    "TANTAIGAMIMG",
    "STRAWHATMAINE",
    "JCWK",
    "FUDD10_V2",
    "SUB2FER999",
    "MAGICBIS",
    "TY_FOR_WATCHING",
    "STARCODEHEO"
}

Tabs.MiscTab:Button({
    Title = "Redeem All Codes",
    Callback = function()
        local function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i, v in pairs(x2Code) do
            RedeemCode(v)
        end
    end
})

Tabs.MiscTab:Dropdown({
    Title = "Select Codes",
    Values = {
        "NOOB_REFUND",
        "SUB2GAMERROBOT_RESET1",
        "Sub2UncleKizaru"
    },
    AllowNone = true,
    Callback = function(value)
        _G.CodeSelect = value
    end
})

Tabs.MiscTab:Button({
    Title = "Redeem Code",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
    end
})
Tabs.MiscTab:Section({ Title = "Graphic" })
Tabs.MiscTab:Button({
    Title = "FPS Boost",
    Callback = function()
        local decalsyeeted = true
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        -- (settings()).Rendering.QualityLevel = "Level01" -- Hapus jika error
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                v.Enabled = false
            end
        end
    end
})
Tabs.EspTab:Section({ Title = "Esp" })
Tabs.EspTab:Toggle({
    Title = "ESP Player",
    Value = _G.Settings.Esp["ESP Player"],
    Desc = "Highlight Player",
    Callback = function(value)
        _G.Settings.Esp["ESP Player"] = value
    end
})

Tabs.EspTab:Toggle({
    Title = "ESP Chest",
    Value = _G.Settings.Esp["ESP Chest"],
    Desc = "Highlight Chest",
    Callback = function(value)
        _G.Settings.Esp["ESP Chest"] = value
    end
})

Tabs.EspTab:Toggle({
    Title = "ESP Fruit",
    Value = _G.Settings.Esp["ESP DevilFruit"],
    Desc = "Highlight Fruit",
    Callback = function(value)
        _G.Settings.Esp["ESP DevilFruit"] = value
    end
})
if World3 then
	Tabs.EspTab:Toggle({
		Title = "ESP Real Fruit",
		Value = _G.Settings.Esp["ESP RealFruit"],
		Desc = "Highlight Real Fruit",
		Callback = function(value)
			_G.Settings.Esp["ESP RealFruit"] = value
		end
	})
end
if World2 then
	Tabs.EspTab:Toggle({
		Title = "ESP Flower",
		Value = _G.Settings.Esp["ESP Flower"],
		Desc = "Highlight Flower",
		Callback = function(value)
			_G.Settings.Esp["ESP Flower"] = value
		end
	})
end
Tabs.EspTab:Toggle({
    Title = "ESP Island",
    Value = _G.Settings.Esp["ESP Island"],
    Desc = "Highlight Island",
    Callback = function(value)
        _G.Settings.Esp["ESP Island"] = value
    end
})

Tabs.EspTab:Toggle({
    Title = "ESP Npc",
    Value = _G.Settings.Esp["ESP Npc"],
    Desc = "Highlight Npc",
    Callback = function(value)
        _G.Settings.Esp["ESP Npc"] = value
    end
})
if World2 or World3 then
	Tabs.EspTab:Toggle({
		Title = "Esp Sea Beast",
		Value = _G.Settings.Esp["ESP Sea Beast"],
		Desc = "Highlight SeaBest",
		Callback = function(value)
			_G.Settings.Esp["ESP Sea Beast"] = value
		end
	})
end
Tabs.EspTab:Toggle({
    Title = "Esp Monster",
    Value = _G.Settings.Esp["ESP Monster"],
    Desc = "Highlight Mob",
    Callback = function(value)
        _G.Settings.Esp["ESP Monster"] = value
    end
})
if World2 or World3 then
	Tabs.EspTab:Toggle({
		Title = "Esp Mirage Island",
		Value = _G.Settings.Esp["ESP Mirage"],
		Desc = "Highlight Mirage Island",
		Callback = function(value)
			_G.Settings.Esp["ESP Mirage"] = value
		end
	})
end
if World3 then
	Tabs.EspTab:Toggle({
		Title = "Esp Kitsune Island",
		Value = _G.Settings.Esp["ESP Kitsune"],
		Desc = "Highlight Kitsune Island",
		Callback = function(value)
			_G.Settings.Esp["ESP Kitsune"] = value
		end
	})
	
	Tabs.EspTab:Toggle({
		Title = "Esp Frozen Dimension",
		Value = _G.Settings.Esp["ESP Frozen"],
		Desc = "Highlight Frozen Dimension",
		Callback = function(value)
			_G.Settings.Esp["ESP Frozen"] = value
		end
	})
	
	Tabs.EspTab:Toggle({
		Title = "Esp Prehistoric Island",
		Value = _G.Settings.Esp["ESP Prehistoric"],
		Desc = "Highlight Prehistoric Island",
		Callback = function(value)
			_G.Settings.Esp["ESP Prehistoric"] = value
		end
	})
	
	Tabs.EspTab:Toggle({
		Title = "Esp Advanced Fruit Dealer",
		Value = _G.Settings.Esp["ESP Fruit Dealer"],
		Desc = "Highlight Advanced Fruit Dealer",
		Callback = function(value)
			_G.Settings.Esp["ESP Fruit Dealer"] = value
		end
	})
	
	Tabs.EspTab:Toggle({
		Title = "Esp Gear",
		Value = _G.Settings.Esp["ESP Gear"],
		Desc = "Highlight Gear",
		Callback = function(value)
			_G.Settings.Esp["ESP Gear"] = value
		end
	})
end
Tabs.LocalPlayerTab:Section({ Title = "Local Player" })
Tabs.LocalPlayerTab:Toggle({
    Title = "Dodge No Cooldown",
    Value = _G.Settings.LocalPlayer["Dodge No Cooldown"],
    Desc = "Dodge No Cooldown",
    Callback = function(value)
        _G.Settings.LocalPlayer["Dodge No Cooldown"] = value
    end
})

Tabs.LocalPlayerTab:Toggle({
    Title = "Infinite Energy",
    Value = _G.Settings.LocalPlayer["Infinite Energy"],
    Desc = "Infinite Energy",
    Callback = function(value)
        _G.Settings.LocalPlayer["Infinite Energy"] = value
    end
})

Tabs.LocalPlayerTab:Toggle({
    Title = "Auto Active Race V3",
    Value = _G.Settings.LocalPlayer["Active Race V3"],
    Desc = "Auto Active Ability",
    Callback = function(value)
        _G.Settings.LocalPlayer["Active Race V3"] = value
    end
})

Tabs.LocalPlayerTab:Toggle({
    Title = "Auto Active Race V4",
    Value = _G.Settings.LocalPlayer["Active Race V4"],
    Desc = "Auto Active Awakening",
    Callback = function(value)
        _G.Settings.LocalPlayer["Active Race V4"] = value
    end
})

spawn(function()
    while wait(0.2) do
        if _G.Settings.LocalPlayer["Active Race V4"] then
            if tonumber(game:GetService("Players").LocalPlayer.Character:WaitForChild("RaceEnergy").Value) == 1 then
                if not game:GetService("Players").LocalPlayer.Character.RaceTransformed.Value then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
end)

spawn(function()
    pcall(function()
        while wait(1) do
            if _G.Settings.LocalPlayer["Active Race V3"] then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait(0.2) do
            if _G.Settings.Race and _G.Settings.Race["Look Moon Ability"] then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
            end
        end
    end)
end)

Tabs.LocalPlayerTab:Toggle({
    Title = "Infinite Ability",
    Value = _G.Settings.LocalPlayer["Infinite Ability"],
    Desc = "Infinite Ability",
    Callback = function(value)
        _G.Settings.LocalPlayer["Infinite Ability"] = value
    end
})

spawn(function()
    while wait(0.2) do
        if _G.Settings.LocalPlayer["Infinite Ability"] then
            InfAb()
        end
    end
end)

Tabs.LocalPlayerTab:Toggle({
    Title = "Infinite Geppo",
    Value = _G.Settings.LocalPlayer["Infinite Geppo"],
    Desc = "Infinite Geppo",
    Callback = function(value)
        _G.Settings.LocalPlayer["Infinite Geppo"] = value
    end
})

spawn(function()
    while wait(0.2) do
        pcall(function()
            if _G.Settings.LocalPlayer["Infinite Geppo"] then
                for i, v in next, getgc() do
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Geppo") then
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
                            for i2, v2 in next, getupvalues(v) do
                                if tostring(i2) == "9" then
                                    repeat
                                        wait(0.1)
                                        setupvalue(v, i2, 0)
                                    until not _G.Settings.LocalPlayer["Infinite Geppo"] or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Tabs.LocalPlayerTab:Toggle({
    Title = "Infinite Soru",
    Value = _G.Settings.LocalPlayer["Infinite Soru"],
    Desc = "Infinite Soru",
    Callback = function(value)
        _G.Settings.LocalPlayer["Infinite Soru"] = value
    end
})

spawn(function()
    while wait(0.2) do
        pcall(function()
            if _G.Settings.LocalPlayer["Infinite Soru"] and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                for i, v in next, getgc() do
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Soru") then
                        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
                            for i2, v2 in next, getupvalues(v) do
                                if typeof(v2) == "table" then
                                    repeat
                                        wait(0.1)
                                        v2.LastUse = 0
                                    until not _G.Settings.LocalPlayer["Infinite Soru"] or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

Tabs.LocalPlayerTab:Toggle({
    Title = "Walk on Water",
    Value = _G.Settings.LocalPlayer["Walk On Water"],
    Desc = "Walk on Water",
    Callback = function(value)
        _G.Settings.LocalPlayer["Walk On Water"] = value
    end
})

spawn(function()
    while task.wait(0.2) do
        pcall(function()
            if _G.WalkWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)

Tabs.LocalPlayerTab:Toggle({
    Title = "NoClip",
    Value = _G.Settings.LocalPlayer["No Clip"],
    Desc = "NoClip",
    Callback = function(value)
        _G.Settings.LocalPlayer["No Clip"] = value
    end
})

spawn(function()
    pcall(function()
        while wait(0.2) do
            if _G.Settings.LocalPlayer["No Clip"] then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") or v:IsA("Part") then
                        v.CanCollide = false
                    end
                end
            end
        end
    end)
end)
Tabs.ServerTab:Section({ Title = "Server" })
Tabs.ServerTab:Button({
    Title = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})

Tabs.ServerTab:Button({
    Title = "Server Hop",
    Callback = function()
        local module = loadstring(game:HttpGet("https://roblox.farrghii.com/Hop.lua"))()
        module:Teleport(game.PlaceId, "Singapore")
    end
})

Tabs.ServerTab:Button({
    Title = "Hop Lower Player",
    Callback = function()
        local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/raw-scriptpastebin/FE/main/Server_Hop_Settings"))()
        module:Teleport(game.PlaceId)
    end
})

spawn(function()
    while wait(0.2) do
        pcall(function()
            JobAiDee:SetDesc("Server Job ID : " .. game.JobId)
        end)
    end
end)
JobAiDee = Tabs.ServerTab:Paragraph({
    Title = "Server Job ID : ",
    Desc = ""
})

Tabs.ServerTab:Button({
    Title = "Copy Server Job ID",
    Callback = function()
        setclipboard(tostring(game.JobId))
    end
})

Tabs.ServerTab:Input({
    Title = "Enter Server Job ID",
    Numeric = false,
    Callback = function(value)
        local parseResult = string.gsub(value, "`", "")
        _G.JobId = parseResult
    end
})

Tabs.ServerTab:Button({
    Title = "Join Server",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _G.JobId, game.Players.LocalPlayer)
    end
})
Tabs.ServerTab:Section({ Title = "Status" })
FM = Tabs.ServerTab:Paragraph({
    Title = "Moon",
    Desc = ""
})

if World2 or World3 then
    if World3 then
        KitsuneStatus = Tabs.ServerTab:Paragraph({
            Title = "Kitsune",
            Desc = ""
        })
        FrozenStatus = Tabs.ServerTab:Paragraph({
            Title = "Frozen",
            Desc = ""
        })
    end
    MirageStatus = Tabs.ServerTab:Paragraph({
        Title = "Mirage",
        Desc = ""
    })
    HakiDealer = Tabs.ServerTab:Paragraph({
        Title = "Haki Dealer",
        Desc = ""
    })
end

FindFruit = Tabs.ServerTab:Paragraph({
    Title = "Find Fruit",
    Desc = ""
})

-- Full Moon Status
task.spawn(function()
    while task.wait() do
        pcall(function()
            local moonId = game:GetService("Lighting").Sky.MoonTextureId
            if moonId == "http://www.roblox.com/asset/?id=9709149431" then
                FM:SetDesc("🌕 Full Moon 100%")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149052" then
                FM:SetDesc("🌖 Full Moon 75%")
            elseif moonId == "http://www.roblox.com/asset/?id=9709143733" then
                FM:SetDesc("🌗 Full Moon 50%")
            elseif moonId == "http://www.roblox.com/asset/?id=9709150401" then
                FM:SetDesc("🌘 Full Moon 25%")
            elseif moonId == "http://www.roblox.com/asset/?id=9709149680" then
                FM:SetDesc("🌘 Full Moon 15%")
            else
                FM:SetDesc("🌑 Full Moon 0%")
            end
        end)
    end
end)

if World2 or World3 then
    if World3 then
        spawn(function()
            pcall(function()
                while wait(0.2) do
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                        KitsuneStatus:SetDesc("⛩️ Kitsune Island is Spawning")
                    else
                        KitsuneStatus:SetDesc("⛩️ Kitsune Island Not Spawn")
                    end
                end
            end)
        end)
        spawn(function()
            pcall(function()
                while wait(0.2) do
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
                        FrozenStatus:SetDesc("❄️ Frozen Dimension Spawning")
                    else
                        FrozenStatus:SetDesc("❄️ Frozen Dimension Not Spawn")
                    end
                end
            end)
        end)
    end
    spawn(function()
        pcall(function()
            while wait(0.2) do
                if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
                    MirageStatus:SetDesc("🏝️ Mirage Island is Spawning")
                else
                    MirageStatus:SetDesc("🏝️ Mirage Island Not Spawn")
                end
            end
        end)
    end)
    spawn(function()
        while wait(0.2) do
            pcall(function()
                local response = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1")
                if response then
                    HakiDealer:SetDesc("🟢 Master Of Auras Spawning")
                else
                    HakiDealer:SetDesc("🔴 Master Of Auras Not Spawn")
                end
            end)
        end
    end)
end

spawn(function()
    pcall(function()
        while wait(0.2) do
            local found = false
            for i, v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    FindFruit:SetDesc("🍏 Find " .. v.Name)
                    found = true
                    break
                end
            end
            if not found then
                FindFruit:SetDesc("🍏 Nothing")
            end
        end
    end)
end)







Window:OnClose(function()
    print("UI closed.")
end)
