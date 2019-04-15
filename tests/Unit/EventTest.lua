local EventTest = {}

function EventTest:setUp()
    EVENT_ZONE_CHANGED = 'uuid'
    Event:initialize("AddonNameValue")
    events = EVENT_MANAGER.GetRegisteredEvents()
    expected = {
        ["addonName"] = 'AddonNameValue',
        ["callback"] = Event.dispatch
    }
end

function EventTest:test_it_registers_the_event_for_the_avatar_changing_zone()
    expected["event"] = EVENT_ZONE_CHANGED
    lu.assertItemsEquals(events[1], expected)
end

function EventTest:test_it_registers_the_event_for_detecting_avatar_looting()
    expected["event"] = EVENT_LOOT_UPDATED
    lu.assertItemsEquals(events[2], expected)
end

return EventTest
