
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

defmodule Ex1045 do
  import :math, only: [pow: 2]

  defp is_triangle(a, b, c), do: a < (b + c)

  defp check_rectangle(a, b, c), do: if pow(a, 2) == pow(b, 2) + pow(c, 2), do: "TRIANGULO RETANGULO"
  defp check_obtuse(a, b, c), do: if pow(a, 2) > pow(b, 2) + pow(c, 2), do: "TRIANGULO OBTUSANGULO"
  defp check_acute(a, b, c), do: if pow(a, 2) < pow(b, 2) + pow(c, 2), do: "TRIANGULO ACUTANGULO"
  defp check_equilateral(a, b, c), do: if (a == b and b == c), do: "TRIANGULO EQUILATERO"
  defp check_isosceles(a, b, c), do: if Enum.any?([(a == b and b != c), (a == c and c != b), (b == c and c != a)]), do: "TRIANGULO ISOSCELES"

  defp do_checks([], _, _, _), do: [nil]
  defp do_checks(jobs, a, b, c) do
    [actual_job | rest_jobs] = jobs

    [actual_job.(a, b, c)] ++ do_checks(rest_jobs, a, b, c)
  end

  def get_triangle_types(a, b, c) do
    checks = [&check_rectangle/3, &check_obtuse/3, &check_acute/3, &check_equilateral/3, &check_isosceles/3]

    if not is_triangle(a, b, c) do
      ["NAO FORMA TRIANGULO"]
    else
      do_checks(checks, a, b, c)
    end
  end
end

[a, b, c] = BcInput.input_as_float_array |> Enum.sort(&(&1 >= &2))

Ex1045.get_triangle_types(a, b, c)
|> Enum.filter(& !is_nil(&1))
|> Enum.each(&IO.puts/1)
