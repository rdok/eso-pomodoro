-- Mock user. That is eso engine acting in behalf of the user.
local Player = {}

function Player:callHelpPage()
    HelpCommand.new()
end

return Player