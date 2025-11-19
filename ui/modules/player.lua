local module = {}

function module.Load(page)

    function module:SetWalk(speed)
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChildWhichIsA("Humanoid") then
            char:FindFirstChildWhichIsA("Humanoid").WalkSpeed = speed
        end
    end

    function module:SetJump(power)
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChildWhichIsA("Humanoid") then
            char:FindFirstChildWhichIsA("Humanoid").JumpPower = power
        end
    end

end

return module
