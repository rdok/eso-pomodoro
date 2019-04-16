$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path

Write-Output "Installing eso global objects."
$installGlobals = "docker  run --rm " `
        + "--volume ${ScriptDir}:/app "`
        + " --volume ${ScriptDir}\..\modules:/globals "`
        + "--workdir /app " `
        + "alpine:3.9 " `
        + " wget -O /globals/globals.txt https://esodata.uesp.net/100016/globals.txt "
Invoke-Expression $installGlobals
