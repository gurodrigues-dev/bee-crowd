defmodule BcParse do
  def str_to_float(str) do
    str
    |> Float.parse()
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
end

rad = BcInput.input_as_float()

vol = fn r, pi -> (4 / 3) * pi * :math.pow(r, 3) end

IO.puts("VOLUME = #{vol.(rad, 3.14159) |> BcParse.float_to_str(3)}")
