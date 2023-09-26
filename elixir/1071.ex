
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

start = BcInput.input_as_integer()
final = BcInput.input_as_integer()

start..final
|> Enum.to_list()
|> Enum.slice(1..-2)
|> Enum.filter(&Integer.is_odd/1)
|> Enum.sum()
|> IO.inspect
