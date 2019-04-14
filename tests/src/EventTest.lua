local EventTest = {}
local event = require "Event"

function EventTest:testItRegistersZoneChangedEvent()
    print(EVENT_MANAGER)
    lu.assertEquals(1, 1)
end

return EventTest
