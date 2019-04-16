describe("Pomodoro Unit tests", function()

    setup(function()
        require 'TestCase'
        --require 'Pomodoro'
    end)

    it("should have access to the podomoro command", function()
        assert.are.same(Command, Pomodoro.command())
    end)
end)
