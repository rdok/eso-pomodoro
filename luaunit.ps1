########### Preparations #######################################################
#
# Allow command execution for current user:
# Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
#
# Execute tests: & luanit.ps1
########### End Preparations ###################################################

$luaContainer = "luaunit:5.1"

#$luanitInspection = Invoke-Expression "docker image inspect $luaunitTag 2>&1"

$arguments = $args | Out-String

#If ($arguments -like "*--build*")
#{
#    $arguments = $arguments.Replace("--build", "")
#    Invoke-Expression "docker build --tag=$luaContainer ."
#}

# Should reflect .travis.yml
$dockerRun = "docker run --rm " `
              + "--user root " `
              + "--volume $( pwd ):/app " `
              + "--workdir /app " `
              + "$luaContainer lua tests/TestSuite.lua $arguments"

Invoke-Expression $dockerRun
