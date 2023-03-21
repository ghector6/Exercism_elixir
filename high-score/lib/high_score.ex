defmodule HighScore do
  @initial_score 0
  def new() do
    %{}
    # Please implement the new/0 function
  end

  def add_player(scores, name, score \\ @initial_score) do
    Map.put(scores, name, score)
    # Please implement the add_player/3 function
  end

  def remove_player(scores, name) do
    Map.delete(scores,name)
    # Please implement the remove_player/2 function
  end

  def reset_score(scores, name) do
    # Please implement the reset_score/2 function
  end

  def update_score(scores, name, score) do
    # Please implement the update_score/3 function
  end

  def get_players(scores) do
    # Please implement the get_players/1 function
  end
end
