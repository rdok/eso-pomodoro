$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path

Write-Output "Installing luarocks packages"
$installLuarocksPackages = "docker  run --rm " `
        + "--volume ${ScriptDir}:/app "`
        + " --volume ${ScriptDir}\..\modules:/modules "`
        + "--workdir /app " `
        + "luarocks:5.1 " `
        + " install --tree /modules inspect"
Invoke-Expression $installLuarocksPackages
