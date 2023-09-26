
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

defmodule Ex1160 do
  def test_cases(0), do: nil
  def test_cases(n) do
    [pop_a, pop_b, g_a, g_b] = BcInput.input_as_float_array()
    time_to_overtake(pop_a, g_a, pop_b, g_b, 0)
    |> beautify_output()

    test_cases(n - 1)
  end

  defp time_to_overtake(pop_a, _g_a, pop_b, _g_b, years)
  when (pop_a > pop_b) or (years > 100) do
    years
  end

  defp time_to_overtake(pop_a, g_a, pop_b, g_b, years) do
    new_pop_a = growthed_pop(pop_a, g_a)
    new_pop_b = growthed_pop(pop_b, g_b)

    time_to_overtake(new_pop_a, g_a, new_pop_b, g_b, years + 1)
  end

  defp growthed_pop(pop, growth_rate) do
    pop + trunc(pop * growth_rate / 100)
  end

  defp beautify_output(years) do
    if years > 100 do
      IO.puts("Mais de 1 seculo.")
    else
      IO.puts("#{years} anos.")
    end
  end
end

tests = BcInput.input_as_integer()
Ex1160.test_cases(tests)
