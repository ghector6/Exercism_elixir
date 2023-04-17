defmodule RPG.CharacterSheet do
  def welcome() do
    IO.puts "Welcome! Let's fill out your character sheet together."
    # Please implement the welcome/0 function
  end

  def ask_name() do
    response = IO.gets("What is your character's name?\n")
    String.trim(response)
    # Please implement the ask_name/0 function
  end

  def ask_class() do
    response = IO.gets("What is your character's class?\n")
    String.trim(response)
    # Please implement the ask_class/0 function
  end

  def ask_level() do
      IO.gets("What is your character's level?\n")
      |> String.trim()
      |> String.to_integer
    # Please implement the ask_level/0 function
  end

  def run() do
    # Please implement the run/0 function
  end
end