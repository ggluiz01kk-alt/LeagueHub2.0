local module = {}

function module.CreateMain(title, callback)
    local library = {}
    
    function library:CreatePage(name)
        return { Name = name }
    end

    callback(library)
end

return module
