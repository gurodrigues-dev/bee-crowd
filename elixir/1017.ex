#https://www.beecrowd.com.br/judge/pt/problems/view/1017

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

distance = fn speed, hours -> speed * hours end
spend_gas_liters = fn km, km_by_liter -> km / km_by_liter end

hours = BcInput.input_as_integer()
avg_speed = BcInput.input_as_integer()

IO.puts(spend_gas_liters.(distance.(avg_speed, hours) ,12) |> BcParse.float_to_str(3))
