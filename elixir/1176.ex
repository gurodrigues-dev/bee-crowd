
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

  def input_n_floats(n_times) do
    do_input_n_floats(n_times, [])
    |> Enum.reverse()
  end

  defp do_input_n_floats(0, list), do: list
  defp do_input_n_floats(n_times, list) do
    input = BcInput.input_as_float()
    do_input_n_floats(n_times - 1, [input | list])
  end
end

defmodule BcEnumAux do
  def is_in_range(value, {min, max}) when min > max, do: is_in_range(value, {max, min})
  def is_in_range(value, {min, max}), do: (value >= min) and (value <= max)
end

defmodule Ex1176 do
  def test_cases(0), do: nil
  def test_cases(n) do
    input = BcInput.input_as_integer()
    IO.puts("Fib(#{input}) = #{fib(input)}")
    test_cases(n - 1)
  end

  defp fib(n), do: fib(n, 0, 1)
  defp fib(0, _acc1, _acc2), do: 0
  defp fib(1, _acc1, acc2), do: acc2
  defp fib(n, acc1, acc2) do
    fib(n - 1, acc2, acc1 + acc2)
  end
end

input = BcInput.input_as_integer()
Ex1176.test_cases(input)
