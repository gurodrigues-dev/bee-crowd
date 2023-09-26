#https://www.beecrowd.com.br/judge/pt/problems/view/1020

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

extract_years = fn days -> div(days, 365) end
extract_months = fn days ->
  days - extract_years.(days) * 365
  |> div(30)
end
extract_days = fn days ->
  days - extract_years.(days) * 365\
  - extract_months.(days) * 30
end

days = BcInput.input_as_integer()

IO.puts("#{extract_years.(days)} ano(s)")
IO.puts("#{extract_months.(days)} mes(es)")
IO.puts("#{extract_days.(days)} dia(s)")
