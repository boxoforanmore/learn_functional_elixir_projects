defmodule CowboyApp do
    use Application

    def start(_type, _args) do
        import Supervisor.Spec, warn: false

        Cowboy.dispatch.start

        children = [
            
        ]
    end
end
