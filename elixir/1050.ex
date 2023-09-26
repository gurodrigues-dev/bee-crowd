
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

ddd_list = [
  %{"DDD" => 61, "Destination" => "Brasilia"},
  %{"DDD" => 71, "Destination" => "Salvador"},
  %{"DDD" => 11, "Destination" => "Sao Paulo"},
  %{"DDD" => 21, "Destination" => "Rio de Janeiro"},
  %{"DDD" => 32, "Destination" => "Juiz de Fora"},
  %{"DDD" => 19, "Destination" => "Campinas"},
  %{"DDD" => 27, "Destination" => "Vitoria"},
  %{"DDD" => 31, "Destination" => "Belo Horizonte"},
]
get_ddd = fn value_to_search ->
  item = Enum.filter(ddd_list, &(&1["DDD"] == value_to_search)) |> Enum.at(0)

  if item == nil do
    "DDD nao cadastrado"
  else
    %{"Destination"=>destination} = item
    destination
  end
end

input = BcInput.input_as_integer()

IO.puts get_ddd.(input)
