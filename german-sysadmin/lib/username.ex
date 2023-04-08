defmodule Username do
  def sanitize( username,  acc \\ [])
  def sanitize([], acc), do: Enum.reverse(acc)
  def sanitize([h | t] = _username, acc) do
    case h do
       ?ä -> sanitize(t, [?e, ?a| acc])
       ?ö -> sanitize(t, [?e, ?o| acc])
       ?ü -> sanitize(t, [?e, ?u| acc])
       ?ß -> sanitize(t, [?s, ?s| acc])
      h when h in ?a..?z or h == ?_ -> sanitize(t,[h|acc])
      _ -> sanitize(t, acc)
    end
  end
end
