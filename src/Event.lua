Event = {}

function Event:initialize(addonName)
    EVENT_MANAGER:RegisterForEvent(addonName, EVENT_ZONE_CHANGED, Event.dispatch)
    EVENT_MANAGER:RegisterForEvent(addonName, EVENT_LOOT_UPDATED, Event.dispatch)
end

function Event:dispatch()
    d(os.date("%d.%m.%Y %H:%M:%S"))
end

return Event

