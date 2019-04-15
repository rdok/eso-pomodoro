#!/usr/bin/env lua

testCase = require 'TestCase'
testCase.requireDependencies()

TestPrintCommandHelp = require 'PrintCommandHelpTest'

os.exit(lu.LuaUnit.run())
