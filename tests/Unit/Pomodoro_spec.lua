describe("Pomodoro", function()

    it("should print message about the new pomodoro upon initialization", function()
        spy.on(CHAT_SYSTEM, "AddMessage")
        Pomodoro.new()
        assert.spy(CHAT_SYSTEM.AddMessage)
              .was_called_with(CHAT_SYSTEM, 'Pomodoro started.')
    end)

    it("should store the time the pomodoro started", function()
        local pomodoro = Pomodoro.new()
        assert.is_valid_time(pomodoro.startedAt)
    end)

    --it("should error if pomodoro hasn't started", function()
    --    pending("should error if pomodoro hasn't started")
    --end)
end)
