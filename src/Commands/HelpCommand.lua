HelpCommand = {}

local helpMessages = {
    ['usage'] = 'Usage:  pomodoro COMMAND',
    ['description'] = 'A break time reminder for players, based on the pomodoro technique.',
    ['helpPomodoro'] = '> help   Display help information.',
    ['startPomodoro'] = '> start   Start a Pomodoro.',
    ['stopPomodoro'] = '> stop   Stop the current Pomodoro.',
}

function HelpCommand.new()
    -- Not using loop due to lua not guarantying any iteration order
    -- TODO: find package offering this functionality when this table becomes
    -- hard to maintain
    CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, helpMessages['usage'])
    CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, helpMessages['description'])
    CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, helpMessages['helpPomodoro'])
    CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, helpMessages['startPomodoro'])
    CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, helpMessages['stopPomodoro'])
    CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, helpMessages['restartPomodoro'])
    CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, helpMessages['pausePomodoro'])
    CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, helpMessages['resumePomodoro'])
end

return HelpCommand

