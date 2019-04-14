#!/usr/bin/env lua

lu = require 'luaunit'

TestDemoTwo = require 'src.DemoTwoTest'

os.exit(lu.LuaUnit.run('--pattern', 'Test'))
