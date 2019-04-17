local TestCase = {}

local esouiLoader = require 'EsoLuaLoader'
esouiLoader:initializeGlobals()
esouiLoader:requireLuaFiles()

function TestCase:assertChatWindowContains(value)
    error = string.format("Unable to find '%s' in chat window", value)

    assert(CHAT_SYSTEM:contains(value), error)
end

return TestCase
