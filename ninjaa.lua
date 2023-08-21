local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "BaconBoss Hub | Ninja Fighting Simulator",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

local Tab = Window:MakeTab({
    Name = "Main 🏠",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

    local TabTwo = Window:MakeTab({
    Name = "Egg 🥚",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

    local TabThree = Window:MakeTab({
    Name = "Teleport 🚪",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TabFour = Window:MakeTab({
    Name = "Misc 🎲",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

    local Section = TabFour:AddSection({
    Name = "Cre: BaconBossScript & tungnopro"
})
local Section = TabFour:AddSection({
    Name = "discord.gg/7QtGeuzdGc"
})

local Section = Tab:AddSection({
    Name = "Farm Vip Bag"
})


Tab:AddToggle({
    Name = "Farm Vip Bag Map 5 (Be near with vip bag 5) - Fast Punch",
    Default = false,
    Callback = function(Value)
            _G.autoFarm = Value
        while _G.autoFarm and wait() do
            local args = {
    [1] = "Area5",
    [2] = "PunchingBag",
    [3] = 7
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DoAction"):FireServer(unpack(args))
wait(0)
end
    end
})


  local Section = Tab:AddSection({
    Name = "Anti Afk - Click Once"
})
    Tab:AddButton({
    Name = "Anti Afk",
    Callback = function()
wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by TungNoPro "
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox tried to kick u but i kicked him instead"wait(2)ab.Text="Status : Active"end)
            end
        })

local Section = Tab:AddSection({
    Name = "Auto Wins"
})


Tab:AddParagraph("NOTE:", "Trying To Fight A Boss With A Lot More Strength Than You Will Cause The Game To Kick You. \nYou Have A 100% Win Chance.")

for i, v in pairs(game:GetService("Workspace").BillboardGuis:GetChildren()) do
	if v:IsA("Folder") then
		local area = tostring(v.Name)
		local Section = Tab:AddSection({
			Name = tostring(v.Name):gsub("Area", "Area ") .. " Auto Fight"
		})
		for i = 1, 5 do
			Tab:AddToggle({
				Name = "Fight Boss " .. tostring(i),
				Default = false,
				Callback = function(Value)
					getgenv().autofight = Value
					while autofight == true do
						game:GetService("ReplicatedStorage").Remotes.FightOver:FireServer(area, i)
						wait(3)
					end
				end
			})
		end
	end
end





local Section = TabTwo:AddSection({
    Name = "Auto Hatch Fast"
})
    _G.autoHatch = true
    _G.selectEgg = "Starter Egg"

    function autoHatch()
        while _G.autoHatch == true do
                game:GetService("ReplicatedStorage").PetSystem.PurchaseEgg:FireServer(_G.selectEgg,1)
            wait(0)
        end
    end
TabTwo:AddToggle({
Name = "Auto Hatch",
    Default = false,
    Callback = function(Value)
                _G.autoHatch = Value
                    autoHatch()
                    end
        })

TabTwo:AddDropdown({
	Name = "Choose Eggs",
	Default = "Starter Egg",
	Options = {"Starter Egg", "Intermediate Egg", "Experienced Egg", "Master Egg", "Ice Egg", "Frozen Egg", "Shard Egg", "Gem Egg", "Astral Egg", "Diamond Egg", "Fire Egg", "Earth Egg", "Molten Egg", "Crimson Egg", "Star Egg", "Phoenix Egg", "Sand Egg", "Palm Egg", "Coral Egg", "Spartan Egg", "Guilded Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
    print(_G.selectEgg)
	end    
})



local Section = TabThree:AddSection({
    Name = "Teleport)"
})



    getgenv().TTPlace = "string"


    function Teleport(teleportPlace)
            local player = game.Players.LocalPlayer
            player.Character.HumanoidRootPart.CFrame = teleportPlace

    end


TabThree:AddDropdown({
	Name = "Select Zone",
	Default = "Zone 1",
	Options = {"Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5"},
	Callback = function(Value)
		getgenv().TPPlace = Value
	end    
})

    TabThree:AddButton({
            Name = "Teleport",
            Callback = function(Value)
                if getgenv().TPPlace == "Zone 1" then
                    Teleport(game:GetService("Workspace").BillboardGuis.Area1.eggs.Part.CFrame)
                elseif getgenv().TPPlace == "Zone 2" then
                    Teleport(game:GetService("Workspace").BillboardGuis.Area2.figherts.Part.CFrame)
                elseif getgenv().TPPlace == "Zone 3" then
                    Teleport(game:GetService("Workspace").BillboardGuis.Area3.eggs.Part.CFrame)
                elseif getgenv().TPPlace == "Zone 4" then
                    Teleport(game:GetService("Workspace").BillboardGuis.Area4.Eggs.Part.CFrame)
                elseif getgenv().TPPlace == "Zone 5" then
                    Teleport(game:GetService("Workspace").BillboardGuis.Area5.punchingBags.top.CFrame)
                end
            end
    })