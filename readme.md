[![Build Status](https://travis-ci.org/rdok/eso-pomodoro.svg?branch=master)](https://travis-ci.org/rdok/eso-pomodoro)

## Dev

### Tests
> [luaunit](https://luaunit.readthedocs.io/en/latest/#)
- Acceptance tests: `docker-compose run luaunit tests/AcceptanceTestSuite.lua`
- Unit tests: `docker-compose run luaunit tests/UnitTestSuite.lua`


### IDE
- Copy .env.example to .env
- Build image: `docker-compose build`
- Execute tests: `docker-compose run luaunit -v`
- At this stage the `entry-point.sh` will have downloaded the esoui sdk zip. Load it as a library for a bit of autocomplete.


### Link src to system
Storing source inside the system feels like coding on production server :mind_blown: Let's fix that by creating a symbolic link from the source code to system:
- Open `cmd` with Admin privileges
- Paste: `mklink /d "C:\Users\rdok\Documents\Elder Scrolls Online\live\AddOns\Pomodoro" "D:\Code\Pomodoro"`

### Issues
> standard_init_linux.go:207: exec user process caused "no such file or directory"
Convert file endings to Unix style: 
- Download http://dos2unix.sourceforge.net/
- Extract to this directory
- PowerShell:  `.\dos2unix.exe .\docker\install.sh`

 
