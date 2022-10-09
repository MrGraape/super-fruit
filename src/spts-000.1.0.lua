---
--- Created by Mr_Graape.
--- DateTime: 10/2/2022 4:23 PM
---
--- libs

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/MrGraape/superfruit-script/main/superfruit%20script/libs/gui_lib.lua"))()
local Window = Library.CreateLib("Superfruit", "Ocean")
--- all vars
getgenv().fs_toggle = false
getgenv().bt_toggle = false
getgenv().ms_toggle = false
getgenv().jf_toggle = false
getgenv().pp_toggle = false
getgenv().token = game:GetService("Players").MrFruit303.PrivateStats.Token.value
getgenv().fsvalue = game:GetService("Players").MrFruit303.PrivateStats.FistStrength.value
getgenv().btvalue = game:GetService("Players").MrFruit303.PrivateStats.BodyToughness.value
getgenv().msvalue = game:GetService("Players").MrFruit303.PrivateStats.MovementSpeed.value
getgenv().jfvalue = game:GetService("Players").MrFruit303.PrivateStats.JumpForce.value
getgenv().ppvalue = game:GetService("Players").MrFruit303.PrivateStats.PsychicPower.value
getgenv().fsta = 1
Player = game.Players.LocalPlayer.Character.HumanoidRootPart
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
    [1] = "+PP2"
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
MainSection:NewButton("prints fsta", "fsta", function()
    print(fsta)
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
MainSection:NewDropdown("Fist Location", "Sets your Fist Farm Location", {"Normal","Rock", "Crystal", "Star 1", "Star 2", "Star 3"}, function(currentOption)
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

-- Teleports
local Teleports = Window:NewTab("Teleports")
local TeleportsSection = Teleports:NewSection("Training Spots")

TeleportsSection:NewButton("resets dropdowns", "it sets the dropdown selection to 'nil'", function()
    currentOption = nil
end)

TeleportsSection:NewDropdown("Fist Location Tp", "Teleports you to Fist locations", {"Rock", "Crystal", "Star 1", "Star 2", "Star 3"}, function(currentOption)
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
TeleportsSection:NewDropdown("Body Location Tp", "Teleports you to BT locations", {"Water", "Fire", "IceBerg", "Tornado", "Volcano", "Hellfire", "Green acid", "Red acid"}, function(currentOption)
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
