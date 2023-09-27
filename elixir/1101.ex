calculate_sum_of_numbers = fn range ->
  range |> Enum.to_list() |> Enum.sum()
end

generate_sequence_of_numbers = fn range ->
  range
  |> Enum.to_list()
  |> Enum.reduce("", fn value, accumulator -> "#{accumulator} #{value}" end)
  |> String.trim()
end

ranges =
  IO.read(:stdio, :all)
  |> String.trim()
  |> String.split("\n")
  |> Enum.map(fn values ->
    values
    |> String.trim()
    |> String.split(" ")
    |> Enum.map(fn value -> String.to_integer(value) end)
    |> Enum.sort(:asc)
  end)

for range <- ranges, Enum.all?(range, fn value -> value > 0 end) do
  [first, last] = range
  sequence_of_numbers = generate_sequence_of_numbers.(first..last)
  sum = calculate_sum_of_numbers.(first..last)

  IO.puts("#{sequence_of_numbers} Sum=#{sum}")
end
