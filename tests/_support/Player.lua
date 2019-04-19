-- Mock player. That is, the eso engine acting in behalf of the user.
Player = {
    execHelpCommand = function()
        Command.call()
    end,

    execStartCommand = function()
        Command.call('start')
    end,

    execStopCmd = function()
        Command.call('stop')
    end,
}
