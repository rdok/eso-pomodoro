CapsLocker = {}

function CapsLocker:initialize(addonName)
    EVENT_MANAGER:RegisterForEvent(addonName, EVENT_CAPS_LOCK_STATE_CHANGED, CapsLocker.caps)
end

function CapsLocker:caps()
    d("CAPS LOCK IS CRUISE CONTROL FOR COOL")
end

