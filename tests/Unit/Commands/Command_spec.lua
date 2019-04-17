describe("Command", function()
    setup(function()
        require 'TestCase'
    end)

    it("should auto register to the esoui commands", function()
        assert.are.same({ ['/pomodoro'] = Command.call }, SLASH_COMMANDS)
    end)

    it("may call the help command", function()
        spy.on(HelpCommand, "new")
        Command.call()
        assert.spy(HelpCommand.new).was_called()
    end)

    it("may call the help command with 'help'", function()
        spy.on(HelpCommand, "new")
        Command.call('help')
        assert.spy(HelpCommand.new).was_called()
    end)

    it("may call the start command with 'start'", function()
        spy.on(StartPomodoroCommand, "new")
        Command.call('start')
        assert.spy(StartPomodoroCommand.new).was_called()
    end)
end)
