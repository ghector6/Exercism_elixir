defmodule LanguageList do
  def new() do
    []
    # Please implement the new/0 function
  end

  def add(list, language) do
    [language | list ]
    # Please implement the add/2 function
  end

  def remove(list) do
    [head | tail] = list; tail    
    # Please implement the remove/1 function
  end

  def first(list) do
    List.first(list)
    # Please implement the first/1 function
  end

  def count(list) do
    Kernel.length(list)
    # Please implement the count/1 function
  end
  
  

  def functional_list?(list) do
    Enum.member?(list, "Elixir")
    # Please implement the functional_list?/1 function
  end
end
