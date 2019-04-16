Command = {}

function Command:new()
    SLASH_COMMANDS['/pomodoro'] = Command.call
end

function Command.call(content)
    return HelpCommand.new
end

Command.new()
