-- General:
local plr = game.Players.LocalPlayer
if plr.PlayerGui:FindFirstChild("f") then
    plr.PlayerGui:FindFirstChild("f"):Destroy()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Old gui has been deleted!",
        Text = "The old Roblox Cheats gui has been deleted!",
        Duration = 5
    })
end
local frameistopen = true
local hr = false
local player = game.Workspace:FindFirstChild(plr.Name)
local del = false
local espname = false
local espdistance = false
local showteamname = false
local showteamcolor = false
local showhealth = false
local Players = game:GetService("Players")

local allowedplrs = {
    "Paluss1122",
    "Paluss11221",
    "Paluss11222"
}

local function isPlayerAllowed(name)
    for _, allowedName in ipairs(allowedplrs) do
        if name == allowedName then
            return true
        end
    end
    return false
end

if not isPlayerAllowed(plr.Name) then
    RunService.Heartbeat:Connect(function()
        StarterGui:SetCore("DevConsoleVisible", false)
        wait(1.5)
    end)
end


local f = Instance.new("Folder")
f.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
f.Name = "f"

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = f
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 10000

local draggable = Instance.new("Frame")
draggable.Size = UDim2.new(0, 402, 0, 248)
draggable.Position = UDim2.new(0.5, -100, 0.5, -50)
draggable.BackgroundTransparency = 1
draggable.Active = true
draggable.Draggable = true
draggable.Parent = screenGui
draggable.ZIndex = 100

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 402, 0, 248)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Active = true
frame.Parent = draggable
frame.Visible = true

local PlrGui = Instance.new("ScrollingFrame")
PlrGui.BackgroundTransparency = 1
PlrGui.Size = UDim2.new(0, 295, 0, 223)
PlrGui.Position = UDim2.new(0.264, 0, 0.024, 0)
PlrGui.Parent = frame
PlrGui.CanvasSize = UDim2.new(0, 0, 1.32, 0)
PlrGui.Visible = false

local main = Instance.new("ScrollingFrame")
main.BackgroundTransparency = 1
main.Size = PlrGui.Size
main.Position = PlrGui.Position
main.Parent = frame
main.CanvasSize = UDim2.new(0, 0, 0, 0)
main.ZIndex = 10000

local esp = Instance.new("ScrollingFrame")
esp.BackgroundTransparency = 1
esp.Size = PlrGui.Size
esp.Position = PlrGui.Position
esp.Parent = frame
esp.CanvasSize = UDim2.new(0, 0, 1.5, 0)
esp.Visible = false

-- Buttons:
local start1 = Instance.new("TextLabel")
start1.Parent = screenGui
start1.Size = UDim2.new(0.5, 0, 0.2, 0)
start1.Position = UDim2.new(0.25, 0, 0.52, 0)
start1.Text = "Paulus Scripts"
start1.TextSize = 40
start1.Font = Enum.Font.SourceSansBold
start1.TextColor3 = Color3.fromRGB(0, 0, 255)
start1.BackgroundTransparency = 1
start1.TextTransparency = 1

local start2 = Instance.new("ImageLabel")
start2.Parent = screenGui
start2.Size = UDim2.new(0.2, 0, 0.3, 0)
start2.Position = UDim2.new(0.4, 0, 0.3, 0)
start2.Image = "rbxassetid://70426163418050" 
start2.BackgroundTransparency = 1
start2.ImageTransparency = 1

local c = Instance.new("UICorner")
c.Parent = imageLabel
c.CornerRadius = UDim.new(1, 0)

-- Sicherstellen, dass der Frame zu Beginn unsichtbar ist
draggable.Visible = false

local fadeInInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In)  -- 1 Sekunde Fade-In
local fadeOutInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)  -- 1 Sekunde Fade-Out

local fadeInTweenText = TweenService:Create(start1, fadeInInfo, {TextTransparency = 0})
local fadeInTweenImage = TweenService:Create(start2, fadeInInfo, {ImageTransparency = 0})
local fadeInTweenFrame = TweenService:Create(draggable, fadeInInfo, {Visible = true})

local fadeOutTweenText = TweenService:Create(start1, fadeOutInfo, {TextTransparency = 1})
local fadeOutTweenImage = TweenService:Create(start2, fadeOutInfo, {ImageTransparency = 1})

fadeInTweenText:Play()
fadeInTweenImage:Play()
fadeInTweenText.Completed:Wait()
wait(2)

fadeOutTweenText:Play()
fadeOutTweenImage:Play()
fadeOutTweenText.Completed:Wait()
wait(0.5)
fadeInTweenFrame:Play()

local unvisibleButton = Instance.new("TextButton")
unvisibleButton.Parent = PlrGui
unvisibleButton.Size = UDim2.new(0, 235, 0, 46)
unvisibleButton.Position = UDim2.new(0, 0, 0, 8)
unvisibleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unvisibleButton.Text = "Invisible"
unvisibleButton.TextScaled = true
unvisibleButton.Font = Enum.Font.Bangers

