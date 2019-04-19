Pomodoro = {
    duration = 1500, -- Seconds = 25 minutes
    error_already_finished = "Error: Attempting to process finished Pomodoro.\nPlease report this at https://git.io/fjO3p",

    new = function()
        print_primary('Pomodoro started.')

        return {
            createdAt = os.time(),
            completedAt = nil
        }
    end,

    ping = function(pomodoro)
        if (nil ~= pomodoro.completedAt) then
            print_error(Pomodoro.error_already_finished)
            return
        end

        local time = os.time()
        local currentDuration = time - pomodoro.createdAt

        if (currentDuration < Pomodoro.duration) then
            return
        end
        pomodoro.completedAt = time
        print_success('Pomodoro finished.')

        return pomodoro
    end,

    stop = function(pomodoro)
        if nil == pomodoro then
            print_error(Pomodoro.error_already_finished)
            return
        end

        pomodoro = nil
        print_warning('Pomodoro stopped.')

        return pomodoro
    end,

    status = function(pomodoro)
        local currentDuration = os.time() - pomodoro.createdAt
        local minutes = os.date('%M', currentDuration)
        local seconds = os.date('%S', currentDuration)
        local message = string.format('Pomodoro duration: %sm %ss', minutes, seconds)

        print_info(message)
    end,

    currentDuration = function()

    end
}