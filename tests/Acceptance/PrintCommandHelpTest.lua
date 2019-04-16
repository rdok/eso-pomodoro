local PrintCommandHelpTest = {}

function PrintCommandHelpTest:setUp()
    Pomodoro:initialize()
end

function PrintCommandHelpTest:test_the_user_may_request_help_for_using_pomodoro()
    command = Pomodoro:command()

    command:call()

    testCase:assertMessageEmittedContains('Usage: pomodoro')
end

return PrintCommandHelpTest
