{raio, _} = IO.gets("") |> Float.parse

circle_area = fn pi, raio -> pi * (:math.pow(raio, 2)) end
format_mantisse = fn number, mantisse -> :erlang.float_to_binary(number, [decimals: mantisse]) end

result = format_mantisse.(circle_area.(3.14159, raio), 4)
IO.puts("A=#{result}")
