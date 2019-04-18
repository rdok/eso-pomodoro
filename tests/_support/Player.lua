-- Mock player. That is, the eso engine acting in behalf of the user.
Player = {
    callHelpPage = function()
        Command.call()
    end,

    callStartPomodoro = function()
        Command.call('start')
    end,

    callStopPomodoro = function()
        Command.call('start')
    end,
}
