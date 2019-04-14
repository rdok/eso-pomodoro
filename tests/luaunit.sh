#!/usr/bin/env bash

docker run --rm                     \
    --user root                     \
    --volume D:\Code\Pomodoro:/app  \
    --workdir /app                  \
    luaunit:5.1                     \
    lua tests/TestSuite.lua