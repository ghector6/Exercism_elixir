defmodule Pingpong do
  IO.inspect self()
  def mailbox() do
    receive do
      {:ping, pid} ->
        IO.puts "Ping!!"
        send(pid, {:pong, pid})
        mailbox()
      {:pong, _pid} ->
        IO.puts "Pong!!"
        mailbox()
    end
  end
end
