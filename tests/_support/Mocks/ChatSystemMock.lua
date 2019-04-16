CHAT_SYSTEM = {}

local message = ''

function CHAT_SYSTEM:AddMessage(text)
    CHAT_SYSTEM.message = text
end

function CHAT_SYSTEM:GetMessage()
    return CHAT_SYSTEM.message
end
