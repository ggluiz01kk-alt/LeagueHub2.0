local module = {}

function module.Load(page)

    function module:Crash()
        for i = 1, 50 do
            local p = Instance.new("Part")
            p.Size = Vector3.new(3,3,3)
            p.Anchored = false
            p.Position = Vector3.new(0, i * 5, 0)
            p.Parent = workspace
        end
    end

    function module:SpamChat(txt)
        for i = 1, 20 do
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(txt, "All")
            task.wait(0.1)
        end
    end

end

return module
