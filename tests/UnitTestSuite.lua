#!/usr/bin/env lua

lu = require 'luaunit'

TestEvent = require 'EventTest'
TestCommand = require 'CommandTest'

os.exit(lu.LuaUnit.run())
