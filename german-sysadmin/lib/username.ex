defmodule Username do
  def sanitize( username,  acc \\ [])
  def sanitize([], acc), do: Enum.reverse(acc)
  def sanitize([h | t] = _username, acc) do
    case h do
       228 -> sanitize(t, [?a, ?e| acc])
       246 -> sanitize(t, [?o, ?e| acc])
       252 -> sanitize(t, [?u, ?e| acc])
       223 -> sanitize(t, [?s, ?s| acc])
      h when h in ?a..?z or h == 95 -> sanitize(t,[h|acc])
      _ -> sanitize(t, acc)
    end




#    Enum.filter(username, fn x -> x >= 97 and x <= 122 end)

    # ä becomes ae
    # ö becomes oe
    # ü becomes ue
    # ß becomes ss

    # Please implement the sanitize/1 function
  end
end
