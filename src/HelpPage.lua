HelpPage = {
    print = function()
        -- Not using loop due to lua not guarantying any iteration order
        -- TODO: find package offering this functionality when this table becomes
        -- hard to maintain
        CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, 'Usage:  pomodoro COMMAND')
        CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, 'A break time reminder for players, based on the pomodoro technique.')
        CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, '> help   Display help information.')
        CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, '> start   Start a Pomodoro.')
        CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, '> stop   Stop the current Pomodoro.')
    end
}

