describe("Start pomodoro:", function()
    -- https://github.com/rdok/eso-pomodoro/issues/7

    it("a player may start a pomodoro", function()
        -- Given I am acting as a player
        require('Player')

        -- When I start a new pomodoro
        Player:callStartPomodoro()

        -- Then i should see in the chat window message about the new pomodoro
        assert.chat_window_contains('Pomodoro started.')
    end)

end)
