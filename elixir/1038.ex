
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

menu = [
  %{"code" => 1, "name" => "Cachorro Quente", "price" => 4.0},
  %{"code" => 2, "name" => "X-Salada",        "price" => 4.5},
  %{"code" => 3, "name" => "X-Bacon",         "price" => 5.0},
  %{"code" => 4, "name" => "Torrada simples", "price" => 2.0},
  %{"code" => 5, "name" => "Refrigerante",    "price" => 1.5}
]

get_item_price_by_code = fn code ->
  item = Enum.find(menu, fn map -> map["code"] == code end)
  item["price"]
end

[item_code, item_amount] = BcInput.input_as_integer_array()

IO.puts("Total: R$ #{get_item_price_by_code.(item_code) * item_amount |> BcParse.float_to_str(2)}")
