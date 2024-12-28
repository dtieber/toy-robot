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

  When the robot is placed in an invalid position:

      iex> alias ToyRobot.{Robot, Table, Simulation}
      [ToyRobot.Robot, ToyRobot.Table, ToyRobot.Simulation]
      iex> table = %Table{north_boundary: 4, east_boundary: 4}
      %Table{north_boundary: 4, east_boundary: 4}
      iex> Simulation.place(table, %{north: 6, east: 0, facing: :north})
      {
        :error, :invalid_placement
      }
  """
  def place(table, placement) do
    if table |> Table.valid_position?(placement) do
      {
        :ok,
        %__MODULE__{
          table: table,
          robot: struct(Robot, placement)
        }
      }
    else
      {:error, :invalid_placement}
    end
  end

  @doc """
  Moves the robot forward one space in the direction it is facing, unless that position is past the boundaries of the table.

  ## Examples

  ### A valid movement

      iex> alias ToyRobot.{Robot, Table, Simulation}
      [ToyRobot.Robot, ToyRobot.Table, ToyRobot.Simulation]
      iex> table = %Table{north_boundary: 4, east_boundary: 4}
      %Table{north_boundary: 4, east_boundary: 4}
      iex> simulation = %Simulation{
      ...>  table: table,
      ...>  robot: %Robot{north: 0, east: 0, facing: :north}
      ...> }
      iex> simulation |> Simulation.move
      {
        :ok,
        %Simulation{
          table: table,
          robot: %Robot{north: 1, east: 0, facing: :north}
        }
      }
  """
  def move(%{robot: robot} = simulation) do
    {:ok, %{simulation | robot: robot |> Robot.move}}
  end
end
