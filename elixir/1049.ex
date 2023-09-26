#https://www.beecrowd.com.br/judge/pt/problems/view/1049

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

animal_type = %{
  "vertebrado"   => %{
    "ave"      => %{
      "carnivoro" => "aguia",
      "onivoro"   => "pomba"
    },
    "mamifero" => %{
      "onivoro"   => "homem",
      "herbivoro" => "vaca"
    }
  },
  "invertebrado" => %{
    "inseto"   => %{
      "hematofago" => "pulga",
      "herbivoro"  => "lagarta"
    },
    "anelideo" => %{
      "hematofago" => "sanguessuga",
      "onivoro"    => "minhoca"
    }
  }
}

structure = IO.gets("") |> String.trim
class = IO.gets("") |> String.trim
order = IO.gets("") |> String.trim

IO.puts animal_type[structure][class][order]
