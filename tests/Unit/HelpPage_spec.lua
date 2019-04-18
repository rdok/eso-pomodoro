describe("HelpPage", function()

    local helpMessages = {
        ['usage'] = 'Usage:  pomodoro COMMAND',
        ['description'] = 'A break time reminder for players, based on the pomodoro technique.',
        ['helpPomodoro'] = '> help   Display help information.',
        ['startPomodoro'] = '> start   Start a Pomodoro.',
        ['stopPomodoro'] = '> stop   Stop the current Pomodoro.',
    }

    it("should print the help page to the chat system upon initialization", function()
        spy.on(CHAT_SYSTEM, "AddMessage")
        HelpPage.print()
        for section, description in pairs(helpMessages) do
            assert.spy(CHAT_SYSTEM.AddMessage).was_called_with(CHAT_SYSTEM, description)
        end

    end)
end)