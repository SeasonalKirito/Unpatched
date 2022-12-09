--[[


























Credits to Extorius Hub for giving me this idea to create a 
ass raise a random script.

You can find Extorius Hub's script at this link "https://scriptblox.com/script/raise-a-floppa-2-2x-Cash-Flopp-utofrm-7098"

if you're here your either looking into my code or your gonna steal 
it for your script, so you dont need permission to steal this code as 
i only spent like 30 minutes on it, so go wild with those scripts and 
have a good day.

👋Good Bye👋



































]]--

getgenv().autoFeed = false
getgenv().autoRaiseRent = false
getgenv().SecureMode = true


local LocalPlayer = game:GetService("Players").LocalPlayer



local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()



local function returnHRP()
    if not LocalPlayer.Character then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        return
    else
        return LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end
end



local function returnHUM()
    if not LocalPlayer.Character then
        return
    end
    if not LocalPlayer.Character:FindFirstChild("Humanoid") then
        return
    else
        return LocalPlayer.Character:FindFirstChild("Humanoid")
    end
end
repeat
    task.wait()
until returnHRP() and returnHUM()



local Window =
    Rayfield:CreateWindow(
    {
        Name = "Raise A Sonic",
        LoadingTitle = "Made by SEASONAL#1235",
        LoadingSubtitle = "Made by SEASONAL#1235",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = "", -- Create a custom folder for your hub/game
            FileName = ""
        },
        Discord = {
            Enabled = false,
            Invite = "", -- The Discord invite code, do not include discord.gg/
            RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
            Title = "",
            Subtitle = "Key System",
            Note = "Join the discord ",
            FileName = "",
            SaveKey = false,
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = ""
        }
    }
)

local Tab = Window:CreateTab("Auto Farm", 4483362458)
local Section = Tab:CreateSection("Farming")
local Paragraph = Tab:CreateParagraph({Title = "Script Issues", Content = "If there is any issue's with the script message me on discord -SEASONAL#1235- and i will get back as soon as i can"})
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Click Sonic",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoClick = Value
            while Toggle_AutoClick and task.wait() do
            	fireclickdetector(workspace.Sonic.ClickPart.ClickDetector)
			end
        end
    }
)
local Toggle =
    Tab:CreateToggle(
    {
        Name = "Auto Collect Rings",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            Toggle_AutoCollectCash = Value
            while Toggle_AutoCollectCash and task.wait() do
            	for _,v in ipairs(workspace:GetChildren()) do
                    if v.Name == "Ring" or v.Name == "SpecialRing"then
                        firetouchinterest(v, returnHRP(), 0)
                        wait()
                        firetouchinterest(v, returnHRP(), 1)
					end
				end
			end
        end
    }
)

local Section = Tab:CreateSection("Caring For Sonic")
local Toggle = Tab:CreateToggle({
	Name = "Auto Feed",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().autoFeed = Value
        if Value then
            autoFeed(autoFeed)
        end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto Raise Rent",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().autoRaiseRent = Value
        if Value then
            autoRaiseRent(autoRaiseRent)
        end
	end,
})

---AUTO FEED---

function autoFeed(autoFeed)
    spawn(function()
        while getgenv().autoFeed == true do
            local args = {
                [1] = "Sonic Food"
                }
    
                game:GetService("ReplicatedStorage").Buy:FireServer(unpack(args))
            wait(1)
        end
    end)
end

---         ---    



---AUTO RAISE RENT---

function autoRaiseRent(autoRaiseRent)
    spawn(function()
        while getgenv().autoRaiseRent == true do
            local args = {
                [1] = "Get"
                    }
                game:GetService("ReplicatedStorage").RentEvent:FireServer(unpack(args))
            wait(1)
        end
    end)
end

---            ---



local Tab = Window:CreateTab("Teleports", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Teleportation")

local Button = Tab:CreateButton({
    Name = "Teleport Outside",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2.8126840591430664, -33.35207748413086, -61.60068893432617)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Teleport Inside House",
    Callback = function()
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.23755022883415222, -32.8463020324707, -3.151376247406006)
    end,
 })

local Button = Tab:CreateButton({
    Name = "Destroy GUI",
    Callback = function()
        Rayfield:Destroy()
    end,
 })
