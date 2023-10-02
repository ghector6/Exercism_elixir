defmodule TakeANumber do
  def start() do
    pid = spawn(fn -> 0 end)
    receive do
      {:report_state, process} -> send(pid, 0)
    end
        # Please implement the start/0 function
  end
end
