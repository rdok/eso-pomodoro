CHAT_SYSTEM = {}

local message = ''

function CHAT_SYSTEM:AddMessage(text)
    self.message = text
end

function CHAT_SYSTEM:GetMessage()
    return self.message
end