local RobloxCheats = Instance.new("TextLabel")
RobloxCheats.Parent = main
RobloxCheats.Size = UDim2.new(0, 262,0, 50)
RobloxCheats.Position = UDim2.new(0,0,0,0)
RobloxCheats.Text = "Roblox Cheats"
RobloxCheats.Font = Enum.Font.Bangers
RobloxCheats.TextScaled = true
RobloxCheats.BackgroundTransparency = 1
RobloxCheats.TextColor3 = Color3.fromRGB(64, 0, 255)

local visibleButton = Instance.new("TextButton")
visibleButton.Size = UDim2.new(0, 235, 0, 46)
visibleButton.Position = UDim2.new(0, 0, 0, 61)
visibleButton.Text = "Visible"
visibleButton.Parent = PlrGui
visibleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
visibleButton.TextScaled = true
visibleButton.Font = Enum.Font.Bangers

local resetbt = Instance.new("TextButton")
resetbt.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
resetbt.Position = UDim2.new(0, 0, 0, 115)
resetbt.Size = UDim2.new(0, 235, 0, 46)
resetbt.Text = "Reset Player"
resetbt.Parent = PlrGui
resetbt.TextColor3 = Color3.fromRGB(0, 0, 0)
resetbt.TextScaled = true
resetbt.Font = Enum.Font.Bangers

local Plrbt = Instance.new("TextButton")
Plrbt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Plrbt.Position = UDim2.new(0, 0, 0.069, 0)
Plrbt.Size = UDim2.new(0, 71, 0, 26)
Plrbt.Parent = draggable
Plrbt.BackgroundTransparency = 1
Plrbt.TextColor3 = Color3.fromRGB(255, 0, 0)
Plrbt.TextScaled = true
Plrbt.Font = Enum.Font.Bangers
Plrbt.Text = "Player"

local espguibt = Instance.new("TextButton")
espguibt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
espguibt.Position = UDim2.new(0, 0, 0.62, 0)
espguibt.Size = UDim2.new(0, 71, 0, 26)
espguibt.Parent = draggable
espguibt.BackgroundTransparency = 1
espguibt.TextColor3 = Color3.fromRGB(255, 0, 0)
espguibt.TextScaled = true
espguibt.Font = Enum.Font.Bangers
espguibt.Text = "ESP"

local carmodbt = Instance.new("TextButton")
carmodbt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
carmodbt.Position = UDim2.new(0, 0, 0.25, 0)
carmodbt.Size = UDim2.new(0, 71, 0, 26)
carmodbt.Parent = draggable
carmodbt.BackgroundTransparency = 1
carmodbt.TextColor3 = Color3.fromRGB(255, 0, 0)
carmodbt.TextScaled = true
carmodbt.Font = Enum.Font.Bangers
carmodbt.Text = "Car Mod"

local paulusscripts = carmodbt:Clone()
paulusscripts.Position = UDim2.new(0, 0, 0.81, 0)
paulusscripts.Text = "Paulus Scripts"
paulusscripts.TextColor3 = Color3.fromRGB(0, 0, 255)
paulusscripts.Parent = draggable

local teleportsbt = Instance.new("TextButton")
teleportsbt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
teleportsbt.Position = UDim2.new(0, 0, 0.446, 0)
teleportsbt.Size = UDim2.new(0, 71, 0, 26)
teleportsbt.Parent = draggable
teleportsbt.BackgroundTransparency = 1
teleportsbt.TextColor3 = Color3.fromRGB(255, 0, 0)
teleportsbt.TextScaled = true
teleportsbt.Font = Enum.Font.Bangers
teleportsbt.Text = "Teleports"

local Teleports = Instance.new("ScrollingFrame")
Teleports.BackgroundTransparency = 1
Teleports.Size = UDim2.new(0, 295, 0, 223)
Teleports.Position = UDim2.new(0.264, 0, 0.024, 0)
Teleports.Parent = frame
Teleports.CanvasSize = UDim2.new(0, 0, 3, 0)
Teleports.Visible = false

local ADAC = Instance.new("TextButton")
ADAC.Parent = Teleports
ADAC.Size = UDim2.new(0, 235, 0, 46)
ADAC.Position = UDim2.new(0, 0, 0, 8)
ADAC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ADAC.Text = "ADAC"
ADAC.TextScaled = true
ADAC.Font = Enum.Font.Bangers

local aresfuel = ADAC:Clone()
aresfuel.Parent = Teleports
aresfuel.Position = UDim2.new(0, 0, 0, 61)
aresfuel.Text = "Ares Fuel"

local policestation = ADAC:Clone()
policestation.Position = UDim2.new(0, 0, 0, 114)
policestation.Text = "Police Station"
policestation.Parent = Teleports

local firestation = ADAC:Clone()
firestation.Position = UDim2.new(0, 0, 0, 167)
firestation.Text = "Fire Station"
firestation.Parent = Teleports

