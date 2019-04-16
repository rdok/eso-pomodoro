Command = {}

function Command:setUp()
    SLASH_COMMANDS['/pomodoro'] = Command.call
end

function Command:call(content)
    print('>>>>>>>>>>>>>>>>>>>>>>')
    CHAT_SYSTEM:AddMessage(content)

    return Command
end

Command.setUp()
