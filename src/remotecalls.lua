local args = {
    [1] = {
        [1] = "StatMultiplier",
        [2] = "MS"
    }
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
--- ^ = what happens when u buy an upgrade multiplier
local args = {
    [1] = {
        [1] = "Respawn"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
--- ^ is is what happens when u respawn
local args = {
    [1] = {
        [1] = "Setting",
        [2] = "SelectedMS",
        [3] = 11
    }
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
--- ^ is what happens when selecting movement speed
local args = {
    [1] = {
        [1] = "Setting",
        [2] = "SelectedJP",
        [3] = 99
    }
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
--- ^ is what happens when selecting jump force
local args = {
    [1] = {
        [1] = "Setting",
        [2] = "SelectedFS",
        [3] = 11
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
--- ^ is what happens when selecting fly speed

