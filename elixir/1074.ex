
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

  def input_n_integers(n_times) do
    do_input_n_integers(n_times, [])
    |> Enum.reverse()
  end

  defp do_input_n_integers(0, list), do: list
  defp do_input_n_integers(n_times, list) do
    input = BcInput.input_as_integer()
    do_input_n_integers(n_times - 1, [input | list])
  end
end

defmodule BcEnumAux do
  def is_in_range(value, {min, max}) when min > max, do: is_in_range(value, {max, min})
  def is_in_range(value, {min, max}), do: (value >= min) and (value <= max)
end

defmodule Ex1074 do
  require Integer

  defp get_string_positive_or_negative(number) do
    if number > 0, do: "POSITIVE", else: "NEGATIVE"
  end

  defp get_string_odd_or_even(number) do
    if Integer.is_even(number), do: "EVEN", else: "ODD"
  end

  def classify_number(number) do
    case number do
      0 -> "NULL"
      _ -> "#{get_string_odd_or_even(number)} #{get_string_positive_or_negative(number)}"
    end
  end
end

input = BcInput.input_as_integer()

BcInput.input_n_integers(input)
|> Enum.each(&(IO.puts(Ex1074.classify_number &1)))
