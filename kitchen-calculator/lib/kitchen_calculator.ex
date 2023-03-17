defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, measure} = volume_pair
    measure
    # Please implement the get_volume/1 function
  end

  def to_milliliter({:milliliter, measure}), do: {:milliliter, measure}
  def to_milliliter({:cup, measure}), do: {:milliliter, measure * 240}
  def to_milliliter({:fluid_ounce, measure}), do: {:milliliter, measure * 30}
  def to_milliliter({:teaspoon, measure}), do: {:milliliter, measure * 5}
  def to_milliliter({:tablespoon, measure}), do: {:milliliter, measure * 15}


  def from_milliliter({:milliliter, measure}, :cup) do
    {:cup, measure / 240}
  end

  def from_milliliter({:milliliter, measure}, :fluid_ounce) do
    {:fluid_ounce, measure / 30}
  end

  def from_milliliter({:milliliter, measure}, :teaspoon) do
    {:teaspoon, measure / 5}
  end

  def from_milliliter({:milliliter, measure}, :tablespoon) do
    {:tablespoon, measure / 15}
  end

  def from_milliliter({:milliliter, measure}, :milliliter) do
    {:milliliter, measure}
  end

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
  end
end
