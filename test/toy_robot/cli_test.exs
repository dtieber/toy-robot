defmodule ToyRobot.CLITest do
  use ExUnit.Case, async: true

  import ExUnit.CaptureIO

  test "provides usage instructions if no arguments specified" do
    output = capture_io fn ->
      ToyRobot.CLI.main([])
    end

    assert output |> String.trim == "Usage: toy_robot commands.txt"
  end

  test "provides usage instructions if too many arguments are specified" do
    output = capture_io fn ->
      ToyRobot.CLI.main(["commands.txt", "commands2.txt"])
    end

    assert output |> String.trim == "Usage: toy_robot commands.txt"
  end

  test "shows an error message if the file does not exist" do
    output = capture_io fn ->
      ToyRobot.CLI.main(["i-dont-exist.txt"])
    end

    assert output |> String.trim == "The file i-dont-exist.txt does not exist"
  end

  test "runs toy_robot" do
    output = capture_io fn ->
      ToyRobot.CLI.main(["commands.txt"])
    end

    assert output |> String.trim == "The robot is at (0,4) and is facing NORTH"
  end
end
