describe("NewPomodoroCommand", function()

    require 'TestCase'

    it("should print message about the new pomodoro", function()
        spy.on(CHAT_SYSTEM, "AddMessage")
        NewPomodoroCommand.new()
        assert.spy(CHAT_SYSTEM.AddMessage)
              .was_called_with(CHAT_SYSTEM, 'Pomodoro started.')
    end)

    it("should store the time the pomodoro started", function()
        pending("should store the time the pomodoro started")
    end)
end)
