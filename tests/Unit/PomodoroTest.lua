local PomodoroTest = {}

function PomodoroTest:test_it_has_access_to_the_podomoro_command()
    lu.assertItemsEquals(Command, Pomodoro.command())
end

return PomodoroTest
