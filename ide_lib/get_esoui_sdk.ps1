$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path

Write-Output "Installing esoui/esoui."
$installEsoui = "docker  run --rm " `
         + "--volume ${ScriptDir}:/app "`
         + "--workdir /app " `
         + "alpine:3.9 " `
         + " wget -O esoui_sdk.zip https://codeload.github.com/esoui/esoui/zip/master "
Invoke-Expression $installEsoui
