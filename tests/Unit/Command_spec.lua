describe("Command", function()

    it("should auto register to the esoui commands", function()
        assert.are.same({ ['/pomodoro'] = Command.call }, SLASH_COMMANDS)
    end)

    it("may initialize the help page", function()
        spy.on(HelpPage, "new")
        Command.call()
        assert.spy(HelpPage.new).was_called()
    end)

    it("may initialize the help page with 'help' argument", function()
        spy.on(HelpPage, "new")
        Command.call('help')
        assert.spy(HelpPage.new).was_called()
    end)

    it("may initialize a new pomodoro  with 'start' argument", function()
        spy.on(Pomodoro, "new")
        Command.call('start')
        assert.spy(Pomodoro.new).was_called()
    end)
end)
