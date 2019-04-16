#!/usr/bin/env lua

testCase = require 'TestCase'
testCase.setup()

TestEvent = require 'EventTest'
TestCommand = require 'CommandTest'
TestPomodoro = require 'PomodoroTest'

os.exit(lu.LuaUnit.run())
