describe("Command", function()
    setup(function()
        require 'bootstrap'
    end)

    it("should auto register to the esoui commands", function()
        assert.are.same({ ['/pomodoro'] = Command.call }, SLASH_COMMANDS)
    end)

    it("should have access to help command without a second command", function()
        spy.on(HelpCommand, "new")
        Command.call()
        assert.spy(HelpCommand.new).was_called()
    end)

    it("should have access to help command when using 'help' as second command", function()
        spy.on(HelpCommand, "new")
        Command.call('help')
        assert.spy(HelpCommand.new).was_called()
    end)

end)