local bank = ADAC:Clone()
bank.Position = UDim2.new(0, 0, 0, 273)
bank.Text = "Bank"
bank.Parent = Teleports

local jewelery = ADAC:Clone()
jewelery.Position = UDim2.new(0, 0, 0, 326)
jewelery.Text = "Jewelery"
jewelery.Parent = Teleports

local Club = ADAC:Clone()
Club.Position = UDim2.new(0, 0, 0, 379)
Club.Text = "Club"
Club.Parent = Teleports

local gasngo = ADAC:Clone()
gasngo.Position = UDim2.new(0, 0, 0, 432)
gasngo.Text = "Gas-N-Go Fuel"
gasngo.Parent = Teleports

local prison = ADAC:Clone()
prison.Position = UDim2.new(0, 0, 0, 220)
prison.Text = "Prison"
prison.Parent = Teleports

local toolshop = ADAC:Clone()
toolshop.Position = UDim2.new(0,0,0, 485)
toolshop.Text = "Tool Shop"
toolshop.Parent = Teleports

local hospital = ADAC:Clone()
hospital.Position = UDim2.new(0, 0, 0, 538)
hospital.Text = "Hospital"
hospital.Parent = Teleports

local dealership = ADAC:Clone()
dealership.Position = UDim2.new(0, 0, 0, 591)
dealership.Text = "Dealership"
dealership.Parent = Teleports

local buscompany = ADAC:Clone()
buscompany.Position = UDim2.new(0, 0, 0, 644)
buscompany.Text = "Bus Company"
buscompany.Parent = Teleports

local farmshop = ADAC:Clone()
farmshop.Position = UDim2.new(0, 0, 0, 697)
farmshop.Text = "Farmshop"
farmshop.Parent = Teleports

local clothesstore = ADAC:Clone()
clothesstore.Position = UDim2.new(0, 0, 0, 750)
clothesstore.Text = "clothestore"
clothesstore.Parent = Teleports

local ossofuel = ADAC:Clone()
ossofuel.Position = UDim2.new(0, 0, 0, 803)
ossofuel.Text = "Osso Fuel"
ossofuel.Parent = Teleports

local harbor = ADAC:Clone()
harbor.Position = UDim2.new(0, 0, 0, 856)
harbor.Text = "Harbor"
harbor.Parent = Teleports

local truckcompany = ADAC:Clone()
truckcompany.Position = UDim2.new(0, 0, 0, 909)
truckcompany.Text = "Truck Company"
truckcompany.Parent = Teleports

local Delete = Instance.new("TextButton")
Delete.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Delete.Position = UDim2.new(0.716, 0, 0.903, 0)
Delete.Size = UDim2.new(0, 114, 0, 26)
Delete.Text = "Minimize"
Delete.Parent = draggable
Delete.TextColor3 = Color3.fromRGB(0, 0, 0)
Delete.TextScaled = true
Delete.Font = Enum.Font.Bangers

local m = Instance.new("ImageButton")
m.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
m.Position = UDim2.new(0.5, 0, 0.5, 0)
m.Size = UDim2.new(0, 100, 0, 100)
m.Draggable = true
m.Parent = screenGui
m.BackgroundTransparency = 0
m.ZIndex = 10000
m.Image = "rbxassetid://136306996099900"

local hasremotecontrole = Instance.new("TextLabel")
hasremotecontrole.BackgroundColor3 = Color3.fromRGB(60, 255, 6)
hasremotecontrole.BackgroundTransparency = 0
hasremotecontrole.Position = UDim2.new(0, 0, 0, 169)
hasremotecontrole.Size = UDim2.new(0, 175, 0, 46)
hasremotecontrole.Visible = true
hasremotecontrole.Text = "Has Remote Controle"
hasremotecontrole.TextScaled = true
hasremotecontrole.Parent = PlrGui
hasremotecontrole.Font = Enum.Font.Bangers

local hsremotecontrole = Instance.new("TextButton")
hsremotecontrole.Parent = PlrGui
hsremotecontrole.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hsremotecontrole.BackgroundTransparency = 0
hsremotecontrole.BorderColor3 = Color3.fromRGB(70, 70, 70)
hsremotecontrole.BorderSizePixel = 1
hsremotecontrole.Visible = true
hsremotecontrole.Text = " "
hsremotecontrole.TextColor3 = Color3.fromRGB(17, 255, 0)
hsremotecontrole.TextScaled = true
hsremotecontrole.Position = UDim2.new(0, 180, 0, 169)
hsremotecontrole.Size = UDim2.new(0, 50, 0, 46)

local carmod = Instance.new("ScrollingFrame")
carmod.BackgroundTransparency = 1
carmod.Size = UDim2.new(0, 295, 0, 223)
carmod.Position = UDim2.new(0.264, 0, 0.024, 0)
carmod.Parent = frame
carmod.Visible = false
carmod.CanvasSize = UDim2.new(0,0,0,0)

