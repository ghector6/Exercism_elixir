defmodule RecursiveMatch do

  @kwlisti  [
    electric: {"Fender Stratocaster", 2020, "USA"},
    electric: {"Gibson Les Paul", 2019, "USA"},
    acoustic: {"Martin D-28", 2018, "USA"},
    electric: {"Ibanez RG", 2021, "Japan"},
    acoustic: {"Taylor 814ce", 2020, "USA"},
    electric: {"PRS Custom 24", 2022, "USA"},
    electric: {"Fender Telecaster", 2019, "USA"},
    acoustic: {"Gibson J-45", 2017, "USA"}
  ]

  def filter(brand, opt \\ []) do
    guitars =
      Keyword.get_values(@kwlisti, brand)
    IO.inspect(guitars)
  end

  #Function Head
  def filter_by_year(list, type)

  #Base Case
  def filter_by_year([], _year), do: []

  #RecursiveCase
  def filter_by_year({_, year, _}, year) do
    IO.puts("Hello is matching")
  end

end
