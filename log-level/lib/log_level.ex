defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and not legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5  and not legacy? -> :fatal
      true -> :unknown
    end
    # Please implement the to_label/2 function
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
  end
end
