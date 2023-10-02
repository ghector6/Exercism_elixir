defmodule Pingpong do
  IO.inspect self()
  def mailbox() do
    receive do
      {:ping, pid} ->
        IO.puts "Pong!!"
        mailbox()
      {:pong, pid} ->
        IO.puts "Ping!!"
        mailbox()
    end
  end
end
