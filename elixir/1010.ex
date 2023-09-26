parse_array_as_floar = fn value ->
  value |> Enum.map(fn number -> Float.parse(number) |> elem(0) end)
end

calculate_total_row = fn item ->
  Enum.at(item, 1) * Enum.at(item, 2)
end

sum_rows = fn list_of_items ->
  list_of_items
  |> Enum.map(calculate_total_row)
  |> Enum.reduce(&(&1 + &2))
end

parse_mantisse = fn number, mantisse -> :erlang.float_to_binary(number, [decimals: mantisse]) end


item1 = IO.gets("") |> String.split
item2 = IO.gets("") |> String.split

items = [parse_array_as_floar.(item1) | [parse_array_as_floar.(item2)]]

result = parse_mantisse.(sum_rows.(items) ,2)

IO.puts("VALOR A PAGAR: R$ #{result}")
