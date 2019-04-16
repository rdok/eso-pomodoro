local EsoLuaLoader = {}

function EsoLuaLoader:load()
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

return EsoLuaLoader
