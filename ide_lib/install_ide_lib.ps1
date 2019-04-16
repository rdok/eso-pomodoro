$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path

Write-Output "Installing esoui/esoui."
$installEsoui = "docker  run --rm " `
         + "--volume ${ScriptDir}:/app "`
         + "--workdir /app " `
         + "alpine:3.9 " `
         + " wget -O esoui.zip https://codeload.github.com/esoui/esoui/zip/master "
Invoke-Expression $installEsoui

Write-Output "Installing eso global objects."
$installGlobals = "docker  run --rm " `
       + "--volume ${ScriptDir}:/app "`
       + "--workdir /app " `
       + "alpine:3.9 " `
       + " wget -O globals.txt https://esodata.uesp.net/100016/globals.txt "
Invoke-Expression $installGlobals