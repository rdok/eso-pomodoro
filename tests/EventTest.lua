local EventTest = {}
local event = require "Event"
require "EventManagerMock"

function EventTest:testItRegistersZoneChangedEvent()

    EVENT_ZONE_CHANGED = 'uuid'

    event:initialize("AddonNameValue")

    expected = {}

    table.insert(expected, {
        ["addonName"] = 'AddonNameValue',
        ["event"] = EVENT_ZONE_CHANGED,
        ["callback"] = event.dispatch
    })
    table.insert(expected, {
        ["addonName"] = 'AddonNameValue',
        ["event"] = EVENT_LOOT_UPDATED,
        ["callback"] = event.dispatch
    })

    lu.assertItemsEquals(EVENT_MANAGER.GetRegisteredEvents(), expected)
end

return EventTest
