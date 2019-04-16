describe("Command", function()
    setup(function()
        require 'bootstrap'
    end)

    it("should auto register to the esoui commands", function()
        assert.are.same({ ['/pomodoro'] = Command.call }, SLASH_COMMANDS)
    end)

    it("may call the help command", function()
        assert.same(HelpCommand.new, Command.call("help"))
    end)
end)
