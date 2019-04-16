describe("Listener", function()
    local listener = require 'Listener'

    setup(function()
        require 'bootstrap'
        expected = {
            ["addonName"] = 'AddonName',
            ["callback"] = listener.dispatch
        }
    end)

    it("should listen to the event of avatar changing zone", function()
        listener:registerEvents('AddonName')
        events = EVENT_MANAGER.GetRegisteredEvents()
        expected['event'] = EVENT_ZONE_CHANGED
        assert.are.same(expected, events[1])
    end)

    it("should listen to the event of avatar looting", function()
        listener:registerEvents('AddonName')
        events = EVENT_MANAGER.GetRegisteredEvents()
        expected["event"] = EVENT_LOOT_UPDATED
        assert.are.same(expected, events[2])
    end)
end)
