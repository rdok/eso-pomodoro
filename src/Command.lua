Command = {

    register = function()
        SLASH_COMMANDS['/pomodoro'] = Command.call
    end,

    call = function(command)

        if ('start' == command) then
            Command.pomodoro = Pomodoro.new()
            return
        end

        if ('stop' == command) then
            return Command.stopCommand()
        end

        return HelpPage.print()
    end,

    stopCommand = function()
        local pomodoro = Command.pomodoro

        if (nil == pomodoro) then
            error_chat('No pomodoro is running.')
            return
        end

        return Command.pomodoro:stop()
    end
}

Command.register()
