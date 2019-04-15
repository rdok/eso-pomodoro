#!/bin/sh

luaunitFile="/app/lib/luaunit.lua"
if [ ! -f ${luaunitFile} ]; then
    curl https://raw.githubusercontent.com/bluebird75/luaunit/LUAUNIT_V3_3/luaunit.lua    \
        --output ${luaunitFile}                                                         \
        --silent
fi

esouiSdkZip="/app/lib/esoui-sdk.zip"
if [ ! -f ${esouiSdkZip} ]; then
    curl https://codeload.github.com/esoui/esoui/zip/master     \
    --output ${esouiSdkZip}                                  \
    --silent
fi

esouiMaster="/app/lib/esoui-master"
esouiSdk="/app/lib/esoui-modules"
if  [ ! -d ${esouiSdk} ]; then
    echo '>>> Unzipping, gathering API eso lua modules, and global objects.'
    mkdir  -p $esouiMaster && mkdir -p $esouiSdk
    unzip -o  -q ${esouiSdkZip} -d ${esouiMaster}
    find ${esouiMaster} -name "*.lua" -exec mv -f '{}' ${esouiSdk} \;

# TODO: remove/parse malformed data.
# TODO: filter out rows table:, meta, and indendation
#    echo '>>> Fetch eso global objects.'
#    curl https://esodata.uesp.net/100016/globals.txt        \
#        --silent                                            \
#        >> "${esouiSdk}/globals.lua"
fi


clear

exec lua "$@" -v

