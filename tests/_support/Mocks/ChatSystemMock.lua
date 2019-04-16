CHAT_SYSTEM = {}

local message = ''

function CHAT_SYSTEM:AddMessage(text)
    self.message = text
end

function CHAT_SYSTEM:GetMessage()
    return self.message
end

DT_LOW = 0
DL_BACKGROUND = 0
DL_CONTROLS = 1
DL_COUNT = 4
DL_MAX_VALUE = 4
DL_MIN_VALUE = 0
DL_OVERLAY = 3
DL_TEXT = 2
DT_HIGH = 2
DT_LOW = 0
DT_MAX_VALUE = 999
DT_MEDIUM = 1
DT_MIN_VALUE = 0
DT_PARENT = 999

--require "debugutils"
