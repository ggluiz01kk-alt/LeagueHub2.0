local module = {}

function module.Load(page)

    function module:Enable()
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr ~= game.Players.LocalPlayer and plr.Character then
                if not plr.Character:FindFirstChild("LeagueESP") then
                    local highlight = Instance.new("Highlight")
                    highlight.Name = "LeagueESP"
                    highlight.FillColor = Color3.fromRGB(255, 0, 0)
                    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                    highlight.Parent = plr.Character
                end
            end
        end
    end

    function module:Disable()
        for _, plr in pairs(game.Players:GetPlayers()) do
            if plr.Character and plr.Character:FindFirstChild("LeagueESP") then
                plr.Character.LeagueESP:Destroy()
            end
        end
    end

end

return module
