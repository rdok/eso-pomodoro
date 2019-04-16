$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path

Write-Output "Installing busted sdk."
$installGlobals = "docker  run --rm " `
        + "--volume ${ScriptDir}:/app "`
        + "--workdir /app " `
        + "alpine:3.9 " `
        + " wget -O busted_sdk.zip https://github.com/Olivine-Labs/busted/archive/master.zip "
Invoke-Expression $installGlobals
