defmodule ToyRobot.Robot do
  @doc """
  Moves the robot forward one space in the direction it is facing.

  ### Example
      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %{north: 0, facing: :north}
      %{north: 0, facing: :north}
      iex> robot |> Robot.move
      %{north: 1}
  """
  def move(robot), do: robot |> move_north

  @doc """
  Moves the robot east one space.

  ## Examples
      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %{east: 0}
      %{east: 0}
      iex> robot |> Robot.move_east
      %{east: 1}
      iex> robot |> Robot.move_east |> Robot.move_east |> Robot.move_east
      %{east: 3}
  """
  def move_east(robot) do
    %{east: robot.east + 1}
  end

  @doc """
  Moves the robot west one space.

  ## Examples
      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %{east: 0}
      %{east: 0}
      iex> robot |> Robot.move_west
      %{east: -1}
      iex> robot |> Robot.move_west |> Robot.move_west |> Robot.move_west
      %{east: -3}
  """
  def move_west(robot) do
    %{east: robot.east - 1}
  end

  @doc """
  Moves the robot north one space.

  ## Examples
      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %{north: 0}
      %{north: 0}
      iex> robot |> Robot.move_north
      %{north: 1}
      iex> robot |> Robot.move_north |> Robot.move_north |> Robot.move_north
      %{north: 3}
  """
  def move_north(robot) do
    %{north: robot.north + 1}
  end

  @doc """
  Moves the robot south one space.

  ## Examples
      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %{north: 0}
      %{north: 0}
      iex> robot |> Robot.move_south
      %{north: -1}
      iex> robot |> Robot.move_south |> Robot.move_south |> Robot.move_south
      %{north: -3}
  """
  def move_south(robot) do
    %{north: robot.north - 1}
  end
end
