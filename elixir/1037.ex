
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

defmodule Ex1037 do

  def is_in_range(range, value) do
    [min, max] = range
    value >= min and value <= max
  end


  def parse_value(range_string) do
    operator = range_string |> String.replace(~r/[^[:punct:]]/, "")

    modifier =
      if operator == "(" or operator == ")" do
        0.00001
      else
        0.0
      end

    range_string
    |> String.replace(~r/[^\d]/, "")
    |> BcParse.str_to_float()
    |> Kernel.+(modifier)
  end


  def parse_range(range_array) do
    range_array
    |> String.split(",")
    |> Enum.map(&parse_value/1)
  end


  def check([], _), do: IO.puts("Fora de intervalo")
  def check(range_list, value) do
    if range_list |> Enum.at(0) |> parse_range() |> is_in_range(value) do
      IO.puts("Intervalo #{range_list |> Enum.at(0)}")
    else
      [_ | rest] = range_list
      check(rest, value)
    end
  end
end

range = [
  "[0,25]",
  "(25,50]",
  "(50,75]",
  "(75,100]"
]


input = BcInput.input_as_float()
Ex1037.check(range, input)

#If someone has types or a best solution I would really appreciate to know, for leaning
