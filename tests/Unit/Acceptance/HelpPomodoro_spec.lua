describe("Help Page:", function()
    -- See https://github.com/rdok/eso-pomodoro/issues/3
    local testCase

    setup(function()
        testCase = require 'TestCase'
    end)

    it("A player may request the command's help page", function()
        -- Given I am acting as a player
        local player = require('Player')

        -- When I request the help page
        player:callHelpPage()

        -- Then i should see in the chat window a line from the help page
        testCase:assertChatWindowContains('Usage:  pomodoro COMMAND')
    end)

end)
