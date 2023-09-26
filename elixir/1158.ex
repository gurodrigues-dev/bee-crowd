
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

  def number_to_str(number) do
    if ((round(number * 100)) / 100) |> float_frac() == 0 do
      trunc((round(number * 100)) / 100)
    else
      float_to_str(number, 1)
    end
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

defmodule Ex1158 do
  require Integer

  def test_cases(0), do: nil
  def test_cases(n) do
    [x, y] = BcInput.input_as_integer_array()
    calc_and_print(x, y)
    test_cases(n - 1)
  end

  defp calc_and_print(x, y) do
    get_n_odds_from(x, y + 1, [])
    |> Enum.filter(&Integer.is_odd/1)
    |> Enum.take(y)
    |> Enum.sum()
    |> IO.puts()
  end

  defp get_n_odds_from(_n, count, list) when count == 0, do:  Enum.reverse(list)

  defp get_n_odds_from(n, count, list) do
    cond do
      Integer.is_odd(n)  -> get_n_odds_from(n + 1, count - 1, [n | list])
      !Integer.is_odd(n) -> get_n_odds_from(n + 1, count, list)
    end
  end
end

input = BcInput.input_as_integer()
Ex1158.test_cases(input)
