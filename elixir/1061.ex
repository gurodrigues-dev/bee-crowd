#https://www.beecrowd.com.br/judge/pt/problems/view/1061

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

extract_days = fn seconds ->  div(seconds, 86400) end
extract_hours = fn seconds ->
  (seconds - extract_days.(seconds) * 86400)
  |> div(3600)
end
extract_minutes = fn seconds ->
  (seconds - (extract_days.(seconds) * 86400) - (extract_hours.(seconds) * 3600))
  |> div(60)
end
extract_seconds = fn seconds ->
  rem(seconds, 60)
end

[_, d1] = IO.gets("") |> String.trim() |> String.split()
[h1, m1, s1] = IO.gets("") |> String.trim() |> String.split(" : ")


[_, d2] = IO.gets("") |> String.trim() |> String.split()
[h2, m2, s2] = IO.gets("") |> String.trim() |> String.split(" : ")


{:ok, dt1, 0} = DateTime.from_iso8601("2000-01-#{String.pad_leading(d1, 2, "0")}T#{h1}:#{m1}:#{s1}Z")
{:ok, dt2, 0} = DateTime.from_iso8601("2000-01-#{String.pad_leading(d2, 2, "0")}T#{h2}:#{m2}:#{s2}Z")

diff_in_sec = DateTime.diff(dt2, dt1)

IO.puts("#{extract_days.(diff_in_sec)} dia(s)")
IO.puts("#{extract_hours.(diff_in_sec)} hora(s)")
IO.puts("#{extract_minutes.(diff_in_sec)} minuto(s)")
IO.puts("#{extract_seconds.(diff_in_sec)} segundo(s)")
