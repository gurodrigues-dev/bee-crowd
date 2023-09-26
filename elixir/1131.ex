
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

defmodule Ex1131 do
  def start do
    evaluate_grenal([])
  end

  defp evaluate_grenal(history) do
    [inter, gremio] = BcInput.input_as_integer_array()
    list = [get_grenal_winner(inter, gremio) | history]

    case get_option() do
      1 -> evaluate_grenal(list)
      _ -> compute(list)
    end
  end

  defp get_grenal_winner(score_inter, score_gremio) do
    cond do
      score_inter > score_gremio  -> "inter"
      score_inter < score_gremio  -> "gremio"
      score_inter == score_gremio -> "empate"
    end
  end

  defp get_option() do
    IO.puts("Novo grenal (1-sim 2-nao)")

    BcInput.input_as_integer()
  end

  defp get_result_counts(history, result_search) do
    history
    |> Enum.filter(&(&1 == result_search))
    |> Enum.count
  end

  defp get_statistics_most_winner(history) do
    Enum.reduce(history, %{}, fn item, acc -> Map.update(acc, item, 1, &(&1 + 1)) end)
    |> Enum.sort(fn x, y -> elem(y,1) < elem(x,1) end)
    |> Enum.at(0)
    |> case do
      {"inter",  _} -> "Inter venceu mais"
      {"gremio", _} -> "Gremio venceu mais"
      {"empate", _} -> "Nao houve vencedor"
    end
  end

  defp compute(history) do
    IO.puts("#{Enum.count history} grenais")
    IO.puts("Inter:#{get_result_counts(history, "inter")}")
    IO.puts("Gremio:#{get_result_counts(history, "gremio")}")
    IO.puts("Empates:#{get_result_counts(history, "empate")}")
    IO.puts(get_statistics_most_winner(history))
  end
end

Ex1131.start()
