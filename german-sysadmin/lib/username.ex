defmodule Username do
  def sanitize( username,  acc \\ [])
  def sanitize([], acc), do: Enum.reverse(acc)
  def sanitize([h | t] = username, acc) do
    case h do
      h when h in ?a..?z -> sanitize(t,[h|acc])
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
