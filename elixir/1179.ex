
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

defmodule Ex1179 do
  require Integer

  def start do
    start_reading(15)
  end

  defp start_reading(n), do: start_reading(n, [], [])
  defp start_reading(0, odds, evens) do
    if Enum.count(odds) > 0, do: print_queue(odds, "impar")
    if Enum.count(evens) > 0, do: print_queue(evens, "par")
  end
  defp start_reading(n, odds, evens) do
    input = BcInput.input_as_integer()

    new_evens = if Integer.is_even(input), do: enqueue(evens, "par", input), else: evens
    new_odds = if !Integer.is_even(input), do: enqueue(odds, "impar", input), else: odds

    start_reading(n - 1, new_odds, new_evens)
  end

  defp enqueue(queue, label, value) do
    if Enum.count(queue) == 5 do
      print_queue(queue, label)
      [value]
    else
      [value | queue]
    end
  end

  defp print_queue(queue, label) do
    Enum.reverse(queue)
    |> Enum.with_index()
    |> Enum.each(fn x -> IO.puts("#{label}[#{elem(x, 1)}] = #{elem(x, 0)}") end)
  end
end

Ex1179.start()
