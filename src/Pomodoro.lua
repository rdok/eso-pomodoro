Pomodoro = {
    new = function()
        pomodoro = {}
        pomodoro.startedAt = os.time()
        CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, 'Pomodoro started.')

        return pomodoro
    end
}

