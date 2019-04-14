#!/bin/sh

luaunitFile="/app/lib/luaunit.lua"

if [ ! -f ${luaunitFile} ]; then
    curl https://raw.githubusercontent.com/bluebird75/luaunit/LUAUNIT_V3_3/luaunit.lua    \
        --output ${luaunitFile}                                                         \
        --silent
fi

esouiSdk="/app/lib/esoui-sdk.zip"

if [ "local" == ${APP_ENV} ] && [ ! -f ${esouiSdk} ]; then
    curl https://codeload.github.com/esoui/esoui/zip/master     \
    --output ${esouiSdk}                                  \
    --silent
fi

exec lua /app/tests/TestSuite.lua -v "$@"

