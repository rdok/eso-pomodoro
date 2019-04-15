Command = {}

function Command:register()
    SLASH_COMMANDS['pomodoro'] = Command.call()
end

function Command:call()
    d('bla bla Usage: pomodoro adfsd')
end
