repeat task.wait() until game:IsLoaded()

local fluentLoader = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))
local Fluent = fluentLoader()

local ScriptData = {
    [7018190066] = "0374691aefd44c855f38a154fb427d27",
    [6931042565] = "c4db58baa788dfaafe935f3329ea6ff2",
    [4777817887] = "5a90e9f345f6b58f4a1be04e72e2a631",
    [2440500124] = "03d5597c92f13d5e8bc4ff96e6bf6623",
    [6325068386] = "56196b25747602d5b620715bd790d9e0",
    [7436755782] = "3c218bca99e2c555fd29820f9a6ac330",
    [6504986360] = "ff3d59d11d4df358c094f003723167d6"
}

local CurrentGameID = game.GameId
local CurrentScriptID = ScriptData[CurrentGameID]

local apiLoader = loadstring(game:HttpGet("https://sdkAPI-public.luarmor.net/library.lua"))
local API = apiLoader()
makefolder("Nebula")
_G['script_key'] = script_key or _G['script_key']

local function checkKey(input_key)
    if not CurrentScriptID then
        Fluent:Notify({
            Title = "Unsupported Game",
            Content = "Nebula Hub does not support this game.",
            Duration = 5
        })
        return
    end

    API.script_id = CurrentScriptID
    local status = API.check_key(input_key or _G['script_key'])

    if status.code == "KEY_VALID" then
        script_key = input_key or _G['script_key']
        Fluent:Notify({
            Title = "Key Accepted",
            Content = status.message,
            Duration = 3
        })
        task.wait(1)
        API.load_script()
    else
        Fluent:Notify({
            Title = "Key Error",
            Content = status.message,
            Duration = 8
        })
    end
end

if not CurrentScriptID then
    task.spawn(function()
        task.wait(1)
        Fluent:Notify({
            Title = "Unsupported Game",
            Content = "Nebula Hub does not currently support this game.",
            Duration = 5
        })
    end)
else
    task.spawn(function()
        Fluent:Notify({
            Title = "Key System",
            Content = "Checking global loaded key...",
            Duration = 5
        })
        task.wait(1)
        if script_key then
            checkKey()
        end
    end)
end