local lc = Instance.new("TextLabel")
lc.Parent = carmod
lc.BackgroundColor3 = Color3.fromRGB(60, 255, 6)
lc.BackgroundTransparency = 0
lc.Position = UDim2.new(0, 0, 0, 0)
lc.Size = UDim2.new(0, 125, 0, 40)
lc.Font = Enum.Font.Bangers
lc.Text = "License Plate:"
lc.TextScaled = true

local licensePlate = Instance.new("TextBox")
licensePlate.Position = UDim2.new(0.424, 0, 0, 0)
licensePlate.Size = UDim2.new(0, 125, 0, 40)
licensePlate.PlaceholderText = "Your License Plate here..."
licensePlate.TextScaled = true
licensePlate.Parent = carmod
licensePlate.BackgroundColor3 = Color3.fromRGB(255,255,255)

local lpc = Instance.new("ImageButton")
lpc.Position = UDim2.new(0, 251, 0, 0)
lpc.Size = UDim2.new(0, 40, 0, 40)
lpc.Parent = carmod
lpc.Image = "rbxassetid://81442555341445"

local stealnearestvehicle = Instance.new("TextButton")
stealnearestvehicle.Position = UDim2.new(0, 0, 0, 222)
stealnearestvehicle.Size = UDim2.new(0, 235, 0, 46)
stealnearestvehicle.BackgroundColor3 = Color3.fromRGB(255,255,255)
stealnearestvehicle.BackgroundTransparency = 0
stealnearestvehicle.Font = Enum.Font.Bangers
stealnearestvehicle.Text = "Steal Nearest Vehicle"
stealnearestvehicle.TextScaled = true
stealnearestvehicle.Parent = PlrGui

local delobst = stealnearestvehicle:Clone()
delobst.Position = UDim2.new(0, 0, 0, 275)
delobst.Parent = PlrGui
delobst.Text = "Delete all road obstacles!"

local dcbt = Instance.new("ImageLabel")
dcbt.Position = UDim2.new(0, 0,0.368, 0)
dcbt.Size = UDim2.new(0, 121, 0, 121)
dcbt.Image = "rbxassetid://97885640451059"
dcbt.BackgroundTransparency = 1
dcbt.Parent = main

local dctl = Instance.new("TextLabel")
dctl.Position = UDim2.new(0, 0, 0.87, 0)
dctl.Size = UDim2.new(0, 181, 0, 31)
dctl.Parent = main
dctl.BackgroundTransparency = 1
dctl.Font = Enum.Font.Bangers
dctl.TextColor3 = Color3.fromRGB(6, 255, 201)
dctl.Text = "https://discord.gg/RfV6PJWXZY"
dctl.TextScaled = true

local espbt = Instance.new("TextButton")
espbt.Position = UDim2.new(0, 0, 0, 0)
espbt.Size = UDim2.new(0, 235, 0, 46)
espbt.BackgroundColor3 = Color3.fromRGB(255,0,0)
espbt.BackgroundTransparency = 0
espbt.Font = Enum.Font.Bangers
espbt.Text = "ESP Names"
espbt.TextScaled = true
espbt.Parent = esp

local espteamcolor = espbt:Clone()
espteamcolor.Parent = esp
espteamcolor.BackgroundColor3 = Color3.fromRGB(255,0,0)
espteamcolor.Position = UDim2.new(0, 0, 0, 53)
espteamcolor.Text = "Show Team Color"

local espdistancebt = espbt:Clone()
espdistancebt.Parent = esp
espdistancebt.BackgroundColor3 = Color3.fromRGB(255,0,0)
espdistancebt.Position = UDim2.new(0, 0, 0, 106)
espdistancebt.Text = "Show Distance"

local showteamnamebt = espbt:Clone()
showteamnamebt.Parent = esp
showteamnamebt.BackgroundColor3 = Color3.fromRGB(255,0,0)
showteamnamebt.Position = UDim2.new(0, 0, 0, 159)
showteamnamebt.Text = "Show Team Name"

local showplrhealth = espbt:Clone()
showplrhealth.Parent = esp
showplrhealth.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
showplrhealth.Position = UDim2.new(0, 0, 0, 212)
showplrhealth.Text = "Show Player Health"

local showplrlist = espbt:Clone()
showplrlist.Parent = esp
showplrlist.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
showplrlist.Position = UDim2.new(0, 0, 0, 265)
showplrlist.Text = "Show Player List"

local guisdelete = espbt:Clone()
guisdelete.Parent = esp
guisdelete.BackgroundColor3 = Color3.fromRGB(255,255,255)
guisdelete.Position = UDim2.new(0, 0, 0, 318)
guisdelete.Text = "Delete all Guis!"

-- Corners:

local corner5 = Instance.new("UICorner")
corner5.CornerRadius = UDim.new(0, 100)
corner5.Parent = m

for _, all in ipairs(screenGui:GetDescendants()) do
    if all:IsA("GuiObject") and all ~= m then
        local corners = Instance.new("UICorner")
        corners.Parent = all
        corners.CornerRadius = UDim.new(0, 5)
    end
    if all:IsA("TextLabel") or all:IsA("TextButton") or all:IsA("TextBox") and all ~= hsremotecontrole then
        all.Font = Enum.Font.Bangers
    end

    if all:IsA("TextBox") then
        all.Text = all.PlaceholderText
    end
