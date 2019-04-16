Pomodoro = {}

Pomodoro.name = "Pomodoro"

function Pomodoro:initialize()
    Event:initialize(self.name)
end

function Pomodoro:command()
    return Command
end
