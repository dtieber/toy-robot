defmodule ToyRobot.CommandRunner do
  @moduledoc """
  Runs commands.
  """
  alias ToyRobot.{Simulation, Table}

  def run([{:place, placement} | _rest]) do
    table = %Table{north_boundary: 4, east_boundary: 4}
    {:ok, simulation} = Simulation.place(table, placement)
    simulation
  end
end
