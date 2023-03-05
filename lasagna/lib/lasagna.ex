defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven, do: 40
  

  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(current_minutes) do
    expected_minutes_in_oven() - current_minutes
  end

  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(layer_time), do: layer_time * 2 

  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, time_in_oven) do
    preparation_time_in_minutes(layers) + time_in_oven
  end


  # Please define the 'alarm/0' function
end
