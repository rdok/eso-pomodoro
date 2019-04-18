Command = {
    register = function()
        SLASH_COMMANDS['/pomodoro'] = Command.call
    end,

    call = function(command)

        if ('start' == command) then
            return Pomodoro.new()
        end

        return HelpPage.print()
    end
}

Command.register()
