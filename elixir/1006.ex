{a, _} = IO.gets("") |> Float.parse
{b, _} = IO.gets("") |> Float.parse
{c, _} = IO.gets("") |> Float.parse

weighted_average = fn a,b,c -> ((a * 2) + (b * 3) + (c * 5)) / 10 end
format_matisse =  fn number, mantisse -> :erlang.float_to_binary(number, [decimals: mantisse]) end

result = format_matisse.(weighted_average.(a, b, c), 1)

IO.puts("MEDIA = #{result}")