end

--Functions:

local RunService = game:GetService("RunService")

local function createBillboard(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local character = player.Character
        if not character:FindFirstChildOfClass("BillboardGui") then
            local billboard = Instance.new("BillboardGui")
            billboard.Adornee = character.HumanoidRootPart
            billboard.Size = UDim2.new(0, 200, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 3, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = character

            local nameLabel = Instance.new("TextLabel")
            nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
            nameLabel.Text = player.Name
            nameLabel.TextScaled = true
            nameLabel.BackgroundTransparency = 1
            nameLabel.TextColor3 = Color3.fromRGB(255,255,255)
            nameLabel.Parent = billboard
            nameLabel.Visible = true

            local distanceLabel = Instance.new("TextLabel")
            distanceLabel.Size = UDim2.new(1, 0, 0.5, 0)
            distanceLabel.Position = UDim2.new(0, 0, 0.5, 0)
            distanceLabel.TextScaled = true
            distanceLabel.BackgroundTransparency = 1
            distanceLabel.TextColor3 = Color3.fromRGB(255,255,255)
            distanceLabel.Parent = billboard
            distanceLabel.Visible = false

            local teamLabel = Instance.new("TextLabel")
            teamLabel.Size = UDim2.new(1, 0, 0.5, 0)
            teamLabel.Position = UDim2.new(0, 0, 0.99, 0)
            teamLabel.TextScaled = true
            teamLabel.BackgroundTransparency = 1
            teamLabel.TextColor3 = Color3.fromRGB(255,255,255)
            teamLabel.Text = player.Team.Name
            teamLabel.Parent = billboard
            teamLabel.Visible = false

            local roundedHealth = math.floor(game.Workspace[player.Name].Humanoid.Health)

            local health = Instance.new("TextLabel")
            health.Size = UDim2.new(1, 0, 0.5, 0)
            health.Position = UDim2.new(0, 0, 0, -20)
            health.TextScaled = true
            health.BackgroundTransparency = 1
            health.TextColor3 = Color3.fromRGB(255,255,255)
            health.Text = "Health: " .. roundedHealth
            health.Parent = billboard
            health.Visible = false

            if showteamname then
                teamLabel.Visible = true
            else
                teamLabel.Visible = false
            end

            if espdistance then
                distanceLabel.Visible = true
            else
                distanceLabel.Visible = false
            end

            if showhealth then
                health.Visible = true
            else 
                health.Visible = false
            end

            if showteamcolor then
                nameLabel.TextColor3 = player.TeamColor.Color
                distanceLabel.TextColor3 = player.TeamColor.Color
                teamLabel.TextColor3 = player.TeamColor.Color
                health.TextColor3 = player.TeamColor.Color
            else
                nameLabel.TextColor3 = Color3.fromRGB(255,255,255)
                distanceLabel.TextColor3 = Color3.fromRGB(255,255,255)
                teamLabel.TextColor3 = Color3.fromRGB(255,255,255)
                health.TextColor3 = Color3.fromRGB(255,255,255)
            end

            if player == plr then
                billboard:Destroy()
            end

            RunService.RenderStepped:Connect(function()
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local distance = (player.Character.HumanoidRootPart.Position - Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    distanceLabel.Text = string.format("Distance: %.2f", distance)
                end
            end)
        end
    end
end

local function removeBillboard(player)
    local character = player.Character
    if character then
        for _, descendant in pairs(character:GetDescendants()) do
            if descendant:IsA("BillboardGui") then
                descendant:Destroy()
            end
        end
    end
end

showplrhealth.MouseButton1Click:Connect(function()
    showhealth = not showhealth
    showplrhealth.BackgroundColor3 = showhealth and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Important!",
        Text = "Turn Esp names off and again on to apply!",
        Duration = 5
    })
end)

guisdelete.MouseButton1Click:Connect(function()
    for _, all in pairs(plr.PlayerGui:GetChildren()) do
        if all.Name == "playerlist" then
            all:Destroy()
        end
    end
end)

local function createScrollingPlayerList()
    local playerGui = plr:WaitForChild("PlayerGui")
    
    if not playerGui:FindFirstChild("playerlist") then
        local playerList = Instance.new("ScreenGui")
        playerList.Name = "playerlist"
        playerList.Parent = playerGui
        
        local scrollingFrame = Instance.new("ScrollingFrame")
        scrollingFrame.Size = UDim2.new(0, 400, 0, 500)
        scrollingFrame.Position = UDim2.new(0, 10, 0, 10)
        scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, #Players:GetPlayers() * 50)
        scrollingFrame.ScrollBarThickness = 12
        scrollingFrame.Parent = playerList
        
        local function updatePlayerList()
            scrollingFrame:ClearAllChildren()
            for i, player in pairs(Players:GetPlayers()) do
                local playerLabel = Instance.new("TextLabel")
                playerLabel.Size = UDim2.new(1, 0, 0, 20)
                playerLabel.Position = UDim2.new(0, 0, 0, (i - 1) * 20)
                playerLabel.Text = player.Name .. " | " .. (player.Team and player.Team.Name or "No Team")
                playerLabel.BackgroundTransparency = 1
                playerLabel.TextColor3 = player.TeamColor.Color
                playerLabel.Parent = scrollingFrame
                playerLabel.TextScaled = true
            end
        end
        
        updatePlayerList()
        game:GetService("RunService").Stepped:Connect(updatePlayerList)
    end
end

showplrlist.MouseButton1Click:Connect(createScrollingPlayerList)


showteamnamebt.MouseButton1Click:Connect(function()
    showteamname = not showteamname
    showteamnamebt.BackgroundColor3 = showteamname and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Important!",
        Text = "Turn Esp names off and again on to apply!",
        Duration = 5
    })
