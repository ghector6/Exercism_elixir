defmodule TakeANumber do
  def start() do
    pid = spawn(fn -> loop(0) end)
  end

  def loop(state) do
    receive do
      {:report_state, sender} ->
        send(sender, state)
    end

  end
end
