{a, _} = IO.gets("") |> Integer.parse
{b, _} = IO.gets("") |> Integer.parse
{c, _} = IO.gets("") |> Integer.parse
{d, _} = IO.gets("") |> Integer.parse

difference = fn a, b, c, d -> (a * b) - (c * d) end

IO.puts("DIFERENCA = #{difference.(a,b,c,d)}")
