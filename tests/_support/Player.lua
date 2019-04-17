-- Mock player. That is, the eso engine acting in behalf of the user.
local Player = {}

function Player:callHelpPage()
    HelpCommand.new()
end

function Player:callNewPomodoro()
    NewPomodoroCommand.new()
end

return Player