Command = {}

function Command:setUp()
    SLASH_COMMANDS['pomodoro'] = Command.call()
end

function Command:call()
    --d('bla bla Usage: pomodoro adfsd')

    return Command
end

Command.setUp()
