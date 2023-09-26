#https://www.beecrowd.com.br/judge/pt/problems/view/1019

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

extract_hours = fn seconds -> div(seconds, 3600) end
extract_minutes = fn seconds ->
  seconds - (extract_hours.(seconds) * 3600)
  |> div(60)
end
extract_seconds = fn seconds ->
  seconds - (extract_hours.(seconds) * 3600) \
  - (extract_minutes.(seconds) * 60)
end

value = BcInput.input_as_integer()

IO.puts("#{extract_hours.(value)}:#{extract_minutes.(value)}:\
#{extract_seconds.(value)}")
