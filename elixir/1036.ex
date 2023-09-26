
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

fn_delta = fn a, b, c ->
  :math.pow(b, 2) - 4 * a * c
end

bhaskara = fn a, b, delta ->
  [
    (-b + :math.sqrt(delta)) / (2 * a),
    (-b - :math.sqrt(delta)) / (2 * a)
  ]
end

[a, b, c] = BcInput.input_as_float_array()

if (fn_delta.(a, b, c) < 0) or (a == 0) do
  IO.puts("Impossivel calcular")
else
  res = bhaskara.(a, b, (fn_delta.(a, b, c)))

  IO.puts("R1 = #{res |> Enum.at(0) |> BcParse.float_to_str(5)}")
  IO.puts("R2 = #{res |> Enum.at(1) |> BcParse.float_to_str(5)}")
end
