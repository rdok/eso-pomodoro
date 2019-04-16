local EsoLuaLoader = {}

function EsoLuaLoader:requireLuaFiles()
    -- eso loads/requires the lua files internally. Let's replicate this behaviour
    -- to avoid any mismatched require between the tests and src

    local file = assert(io.open("Pomodoro.txt", "rb"))
    for line in file:lines() do
        local isLua = string.match(line, "^%a")

        if (nil ~= isLua) then
            lua = string.gsub(line, ".lua", "")
            -- Prefix
            lua = string.gsub(lua, "^.+/", "")
            -- Control char, I assume \n\r
            lua = string.gsub(lua, "%c", "")

            require(lua)
        end
    end
    io.close()
end

function EsoLuaLoader:initializeGlobals()
    -- I haven't a way yet to load the sdk with the esoui globals
    -- The current solution is to download them from
    -- https://esodata.uesp.net/current/index.html
    -- and load them here by manually.
    -- If the need is great, I might modify the script that downloads these
    -- to generate a .lua file with them, and load it here
    EVENT_ZONE_CHANGED = 131246

    SLASH_COMMANDS = {}

    require "EventManagerMock"
    require "ChatSystemMock"
end

return EsoLuaLoader
