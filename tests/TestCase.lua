local TestCase = {}

lu = require 'luaunit'

function TestCase:requireDependencies()
    SLASH_COMMANDS = {}
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

-- Handles up to two level deep
function TestCase:assertItemsExact(table1, table2)
    for key1, value1 in pairs(table1) do
        for key2, value2 in pairs(table2) do
            lu.assertEquals(table1[], 'Failed asserting tables are exact match.')
        end
    end

    lu.assertIsTrue(false, 'Failed asserting tables are exact match.')
end

return TestCase
