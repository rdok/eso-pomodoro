#!/usr/bin/env bash

docker run --rm                     \
    --user root                     \
    --volume $(pwd):/app  \
    --workdir /app                  \
    luaunit:5.1                     \
    lua TestSuite.lua