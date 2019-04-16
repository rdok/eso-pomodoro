#!/usr/bin/env lua

testCase = require 'TestCase'
testCase.setup()

TestPrintCommandHelp = require 'PrintCommandHelpTest'

os.exit(lu.LuaUnit.run())
