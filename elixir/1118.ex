
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
    #IO.inspect (float_frac (round(number * 100)) / 100)
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

defmodule Ex1118 do
  def start() do
    note1 = get_valid_note()
    note2 = get_valid_note()

    IO.puts("media = #{((note1 + note2) / 2) |> BcParse.float_to_str(2)}")

    get_option()
  end

  defp get_option do
    IO.puts("novo calculo (1-sim 2-nao)")
    case BcInput.input_as_integer() do
      1 -> start()
      2 -> nil
      _ -> get_option()
    end
  end

  defp get_valid_note do
    note = BcInput.input_as_float()

    if is_valid_note(note) do
      note
    else
      IO.puts("nota invalida")
      get_valid_note()
    end
  end

  defp is_valid_note(note) when note > 0 and note <= 10, do: true
  defp is_valid_note(_note), do: false
end

Ex1118.start()
