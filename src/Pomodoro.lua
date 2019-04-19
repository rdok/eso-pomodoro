Pomodoro = {

    duration = 1500, -- Seconds = 25 minutes

    new = function()
        pomodoro = clone(Pomodoro)

        pomodoro.createdAt = os.time()
        pomodoro.completedAt = nil

        CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, TextFormatter.primary('Pomodoro started.'))

        return pomodoro
    end,

    ping = function(self)
        if (self.completedAt ~= nil) then
            message = "Error: Attempting to re-check finished Pomodoro. \nPlease report this at https://git.io/fjO3p"
            message = TextFormatter.error(message)
            CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, message)
        end

        local time = os.time()
        local currentDuration = time - self.createdAt

        if (currentDuration >= Pomodoro.duration) then
            self.completedAt = time
            message = TextFormatter.success('Pomodoro finished.')
            CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, message)
        end

        return pomodoro
    end,

    stop = function(self)
        message = TextFormatter.warning('Pomodoro stopped.')
        CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, message)
    end,
}