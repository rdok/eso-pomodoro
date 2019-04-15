local TestCase = {}

lu = require 'luaunit'

function TestCase:requireDependencies()
    require "Event"
    require "EventManagerMock"
    require "ChatSystemMock"
    require "Pomodoro"
    require "Command"
end

function TestCase:assertMessageEmittedContains(text)
    actual = CHAT_SYSTEM:GetMessage()
    lu.assertEquals(type(actual), 'string')
    lu.assertStrContains(actual, text)
end

return TestCase
