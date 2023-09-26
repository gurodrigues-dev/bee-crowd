#https://www.beecrowd.com.br/judge/pt/problems/view/1015

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

distance_bw_two_points = fn p1x, p1y, p2x, p2y ->
  :math.pow((p2x - p1x), 2) + :math.pow((p2y - p1y), 2)
  |> :math.sqrt()
end

[x1, y1] = BcInput.input_as_float_array()
[x2, y2] = BcInput.input_as_float_array()

IO.puts(distance_bw_two_points.(x1, y1, x2, y2) |> BcParse.float_to_str(4))