end)

espdistancebt.MouseButton1Click:Connect(function()
    espdistance = not espdistance
    espdistancebt.BackgroundColor3 = espdistance and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Important!",
        Text = "Turn Esp names off and again on to apply!",
        Duration = 5
    })
end)

local function updateBillboards()
    for _, player in pairs(Players:GetPlayers()) do
        if espname then
            createBillboard(player)
        else
            removeBillboard(player)
        end
    end
end

espbt.MouseButton1Click:Connect(function()
    espname = not espname
    updateBillboards()
    espbt.BackgroundColor3 = espname and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
end)

Players.PlayerRemoving:Connect(removeBillboard)

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        if espname then
            createBillboard(player)
        else
            removeBillboard(player)
        end
    end)
end)

for _, player in pairs(Players:GetPlayers()) do
    if player.Character then
        if espname then
            createBillboard(player)
        end
    else
        player.CharacterAdded:Connect(function()
            if espname then
                createBillboard(player)
            end
        end)
    end
end

espteamcolor.MouseButton1Click:Connect(function()
    showteamcolor = not showteamcolor
    espteamcolor.BackgroundColor3 = showteamcolor and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Important!",
        Text = "Turn Esp names off and again on to apply!",
        Duration = 5
    })
end)

delobst.MouseButton1Click:Connect(function()
    del = not del

    local Additional = game.Workspace.Roads.Additional

    for _, obj in pairs(Additional:GetDescendants()) do
        if obj:IsA("BasePart") then
            if del then
                obj.CanCollide = false
                obj.Transparency = 1
                delobst.Text = "Add all Road Obstacles"
            else
                obj.CanCollide = true
                obj.Transparency = 0
                delobst.Text = "Delete all Road Obstacles"
            end
        end
    end

    if del then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Removed Reoad Obstacles",
            Text = "All Road Obstacles were removed!",
            Duration = 5
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Added Reoad Obstacles",
            Text = "All Road Obstacles were added!",
            Duration = 5
        })
    end
end)

local function findNearestVehicleSeat()
    local nearestSeat = nil
    local shortestDistance = math.huge -- Unendlich groß

    for _, object in ipairs(workspace:GetDescendants()) do
        if object:IsA("VehicleSeat") then
            local distance = (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestSeat = object
            end
        end
    end
    return nearestSeat
end

stealnearestvehicle.MouseButton1Click:Connect(function()
    local character = plr.Character
    local seat = findNearestVehicleSeat()
    
    if player then
        for _, obj in ipairs(player:GetChildren()) do
            if obj:IsA("BasePart") then
                obj.CanCollide = false
            end
        end
    end

    if seat then
        character:SetPrimaryPartCFrame(seat.CFrame)
        seat:Sit(character.Humanoid)
    else
        warn("Kein Vehicle Seat in der Nähe gefunden")
    end
end)

carmodbt.MouseButton1Click:Connect(function()
    if PlrGui and carmod and Teleports and esp then
        PlrGui.Visible = false
        carmod.Visible = true
        Teleports.Visible = false
        main.Visible = false
        esp.Visible = false
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Gui Error",
            Text = "I could'nt find this Gui",
            Duration = 5
        })
    end
end)

lpc.MouseButton1Click:Connect(function()
    local frontlp = game.Workspace:WaitForChild("Vehicles"):WaitForChild(plr.Name):WaitForChild("Body"):WaitForChild("LicensePlates"):WaitForChild("Front"):WaitForChild("Gui"):WaitForChild("TextLabel")
    local backlp = game.Workspace:WaitForChild("Vehicles"):WaitForChild(plr.Name):WaitForChild("Body"):WaitForChild("LicensePlates"):WaitForChild("Back"):WaitForChild("Gui"):WaitForChild("TextLabel")
    local t = licensePlate.Text
    if frontlp and backlp and t then
        frontlp.Text = t
        backlp.Text = t
        frontlp.TextScaled = true
        backlp.TextScaled = true
        plr:SetAttribute("VehicleLicensePlate", t)
        game.StarterGui:SetCore("SendNotification", {
            Title = "Succes!",
            Text = "You have changed your License Plate: << " .. t .." >>",
            Duration = 5
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "I could'nt find the License Plates!",
            Duration = 5
        })
    end
    game.StarterGui:SetCore("SendNotification", {
        Title = "Important!",
        Text = "Only you can see the changed License Plate!",
        Duration = 5
    })
end)

