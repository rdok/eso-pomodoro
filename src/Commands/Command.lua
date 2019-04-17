Command = {}

function Command:new()
    SLASH_COMMANDS['/pomodoro'] = Command.call
end

function Command.call(command)

    if ('start' == command) then
        return StartPomodoroCommand.new()
    end

    return HelpCommand.new()
end

Command.new()
