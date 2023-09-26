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
end

defmodule Ex1047 do
  def calc_duration(start_h, start_m, end_h, end_m) do
    time_initial = hour_to_minutes(start_h, start_m)
    time_final = hour_to_minutes(end_h, end_m)

    duration_total =
      cond do
        time_final > time_initial -> time_final - time_initial
        true                      -> time_final + add_day() - time_initial
      end

    %{"hours" => extract_hours(duration_total), "minutes" => extract_minutes(duration_total)}
  end
  defp hour_to_minutes(hours, minutes), do: hours * 60 + minutes

  defp add_day(), do: 60 * 24

  defp extract_hours(minutes), do: div(minutes, 60)

  defp extract_minutes(minutes), do: rem(minutes, 60)
end

[st_h, st_m, end_h, end_m] = BcInput.input_as_integer_array()

duration = Ex1047.calc_duration(st_h, st_m, end_h, end_m)

IO.puts("O JOGO DUROU #{duration["hours"]} HORA(S) E #{duration["minutes"]} MINUTO(S)")
