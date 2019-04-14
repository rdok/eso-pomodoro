require "CommandHelp"

local CommandHelpTest = {}

function CommandHelpTest:setUp()
    --EVENT_ZONE_CHANGED = 'uuid'
    --Event:initialize("AddonNameValue")
    --events = EVENT_MANAGER.GetRegisteredEvents()
    --expected = {
    --    ["addonName"] = 'AddonNameValue',
    --    ["callback"] = Event.dispatch
    --}
end

function EventTest:the_user_may_request_help_for_using_pomodoro()
    -- Given I am acting as the player
    player = Player()

    -- When I type `/pomodoro --help`
    output = player.pomodoroCommand().call('--help')

    -- Then I should see the CommandHelp.outpu
    lu.assertStrContains(actual, 'Usage: pomodoro')
end

return EventTest
