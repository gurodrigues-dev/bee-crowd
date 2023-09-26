{a, _} = IO.gets("") |> Float.parse
{b, _} = IO.gets("") |> Float.parse

weighted_average = fn a, b -> (a * 3.5 + b * 7.5) / 11 end
format_mantisse = fn number, mantisse -> :erlang.float_to_binary(number, [decimals: mantisse]) end

result = format_mantisse.(weighted_average.(a, b), 5)

IO.puts("MEDIA = #{result}")
