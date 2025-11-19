
local config = loadstring(game:HttpGet("https://raw.githubusercontent.com/ggluiz01kk-alt/LeagueHub2.0/main/config.lua"))()
local loader = loadstring(game:HttpGet("https://raw.githubusercontent.com/ggluiz01kk-alt/LeagueHub2.0/main/ui/loader.lua"))()
local window = loadstring(game:HttpGet("https://raw.githubusercontent.com/ggluiz01kk-alt/LeagueHub2.0/main/ui/window.lua"))()


local playerModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/ggluiz01kk-alt/LeagueHub2.0/main/modules/player.lua"))()
local trollModule  = loadstring(game:HttpGet("https://raw.githubusercontent.com/ggluiz01kk-alt/LeagueHub2.0/main/modules/troll.lua"))()
local espModule    = loadstring(game:HttpGet("https://raw.githubusercontent.com/ggluiz01kk-alt/LeagueHub2.0/main/modules/esp.lua"))()


loader.Start("League Hub 2.0")


window.CreateMain("League Hub 2.0", function(UI)

    local page1 = UI:CreatePage("Player")
    local page2 = UI:CreatePage("Troll")
    local page3 = UI:CreatePage("ESP")

    playerModule.Load(page1)
    trollModule.Load(page2)
    espModule.Load(page3)

end)


loader.Finish()
