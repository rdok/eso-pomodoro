########### Preparations #######################################################
#
# Allow command execution for current user:
# Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
#
# Execute tests: & luanit.ps1
########### End Preparations ###################################################

$luaContainer = "luaunit:5.1"

$luanitInspection = Invoke-Expression "docker image inspect $luaunitTag 2>&1"

If ($luanitInspection -like "*No such image: $luaunitTag*")
{
    Invoke-Expression "docker build --tag=$luaContainer .\tests\"
}

$dockerRun = "docker run --rm " `
        + "--user root " `
        + "--volume $( pwd ):/app " `
        + "--workdir /app " `
        + "$luaContainer lua tests/TestSuite.lua $args"

Write-Output $dockerRun

Invoke-Expression $dockerRun
