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

  def input_as_float_array() do
    IO.gets("")
    |> String.split
    |> Enum.map(&(BcParse.str_to_float/1))
  end
end

ra_triangle_area = fn b, h -> b * h * 0.5 end
circle_area = fn r, pi -> pi * :math.pow(r, 2) end
trapeze_area = fn h, a, b -> 0.5 * h * (a + b) end
square_area = fn a -> :math.pow(a, 2) end
rectangle_area = fn a, b -> a * b end

input = BcInput.input_as_float_array()

a = input |> Enum.at(0)
b = input |> Enum.at(1)
c = input |> Enum.at(2)

IO.puts("TRIANGULO: #{ra_triangle_area.(a, c) |> BcParse.float_to_str(3) }")
IO.puts("CIRCULO: #{circle_area.(c, 3.14159) |> BcParse.float_to_str(3)}")
IO.puts("TRAPEZIO: #{trapeze_area.(c, a, b) |> BcParse.float_to_str(3)}")
IO.puts("QUADRADO: #{square_area.(b) |> BcParse.float_to_str(3)}")
IO.puts("RETANGULO: #{rectangle_area.(a, b) |> BcParse.float_to_str(3)}")
