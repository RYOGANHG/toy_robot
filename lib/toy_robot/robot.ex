defmodule ToyRobot.Robot do
  defstruct north: 0, east: 0, facing: :north
  alias ToyRobot.Robot

  @doc """
  Moves the robot forwrd one space in the direction the robot is facing.

  ## Examples

      iex> alias ToyRobot.Robot
      ToyRobot.Robot
      iex> robot = %Robot{north: 0, facing: :north}
      %Robot{north: 0, facing: :north}
      iex> robot |> Robot.move()
      %Robot{north: 1}
  """
  def move(%Robot{facing: facing} = robot) do
    case facing do
      :north -> robot |> move_north()
      :east -> robot |> move_east()
      :south -> robot |> move_south()
      :west -> robot |> move_west()
    end
  end

  defp move_east(robot) do
    %Robot{east: robot.east + 1}
  end

  defp move_west(robot) do
    %Robot{east: robot.east - 1}
  end

  defp move_north(robot) do
    %Robot{north: robot.north + 1}
  end

  defp move_south(robot) do
    %Robot{north: robot.north - 1}
  end
end
