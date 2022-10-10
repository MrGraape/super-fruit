---
--- Created by Mr_Graape.
--- DateTime: 10/2/2022 4:23 PM
---
--- libs

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MrGraape/super-fruit/main/libs/gui_lib.lua"))()
local Window = Library.CreateLib("Superfruit", "Ocean")
--- all vars
getgenv().fs_toggle = false
getgenv().bt_toggle = false
getgenv().ms_toggle = false
getgenv().jf_toggle = false
getgenv().pp_toggle = false
Player = game.Players.LocalPlayer.Name
Players = game:GetService("Players")
stats = Players[Player].PrivateStats
getgenv().token  =  stats.Token.value
getgenv().fsvalue = stats.FistStrength.value
getgenv().btvalue = stats.BodyToughness.value
getgenv().msvalue = stats.MovementSpeed.value
getgenv().jfvalue = stats.JumpForce.value
getgenv().ppvalue = stats.PsychicPower.value
getgenv().fsta = 1
getgenv().ppv = 2
getgenv().crystalcframe = Vector3.new(-2276.68359, 1955.55713, 1051.58582, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().rockcframe = Vector3.new(407.900024, 260.65332, 979.379822, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().star1cframe = Vector3.new(1176.43018, 4776.36084, -2293.08911, -1, 0, 0, 0, 1, 0, 0, 0, -1)
getgenv().star2cframe = Vector3.new(1379.90063, 9256.41992, 1648.31067, -1, 0, 0, 0, 1, 0, 0, 0, -1)
getgenv().star3cframe = Vector3.new(-366.606049, 15681.8809, -9.95100594, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().watercframe = Vector3.new(367.011536, 244.93924, -444.983978, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().firecframe = Vector3.new(356.390045, 265.608368, -493.115021, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().icebergcframe = Vector3.new(1635.67114, 257.986633, 2247.5061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().volcanocframe = Vector3.new(-2046.67773, 710, -1879.83411, -0.945347548, 0, 0.326064825, 0, 1, 0, -0.326064825, 0, -0.945347548)
getgenv().tornadocframe = Vector3.new(-2301.5061, 1003.84021, 1069.53088, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().hellfirecframe = Vector3.new(-250.57515, 290.834503, 979.104309, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().greenacidcframe = Vector3.new(-278.696777, 280.548737, 991.980652, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().redacidcframe = Vector3.new(-278.582245, 280.503174, 1006.93542, 1, 0, 0, 0, 1, 0, 0, 0, 1)
getgenv().questgivercframe = Vector3.new(488.485077, 249.190094, 895.57373, -0.175409049, 1.69412022e-08, -0.98449564, 1.00183861e-07, 1, -6.41904807e-10, 0.98449564, -9.87431648e-08, -0.175409049)
getgenv().meditatespot1cframe = Vector3.new(-2534.34839, 5483.41309, -534.897949, -0.265825033, 0.0362924114, -0.963337898, -0.0183069967, 0.998920858, 0.0426846147, 0.963847399, 0.0289824624, -0.264873743)
getgenv().meditatespot2cframe = Vector3.new(-2566.1731, 5498.00977, -441.139313, -0.335961938, 0.0641777366, -0.939686537, 0.0197546426, 0.997936547, 0.061093241, 0.941668391, 0.00196183287, -0.336536527)
getgenv().meditatespot3cframe = Vector3.new(-2587.60791, 5528.68506, -504.724915, -0.335961938, 0.0641777366, -0.939686537, 0.0197546426, 0.997936547, 0.061093241, 0.941668391, 0.00196183287, -0.336536527)
getgenv().meditatespot4cframe = Vector3.new(-2547.21631, 5408.50928, -490.264435, -0.279112935, 0, -0.960258365, 0, 1, 0, 0.960258365, 0, -0.279112935)
getgenv().formulaforspeed = msvalue / 218
function teleport(cframetp)
    local Player = game.Players.LocalPlayer.Character.HumanoidRootPart
    Player.CFrame = CFrame.new(cframetp)
end

function crystaltp()
teleport(crystalcframe)
end
function rocktp()
    teleport(rockcframe)
end
function star1tp()
    teleport(star1cframe)
end
function star2tp()
    teleport(star2cframe)
end
function star3tp()
    teleport(star3cframe)
end

    function fiststrength()
    local args = {
    [1] = {
    [1] = "Add_FS_Request",
    [2] = fsta
    }
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end

    function bodytoughness()
    local args = {
    [1] = {
    [1] = "+BT1"
    }
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end

    function movementstrength()
    local args = {
    [1] = {
    [1] = "Add_MS_Request",
    [2] = 1
    }
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end

    function jumpforce()
    local args = {
    [1] = {
    [1] = "Add_JF_Request",
    [2] = 1
    }
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end

    function psychicpower()
    local args = {
    [1] = {
    [1] = ppv
    }
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end

    function fsfarm()
        spawn(function()
            while fs_toggle == true
            do
                fiststrength()
                wait()
            end
        end)
    end

    function btfarm()
        spawn(function()
            while bt_toggle == true
            do
                bodytoughness()
                wait()
            end
        end)
    end

    function msfarm()
        spawn(function()
            while ms_toggle == true
            do
                movementstrength()
                wait()
            end
        end)
    end

    function jfFarm()
        spawn(function()
            while jf_toggle == true
            do
                jumpforce()
                wait()
            end
        end)

    end

    function ppFarm()
        spawn(function()
            while pp_toggle == true
            do
                psychicpower()
                wait()
            end
        end)
    end

    function Autofarm()
        fsfarm()
        btfarm()
        msfarm()
        jfFarm()
        ppFarm()
    end


---Past here is all gui
-- MAIN
local Main = Window:NewTab("AutoFarm")
local MainSection = Main:NewSection("AutoFarms")
MainSection:NewButton("AutoFarm", "launchs the autofarms", function()
    Autofarm()
end)

MainSection:NewToggle("Fist Strength Farm", "Turns off and on the AutoFarm For Fist Strength", function(state)
    if state then
        fs_toggle = true
    else
        fs_toggle = false
    end
end)
MainSection:NewToggle("Body Toughness Farm", "Turns off and on the AutoFarm For Body Toughness ", function(state)
    if state then
        bt_toggle = true
    else
        bt_toggle = false
    end
end)
MainSection:NewToggle("Movement Farm", "Turns off and on the AutoFarm For Movement Speed ", function(state)
    if state then
        ms_toggle = true
    else
        ms_toggle = false
    end
end)
MainSection:NewToggle("Jump Force Farm", "Turns off and on the AutoFarm For Jump Force", function(state)
    if state then
        jf_toggle = true
    else
        jf_toggle = false
    end
end)
MainSection:NewToggle("Pyshic Farm", "Turns off and on the AutoFarm For Psychic Power", function(state)
    if state then
        pp_toggle = true
    else
        pp_toggle = false
    end
end)
MainSection:NewDropdown("Fist Location", "Sets your Fist Location MUST BE AT LOCATION", {"Normal","Rock", "Crystal", "Star 1", "Star 2", "Star 3"}, function(currentOption)
    if currentOption == "Rock" then
        fsta = 2
    elseif currentOption == "Crystal" then
        fsta = 3
    elseif currentOption == "Star 1" then
        fsta = 4
    elseif currentOption == "Star 2" then
        fsta = 5
    elseif currentOption == "Star 3" then
        fsta = 5
    else
        fsta = 1
    end
end)
MainSection:NewDropdown("Psychic Location", "Sets your Psychic location MUST BE AT LOCATION", {"normal","spot1(1m)", "spot2(1b)", "spot3(1t)", "spot4(1qa)"}, function(currentOption)
    if currentOption == "spot1(1m)" then
        ppv = "+PP3"
    elseif currentOption == "spot2(1b)" then
        ppv = "+PP4"
    elseif currentOption == "spot3(1t)" then
        ppv = "+PP5"
    elseif currentOption == "spot4(1qa)" then
        ppv = "+PP6"
        elseif currentOption == "normal" then
        ppv = "+PP2"
    end
end)

-- Teleports
local Teleports = Window:NewTab("Teleports")
local TeleportsSection = Teleports:NewSection("Training Spots")

TeleportsSection:NewButton("Quest Giver", "Teleports to the questgiver", function()
    teleport(questgivercframe)
end)

TeleportsSection:NewDropdown("Fist Locations Tp", "Teleports you to Fist locations", {"Rock", "Crystal", "Star 1", "Star 2", "Star 3"}, function(currentOption)
    if currentOption == "Rock" then
        rocktp()
    elseif currentOption == "Crystal" then
        crystaltp()
    elseif currentOption == "Star 1" then
        star1tp()
    elseif currentOption == "Star 2" then
        star2tp()
    elseif currentOption == "Star 3" then
        star3tp()
    end
end)
TeleportsSection:NewDropdown("Body Locations Tp", "Teleports you to BT locations", {"Water", "Fire", "IceBerg", "Tornado", "Volcano", "Hellfire", "Green acid", "Red acid"}, function(currentOption)
    if currentOption == "Water" then
        teleport(watercframe)
    elseif currentOption == "Fire" then
        teleport(firecframe)
    elseif currentOption == "IceBerg" then
        teleport(icebergcframe)
    elseif currentOption == "Tornado" then
        teleport(tornadocframe)
    elseif currentOption == "Volcano" then
       teleport(volcanocframe)
    elseif currentOption == "Hellfire" then
        teleport(hellfirecframe)
    elseif currentOption == "Green acid" then
        teleport(greenacidcframe)
    elseif currentOption == "Red acid" then
        teleport(redacidcframe)
    end
end)
TeleportsSection:NewDropdown("Psychic Locations Tp", "Teleports you to psychic locations", {"spot1(1m)", "spot2(1b)", "spot3(1t)", "spot4(1qa)"}, function(currentOption)
        if currentOption == "spot1(1m)" then
        teleport(meditatespot1cframe)
    elseif currentOption == "spot2(1b)" then
        teleport(meditatespot2cframe)
    elseif currentOption == "spot3(1t)" then
        teleport(meditatespot3cframe)
    elseif currentOption == "spot4(1qa)" then
        teleport(meditatespot4cframe)
    end
end)

-- Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Misc")


PlayerSection:NewButton("Respawn","This respawns your charecter", function()
    local args = {
        [1] = {
            [1] = "Respawn"
        }
    }
end)

PlayerSection:NewDropdown("Weights", "Selects your weights", {"Unequip", "100 LB", "1 TON", "10 TON", "100 TON"}, function(currentOption)
    if currentOption == "Unequip" then
        local args = {
            [1] = {
                [1] = "Weight",
                [2] = "Unequip"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    elseif currentOption == "100 LB" then
        local args = {
            [1] = {
                [1] = "Weight",
                [2] = "Weight1"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    elseif currentOption == "1 TON" then
        local args = {
            [1] = {
                [1] = "Weight",
                [2] = "Weight2"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    elseif currentOption == "10 TON" then
        local args = {
            [1] = {
                [1] = "Weight",
                [2] = "Weight3"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    elseif currentOption == "100 TON" then
        local args = {
            [1] = {
                [1] = "Weight",
                [2] = "Weight4"
            }
        }
        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end
end)

PlayerSection:NewSlider("Walkspeed", "Dont go past your max walk speed", 1000, 0, function(s)
    local args = {
        [1] = {
            [1] = "Setting",
            [2] = "SelectedMS",
            [3] = s
        }
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end)

Section:NewSlider("Jumpforce", "Changes your jump force", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    local args = {
        [1] = {
            [1] = "Setting",
            [2] = "SelectedJP",
            [3] = s
        }
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end)

Section:NewSlider("Flyspeed", "Sets your flyspeed", 1000, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    local args = {
        [1] = {
            [1] = "Setting",
            [2] = "SelectedFS",
            [3] = s
        }
    }
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end)

local PlayerSection = Player:NewSection("Stats")

PlayerSection:NewButton(fsvalue,"this number is your fiststrength", function()
    fsvalue = stats.FistStrength.value
    button:UpdateButton(fsvalue)
end)

PlayerSection:NewButton(btvalue,"this number is your body toughness", function()
    btvalue = stats.BodyToughness.value
    button:UpdateButton(btvalue)
end)

PlayerSection:NewButton(b,"this number is your ", function()
     b = stats..value
    button:UpdateButton()
end)

PlayerSection:NewButton(msvalue,"this number is your Movement speed", function()
    msvalue = stats.MovementSpeed.value
    button:UpdateButton(msvalue)
end)

PlayerSection:NewButton(jfvalue,"this number is your Jump Force", function()
jfvalue = stats.JumpForce.value
button:UpdateButton(jfvalue)
end)

PlayerSection:NewButton(ppvalue,"this number is your Psychic Power", function()
ppvalue = stats.PsychicPower.value
button:UpdateButton(ppvalue)
end)