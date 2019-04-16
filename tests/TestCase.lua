local TestCase = {}
local esoLuaLoader = require 'EsoLuaLoader'

function TestCase:setup()
    SLASH_COMMANDS = {}
    require "EventManagerMock"
    require "ChatSystemMock"

    esoLuaLoader:load()
end

function TestCase:assertMessageEmittedContains(text)
    actual = CHAT_SYSTEM:GetMessage()
    lu.assertEquals(type(actual), 'string')
    lu.assertStrContains(actual, text)
end

TestCase:setup()

return TestCase
