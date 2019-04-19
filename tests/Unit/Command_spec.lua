describe("Command", function()

    after_each(function()
        Command.pomodoro = null
    end)

    it("should auto register to the esoui commands", function()
        assert.are.same({ ['/pomodoro'] = Command.call }, SLASH_COMMANDS)
    end)

    it("may initialize the help page", function()
        spy.on(HelpPage, "print")
        Command.call()
        assert.spy(HelpPage.print).was_called()
    end)

    it("may initialize the help page with 'help' argument", function()
        spy.on(HelpPage, "print")
        Command.call('help')
        assert.spy(HelpPage.print).was_called()
    end)

    it("may start pomodoro  with 'start' argument", function()
        spy.on(Pomodoro, "new")
        Command.call('start')
        assert.stub(Pomodoro.new).was_called()
    end)

    it("may stop a pomodoro  with 'stop' argument", function()
        spy.on(CHAT_SYSTEM, "AddMessage")
        spy.on(Pomodoro, "stop")
        Command.call('start')
        Command.call('stop')

        message = TextFormatter.warning('Pomodoro stopped.')
        assert.spy(CHAT_SYSTEM.AddMessage)
              .was_called_with(CHAT_SYSTEM, message)

        message = TextFormatter.error('No pomodoro is running.')
        assert.spy(CHAT_SYSTEM.AddMessage)
              .was_not_called_with(CHAT_SYSTEM, message)
    end)

    it("should error when attempting to stop non-existent pomodoro.", function()
        spy.on(CHAT_SYSTEM, "AddMessage")
        Command.call('stop')

        message = TextFormatter.error('No pomodoro is running.')
        assert.spy(CHAT_SYSTEM.AddMessage)
              .was_called_with(CHAT_SYSTEM, message)

        message = TextFormatter.warning('Pomodoro stopped.')
        assert.spy(CHAT_SYSTEM.AddMessage)
              .was_not_called_with(CHAT_SYSTEM, message)
    end)
end)
