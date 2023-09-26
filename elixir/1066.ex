
defmodule BcParse do
  def str_to_float(str) do
    str
    |> Float.parse()
    |> elem(0)
  end

  def str_to_integer(str) do
    str
    |> Integer.parse()
    |> elem(0)
  end

  def float_to_str(number, precision \\ 2) do
    :erlang.float_to_binary(number, [decimals: precision])
  end

  def float_frac(number) do
    round((number - trunc(number)) * 100) / 100
  end
end

defmodule BcInput do
  def input_as_float() do
    IO.gets("") |> BcParse.str_to_float
  end

  def input_as_integer() do
    IO.gets("") |> BcParse.str_to_integer
  end

  def input_as_float_array() do
    IO.gets("")
    |> String.split
    |> Enum.map(&(BcParse.str_to_float/1))
  end

  def input_as_integer_array() do
    IO.gets("")
    |> String.split
    |> Enum.map(&(BcParse.str_to_integer/1))
  end

  def input_n_integers(0, list), do: list
  def input_n_integers(n_times, list) do
    input = BcInput.input_as_integer()
    input_n_integers(n_times - 1, [input | list])
  end
end


require Integer

numbers = BcInput.input_n_integers(5, [])

count_even = fn list ->
  Enum.filter(list, &Integer.is_even/1)
  |> Enum.count()
end

count_odd = fn list ->
  Enum.filter(list, &Integer.is_odd/1)
  |> Enum.count()
end

count_positive = fn list ->
  Enum.filter(list, &(&1 > 0))
  |> Enum.count()
end

count_negative = fn list ->
  Enum.filter(list, &(&1 < 0))
  |> Enum.count()
end

IO.puts("#{count_even.(numbers)} valor(es) par(es)")
IO.puts("#{count_odd.(numbers)} valor(es) impar(es)")
IO.puts("#{count_positive.(numbers)} valor(es) positivo(s)")
IO.puts("#{count_negative.(numbers)} valor(es) negativo(s)")
