require "Command"

local CommandTest = {}

function CommandTest:test_it_auto_registers_the_pomodoro_command()
    lu.assertItemsEquals(SLASH_COMMANDS, { ['/pomodoro'] = Command.call() })
    testCase.assertItemsExact(SLASH_COMMANDS, { ['/pomodoro'] = Command.call() })
end

return CommandTest
