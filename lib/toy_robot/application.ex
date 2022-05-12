defmodule ToyRobot.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ToyRobot.Game.PlayerSupervisor
    ]

    opts = [strategy: :one_for_one, name: ToyRobot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
