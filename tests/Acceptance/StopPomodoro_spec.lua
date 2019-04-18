describe("Stop pomodoro:", function()

    it("a player may stop a pomodoro", function()
        -- Given I am acting as a player
        require('Player')

        -- And I have started a pomodoro
        Player.callStartPomodoro()

        -- When I stop the pomodoro
        Player.callStopPomodoro()

        -- Then i should see in the chat window message about the new pomodoro
        assert.chat_window_contains('Pomodoro stopped.')
    end)

end)
