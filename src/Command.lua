Command = {}

function Command:register()
    SLASH_COMMANDS['pomodoro'] = Command.call()
end

function Command:call()
end
