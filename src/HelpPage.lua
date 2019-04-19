HelpPage = {
    print = function()
        -- Not using loop due to lua not guarantying any iteration order
        -- TODO: find package offering this functionality when this table becomes
        -- hard to maintain
        primary('Usage:  pomodoro COMMAND')
        info('A break time reminder for players, based on the pomodoro technique.')
        info('> help   Display help information.')
        info('> start   Start a Pomodoro.')
        info('> stop   Stop the current Pomodoro.')
    end,
}

