describe("Pomodoro", function()

    it("should print message about the new pomodoro upon initialization", function()
        spy.on(CHAT_SYSTEM, "AddMessage")
        Pomodoro.new()
        assert.spy(CHAT_SYSTEM.AddMessage)
              .was_called_with(CHAT_SYSTEM, 'Pomodoro started.')
    end)

    it("should store the time the pomodoro started", function()
        local pomodoro = Pomodoro:new()
        assert.is_valid_time(pomodoro.createdAt)
    end)

    it("should print message when pomodoro is completed.", function()
        local pomodoro = Pomodoro:new()
        pomodoro.createdAt = os.time() - 1500

        spy.on(CHAT_SYSTEM, "AddMessage")
        pomodoro:ping()
        assert.spy(CHAT_SYSTEM.AddMessage)
              .was_called_with(CHAT_SYSTEM, 'Pomodoro finished.')
    end)

    it("should not print completion message if pomodoro hasn't finished.", function()
        local pomodoro = Pomodoro:new()
        pomodoro.createdAt = os.time() - 1499

        spy.on(CHAT_SYSTEM, "AddMessage")
        pomodoro:ping()
        assert.spy(CHAT_SYSTEM.AddMessage).was.not_called()
    end)

    it("should error when pomodoro has already been completed", function()
        local pomodoro = Pomodoro:new()
        pomodoro.completedAt = os.time()

        assert.has_error(function()
            pomodoro:ping()
        end, "Error: Attempting to re-check finished Pomodoro. \nPlease report this at https://git.io/fjO3p")
    end)
end)
