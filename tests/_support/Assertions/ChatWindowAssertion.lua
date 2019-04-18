local assert = require('luassert.assert')
local say = require("say")

-- Consider instance of table a table that has the same functions key names
local function chat_window_contains(state, arguments)
    if #arguments ~= 1 or not type(arguments[1]) == "string" then
        return false
    end

    return CHAT_SYSTEM:contains(arguments[1])
end

say:set("assertion.chat_window_contains.true", "\n\nExpected text in chat window: %s. \n\nActual: %s")
say:set("assertion.chat_window_contains.false", "\n\nUnexpected text in chat window: %s. \n\nActual: %s")
assert:register("assertion", "chat_window_contains", chat_window_contains, "assertion.chat_window_contains.true", "assertion.chat_window_contains.false")
