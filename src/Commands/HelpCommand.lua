HelpCommand = {}

local helpMessages = {
    ['usage'] = 'Usage:  pomodoro COMMAND',
    ['description'] = 'A break time reminder for players, based on the pomodoro technique.',
    ['helpPomodoro'] = ' help   Display help information.',
    ['startPomodoro'] = ' start   Start a Pomodoro.',
    ['stopPomodoro'] = ' stop   Stop the current Pomodoro.',
    ['restartPomodoro'] = ' restart   Restart current Pomodoro.',
    ['pausePomodoro'] = ' pause   Pause the current Pomodoro.',
    ['resumePomodoro'] = ' resume   Resume the current Pomodoro.',
}

function HelpCommand.new()
    CHAT_SYSTEM.AddMessage(helpMessages['usage'])
    CHAT_SYSTEM.AddMessage(helpMessages['description'])
    CHAT_SYSTEM.AddMessage(helpMessages['helpPomodoro'])
    CHAT_SYSTEM.AddMessage(helpMessages['startPomodoro'])
    CHAT_SYSTEM.AddMessage(helpMessages['stopPomodoro'])
    CHAT_SYSTEM.AddMessage(helpMessages['restartPomodoro'])
    CHAT_SYSTEM.AddMessage(helpMessages['pausePomodoro'])
    CHAT_SYSTEM.AddMessage(helpMessages['resumePomodoro'])
end

return HelpCommand

