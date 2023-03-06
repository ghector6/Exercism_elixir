defmodule Lasagna do
  
  def expected_minutes_in_oven, do: 40
  
  def remaining_minutes_in_oven(current_minutes) do
    expected_minutes_in_oven() - current_minutes
  end

  def preparation_time_in_minutes(layer_time), do: layer_time * 2 

  def total_time_in_minutes(layers, time_in_oven) do
    preparation_time_in_minutes(layers) + time_in_oven
  end

  def alarm, do: "Ding!"

end
