require "Command"

local CommandTest = {}

function CommandTest:setUp()
    SLASH_COMMANDS = {}
end

function CommandTest:test_it_registers_the_command()
    lu.assertEquals(SLASH_COMMANDS, {})
    Command.register()
    lu.assertEquals(SLASH_COMMANDS, { ['pomodoro'] = Command.call() })
end

return CommandTest
