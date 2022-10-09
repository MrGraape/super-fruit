local args = {
    [1] = {
        [1] = "StatMultiplier",
        [2] = "MS"
    }
}
game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
--- ^ = what happens when u buy an upgrade multiplier
--- down is what happens when u respawn
local args = {
    [1] = {
        [1] = "Respawn"
    }
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

