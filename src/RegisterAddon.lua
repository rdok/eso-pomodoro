function Pomodoro:addOnLoaded(addonName)
    if Pomodoro.name == addonName then
        Pomodoro:Initialize()
    end
end

EVENT_MANAGER:RegisterForEvent(Pomodoro.name, EVENT_ADD_ON_LOADED, Pomodoro.addOnLoaded)
