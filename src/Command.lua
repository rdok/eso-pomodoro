Command = {
    pomodoro = nil,
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

        if ('status' == command) then
            return Command.statusCommand()
        end

        return HelpPage.print()
    end,

    stopCommand = function()
        local pomodoro = Command.pomodoro

        if (nil ~= pomodoro) then
            Command.pomodoro = Pomodoro.stop(pomodoro)
            return
        end

        print_error('No pomodoro is running.')
    end,

    statusCommand = function()
        local pomodoro = Command.pomodoro

        if (nil ~= pomodoro) then
            return Pomodoro.status(pomodoro)
        end

        print_error('No pomodoro is running.')
    end,
}

Command.register()
