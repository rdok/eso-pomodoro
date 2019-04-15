#!/usr/bin/env lua

testCase = require 'TestCase'
testCase.requireDependencies()

TestEvent = require 'EventTest'
TestCommand = require 'CommandTest'

os.exit(lu.LuaUnit.run())
