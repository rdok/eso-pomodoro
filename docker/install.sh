#!/bin/sh

luaunitFile="/app/lib/luaunit.lua"

if [[ ! -f ${luaunitFile} ]]; then
    echo "Installing bluebird75/luaunit..."
    curl https://raw.githubusercontent.com/bluebird75/luaunit/LUAUNIT_V3_3/luaunit.lua    \
        --output ${luaunitFile}                                                         \
        --silent
else
    echo "bluebird75/luaunit already installed."
fi

esouiZipMaster="/app/lib/esoui-master.zip"
esouiZipDirectory="/app/lib/esoui-zip"
esouiDirectory="/app/lib/esoui"

if [[ ! -f ${esouiZipMaster} ]]; then
    echo "Installing esoui/esoui ..."
    curl https://codeload.github.com/esoui/esoui/zip/master     \
    --output ${esouiZipMaster}                                  \
    --silent

else
    echo "esoui/esoui already installed."
fi

echo "In Progress: Unzipping esoui API"
rm -rf ${esouiDirectory}
mkdir -p ${esouiDirectory}
unzip ${esouiZipMaster} -d ${esouiDirectory}
echo "Completed - Unzipping esoui API"

echo "In Progress: Gathering esoui lua files."
rm -rf ${esouiZipDirectory}
mkdir -p ${esouiZipDirectory}
find ${esouiDirectory} -name "*.lua" -exec mv --force {}  ${esouiZipDirectory} \;
echo "Complete: Gathering esoui lua files."


