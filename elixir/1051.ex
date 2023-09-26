
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

fee_table = [
  %{"income" => {   0.00,     2000.0}, "aliq" =>  0},
  %{"income" => {2000.01,     3000.0}, "aliq" =>  8},
  %{"income" => {3000.01,     4500.0}, "aliq" => 18},
  %{"income" => {4500.01,  :infinity}, "aliq" => 28}
]

defmodule Ex1051 do
  def filter_ranges(range_table, value) do
    Enum.filter(range_table, &(elem(&1["income"], 0) <= value))
  end

  def get_min(fee_table_item) do
    fee_table_item["income"] |> elem(0)
  end

  def get_fee(fee_table_item) do
    fee_table_item["aliq"]
  end

  def calc_fee(fee_table, salary) do
    filter_ranges(fee_table, salary)
    |> Enum.reverse()
    |> calc(salary)
  end

  def format_output(total_amount) do
    if (round(total_amount * 100) == 0) do
      "Isento"
    else
      "R$ #{BcParse.float_to_str(total_amount, 2)}"
    end
  end

  def calc([], _), do: 0
  def calc([actual | rest], salary) do
    value_range = salary - get_min actual
    fee_value = value_range * get_fee(actual) / 100
    fee_value + calc(rest, salary - value_range)
  end
end

salary = BcInput.input_as_float()

IO.puts(Ex1051.calc_fee(fee_table, salary) |> Ex1051.format_output)
