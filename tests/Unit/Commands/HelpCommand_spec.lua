describe("HelpCommand", function()
    local helpMessages = {
        ['usage'] = 'Usage:  pomodoro COMMAND',
        ['description'] = 'A break time reminder for players, based on the pomodoro technique.',
        ['helpPomodoro'] = ' help   Display help information.',
        ['startPomodoro'] = ' start   Start a Pomodoro.',
        ['stopPomodoro'] = ' stop   Stop the current Pomodoro.',
        ['restartPomodoro'] = ' restart   Restart current Pomodoro.',
        ['pausePomodoro'] = ' pause   Pause the current Pomodoro.',
        ['resumePomodoro'] = ' resume   Resume the current Pomodoro.',
    }
    setup(function()
        require 'bootstrap'
        spy.on(CHAT_SYSTEM, "AddMessage")
    end)

    it("should print the help page to the chat system", function()
        HelpCommand.new()
        assert.spy(CHAT_SYSTEM.AddMessage).was_called_with(helpMessages['usage'])
        assert.spy(CHAT_SYSTEM.AddMessage).was_called_with(helpMessages['description'])
        assert.spy(CHAT_SYSTEM.AddMessage).was_called_with(helpMessages['helpPomodoro'])
        assert.spy(CHAT_SYSTEM.AddMessage).was_called_with(helpMessages['startPomodoro'])
        assert.spy(CHAT_SYSTEM.AddMessage).was_called_with(helpMessages['stopPomodoro'])
        assert.spy(CHAT_SYSTEM.AddMessage).was_called_with(helpMessages['restartPomodoro'])
        assert.spy(CHAT_SYSTEM.AddMessage).was_called_with(helpMessages['pausePomodoro'])
        assert.spy(CHAT_SYSTEM.AddMessage).was_called_with(helpMessages['resumePomodoro'])
    end)
end)
