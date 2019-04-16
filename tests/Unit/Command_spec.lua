describe("Command", function()
    setup(function()
        require 'bootstrap'
    end)

    it("should auto register to the esoui commands", function()
        assert.are.same({ ['/pomodoro'] = Command.call }, SLASH_COMMANDS)
    end)

    it("should add the help page message to the chat system", function()
        spy.on(CHAT_SYSTEM, "AddMessage")
        Command.call("help")
        assert.spy(_G.CHAT_SYSTEM.AddMessage).was_called_with("help")
    end)
end)
