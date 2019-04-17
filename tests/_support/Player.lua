-- Mock player. That is, the eso engine acting in behalf of the user.
local Player = {}

function Player:callHelpPage()
    Command.call()
end

function Player:callStartPomodoro()
    Command.call('start')
end

return Player