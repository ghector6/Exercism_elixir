defmodule TakeANumber do
  def start() do
    pid = spawn(fn -> loop(0) end)
  end

  def loop(state) do
    receive do
      {:report_state, sender} ->
        send(sender, state)
        loop(state)

      {:take_a_number, sender_pid} ->
        send(sender_pid, state + 1)
        loop(state+1)

      {:stop, message} -> nil
    end

  end
end
