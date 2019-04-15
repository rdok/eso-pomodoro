local PrintCommandHelpTest = {}
testCase = require 'TestCase'

function PrintCommandHelpTest:setUp()
    Pomodoro:Initialize()
end

function PrintCommandHelpTest:test_the_user_may_request_help_for_using_pomodoro()
    Command:call()
    testCase:assertMessageEmittedContains('Usage: pomodoro')
end

return PrintCommandHelpTest
