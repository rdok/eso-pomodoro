FROM alpine:3.9

RUN apk update

RUN apk add lua5.1 curl

RUN mkdir /usr/local/lua
RUN curl https://raw.githubusercontent.com/bluebird75/luaunit/LUAUNIT_V3_3/luaunit.lua  \
    --output /usr/local/lua/luaunit.lua

ENV LUA_PATH "/usr/local/lua/?.lua;/app/tests/?.lua"

