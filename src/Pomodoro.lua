Pomodoro = {
    duration = 1500, -- Seconds = 25 minutes
    new = function()
        local pomodoro = Pomodoro
        pomodoro.createdAt = os.time()
        pomodoro.completedAt = nil

        CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, 'Pomodoro started.')

        return pomodoro
    end,

    ping = function(self)
        if (self.completedAt ~= nil) then
            error("Error: Attempting to re-check finished Pomodoro. \nPlease report this at https://git.io/fjO3p")
        end

        local time = os.time()
        local currentDuration = time - self.createdAt

        if (currentDuration >= Pomodoro.duration) then
            self.completedAt = time
            CHAT_SYSTEM.AddMessage(CHAT_SYSTEM, 'Pomodoro finished.')
        end

        return pomodoro
    end,
}