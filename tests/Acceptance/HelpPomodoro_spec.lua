describe("Help Page:", function()
    -- https://github.com/rdok/eso-pomodoro/issues/3

    it("A player may request the command's help page", function()
        -- Given I am acting as a player
        require('Player')

        -- When I request the help page
        Player:callHelpPage()

        -- Then i should see in the chat window a line from the help page
        assert.chat_window_contains('Usage:  pomodoro COMMAND')
    end)

end)
