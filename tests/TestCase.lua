local TestCase = {}

local esouiLoader = require 'EsoLuaLoader'
esouiLoader:initializeGlobals()
esouiLoader:requireLuaFiles()

function TestCase:assertChatWindowContains(value)
    assert(CHAT_SYSTEM:contains(value), 'Error message')
end

return TestCase
