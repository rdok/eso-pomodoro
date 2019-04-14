#!/usr/bin/env lua

lu = require 'luaunit'

TestEvent = require 'src.EventTest'

os.exit(lu.LuaUnit.run('--pattern', 'Test'))