local function teleport(position, angles)
    local character = plr.Character
    local seat = game.Workspace:WaitForChild("Vehicles"):WaitForChild(plr.Name):FindFirstChildWhichIsA("VehicleSeat")
    local car = seat.Parent

    if character and seat and car then
        car.PrimaryPart = car.Body.Body
        character:SetPrimaryPartCFrame(seat.CFrame)
        seat:Sit(character:FindFirstChildOfClass("Humanoid"))
        car:SetPrimaryPartCFrame(position * angles)
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "I could'nt find this Position!",
            Duration = 5
        })
    end
end

ADAC.MouseButton1Click:Connect(function()
    local position = CFrame.new(-323, 7, 510.6)
    local angles = CFrame.Angles(0, math.rad(90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

aresfuel.MouseButton1Click:Connect(function()
    local position = CFrame.new(-865.6, 10, 1518)
    local angles = CFrame.Angles(0, math.rad(-90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

policestation.MouseButton1Click:Connect(function()
    local position = CFrame.new(-1672.7, 10, 2753.8)
    local angles = CFrame.Angles(0, math.rad(-90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

prison.MouseButton1Click:Connect(function()
    local position = CFrame.new(-577, 10, 2859)
    local angles = CFrame.Angles(0, math.rad(-90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

firestation.MouseButton1Click:Connect(function()
    local position = CFrame.new(-968, 10, 3895)
    local angles = CFrame.Angles(0, math.rad(90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

bank.MouseButton1Click:Connect(function()
    local position = CFrame.new(-1130.8, 10, 3152.8)
    local angles = CFrame.Angles(0, math.rad(0), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

jewelery.MouseButton1Click:Connect(function()
    local position = CFrame.new(-395, 10, 3522)
    local angles = CFrame.Angles(0, math.rad(-90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

gasngo.MouseButton1Click:Connect(function()
    local position = CFrame.new(-1544, 10, 3798)
    local angles = CFrame.Angles(0, math.rad(90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

Club.MouseButton1Click:Connect(function()
    local position = CFrame.new(-1825, 10, 3207)
    local angles = CFrame.Angles(0, math.rad(90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

toolshop.MouseButton1Click:Connect(function()
    local position = CFrame.new(-747, 10, 664.6)
    local angles = CFrame.Angles(0, math.rad(90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

hospital.MouseButton1Click:Connect(function()
    local position = CFrame.new(-278.9, 10, 1113.7)
    local angles = CFrame.Angles(0, math.rad(180), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

dealership.MouseButton1Click:Connect(function()
    local position = CFrame.new(-1401.9, 10, 959.6)
    local angles = CFrame.Angles(0, math.rad(-90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

buscompany.MouseButton1Click:Connect(function()
    local position = CFrame.new(-1695.4, 10, -1277.6)
    local angles = CFrame.Angles(0, math.rad(0), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

farmshop.MouseButton1Click:Connect(function()
    local position = CFrame.new(-910.7, 10, -1168.2)
    local angles = CFrame.Angles(0, math.rad(0), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

clothesstore.MouseButton1Click:Connect(function()
    local position = CFrame.new(475.7, 10, -1446.3)
    local angles = CFrame.Angles(0, math.rad(-90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

ossofuel.MouseButton1Click:Connect(function()
    local position = CFrame.new(-37.7, 10, -754.4)
    local angles = CFrame.Angles(0, math.rad(0), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

harbor.MouseButton1Click:Connect(function()
    local position = CFrame.new(1064.8, 10, 2187.9)
    local angles = CFrame.Angles(0, math.rad(180), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)

truckcompany.MouseButton1Click:Connect(function()
    local position = CFrame.new(715.3, 10, 1447.9)
    local angles = CFrame.Angles(0, math.rad(90), 0)
    if angles and position then
        teleport(position, angles)
    else    
        game.StarterGui:SetCore("SendNotification", {
        Title = "Error",
        Text = "I could'nt find this Position!",
        Duration = 5
        })
    end 
end)


local function updateVisibility()
    if frameistopen then
        frame.Visible = true
        m.Visible = false
        Delete.Visible = true
        Plrbt.Visible = true
        carmodbt.Visible = true
        draggable.Active = true
        teleportsbt.Visible = true
        espguibt.Visible = true
        paulusscripts.Visible = true
        game.StarterGui:SetCore("SendNotification", {
            Title = "Frame",
            Text = "The Frame is now visible!",
            Duration = 5
        })
    else
        frame.Visible = false
        m.Visible = true
        Delete.Visible = false
        Plrbt.Visible = false
        carmodbt.Visible = false
        draggable.Active = false
        teleportsbt.Visible = false
        espguibt.Visible = false
        paulusscripts.Visible = false
        game.StarterGui:SetCore("SendNotification", {
            Title = "Frame",
            Text = "The Frame is now invisible!",
            Duration = 5
        })
    end
end

hsremotecontrole.MouseButton1Click:Connect(function()
    if hr == false then
        hsremotecontrole.Text = "X"
        plr:SetAttribute("HasRemoteControl", true)
        hr = true
        game.StarterGui:SetCore("SendNotification", {
            Title = "Remote Control",
            Text = "You got the Remote Control!",
            Duration = 5
        })
    else
        hsremotecontrole.Text = ""
        plr:SetAttribute("HasRemoteControl", false)
        hr = false
        game.StarterGui:SetCore("SendNotification", {
            Title = "Remote Control",
            Text = "You lost the Remote Control!",
            Duration = 5
        })
    end
end)

resetbt.MouseButton1Click:Connect(function()
    game.Workspace:FindFirstChild(plr.Name).Humanoid.Health = 0
    game.StarterGui:SetCore("SendNotification", {
        Title = "Player Reset",
        Text = "You will be reset...",
        Duration = 5
    })
end)

espguibt.MouseButton1Click:Connect(function()
    PlrGui.Visible = false
    carmod.Visible = false
    Teleports.Visible = false
    main.Visible = false
    esp.Visible = true
end)

teleportsbt.MouseButton1Click:Connect(function()
    PlrGui.Visible = false
    carmod.Visible = false
    Teleports.Visible = true
    main.Visible = false
    esp.Visible = false
end)

Plrbt.MouseButton1Click:Connect(function()
    PlrGui.Visible = true
    carmod.Visible = false
    Teleports.Visible = false
    main.Visible = false
    esp.Visible = false
end)

m.MouseButton1Click:Connect(function()
    frameistopen = true
    updateVisibility()
end)

Delete.MouseButton1Click:Connect(function()
    frameistopen = false
    updateVisibility()
end)

updateVisibility()

local lsc = game.Workspace:WaitForChild("Vehicles"):WaitForChild(plr.Name)

local function unvisiblecar()
    if player and lsc then
        for _, obj in ipairs(lsc:GetDescendants()) do
            if obj:IsA("MeshPart") or obj:IsA("Part") then
                obj.Transparency = 1
            elseif obj:IsA("SurfaceGui") then
                obj.Enabled = false
            elseif obj:IsA("Decal") then
                obj.Transparency = 1
            end
        end
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "Couldn't make your car invisible!",
            Duration = 5
        })
    end
end

local function visiblecar()
    if player and lsc then
        for _, obj in ipairs(lsc:GetDescendants()) do
            if obj.Name ~= "DriveSeat" and obj.Name ~= "RearRightSeat" and obj.Name ~= "RearLeftSeat" and obj.Name ~= "FrontRightSeat" and obj.Name ~= "Mass" and obj.Name ~= "FL" and obj.Name ~= "FR" and obj.Name ~= "RR" and obj.Name ~= "RL" then
                if obj:IsA("MeshPart") or obj:IsA("Part") then
                    obj.Transparency = 0
                elseif obj:IsA("SurfaceGui") then
                    obj.Enabled = true
                elseif obj:IsA("Decal") then
                    obj.Transparency = 0
                end
            end
        end
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "Couldn't make your car visible!",
            Duration = 5
        })
    end
end

unvisibleButton.MouseButton1Click:Connect(function()
    if player then
        for _, obj in ipairs(player:GetChildren()) do
            if obj:IsA("BasePart") then
                obj.Transparency = 1
                obj.CanCollide = false
            elseif obj:IsA("Accessory") then
                obj.Handle.Transparency = 1
            end
        end
        
        if player:FindFirstChild("Head") and player.Head:FindFirstChild("face") then
            player.Head.face.Transparency = 1
        end

        game.StarterGui:SetCore("SendNotification", {
            Title = "Invisible Player",
            Text = "You are now invisible!",
            Duration = 5
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "Couldn't find the player!",
            Duration = 5
        })
    end

    unvisiblecar()
end)


visibleButton.MouseButton1Click:Connect(function()
    if player then
        for _, obj in ipairs(player:GetChildren()) do
            if obj:IsA("BasePart") and obj.Name ~= "HumanoidRootPart" then
                obj.Transparency = 0
                obj.CanCollide = true
            elseif obj:IsA("Accessory") then
                obj.Handle.Transparency = 0
            end
        end
        
        if player:FindFirstChild("Head") and player.Head:FindFirstChild("face") then
            player.Head.face.Transparency = 0
        end

        game.StarterGui:SetCore("SendNotification", {
            Title = "Visible Player",
            Text = "You are now visible!",
            Duration = 5
        })
    else
        game.StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "Couldn't find the player!",
            Duration = 5
        })
    end

    visiblecar()
end)
