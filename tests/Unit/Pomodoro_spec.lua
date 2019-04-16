describe("Pomodoro", function()

    setup(function()
        require 'bootstrap'
    end)

    it("should have access to the podomoro command", function()
        assert.are.same(Command, Pomodoro.command())
    end)

end)
