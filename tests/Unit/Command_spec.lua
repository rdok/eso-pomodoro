describe("Command", function()

    setup(function()
        require 'bootstrap'
    end)

    it("should auto register to the esoui commands", function()
        assert.are.same({ ['/pomodoro'] = Command.call }, SLASH_COMMANDS)
    end)

end)
