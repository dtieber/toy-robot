defmodule ToyRobot.Simulation do
  @moduledoc """
  To place a robot on a table.
  """

  alias ToyRobot.{Robot, Simulation, Table}
  defstruct [:table, :robot]

  @doc """
  Simulates placing a robot on a table.

  ## Examples

  When the robot is placed in a valid position:

      iex> alias ToyRobot.{Robot, Table, Simulation}
      [ToyRobot.Robot, ToyRobot.Table, ToyRobot.Simulation]
      iex> table = %Table{north_boundary: 4, east_boundary: 4}
      %Table{north_boundary: 4, east_boundary: 4}
      iex> Simulation.place(table, %{north: 0, east: 0, facing: :north})
      {
        :ok,
        %Simulation{
          table: table,
          robot: %Robot{north: 0, east: 0, facing: :north}
        }
      }
  """
  def place(table, placement) do
    {
      :ok,
      %__MODULE__{
        table: table,
        robot: struct(Robot, placement)
      }
    }
  end
end
