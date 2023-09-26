_ = IO.gets("")
{fix_salary, _} = IO.gets("") |> Float.parse
{total_sales, _} = IO.gets("") |> Float.parse

commission = fn amount, perc -> amount * (perc / 100) end
format_mantisse = fn number, mantisse -> :erlang.float_to_binary(number, [decimals: mantisse]) end

result = format_mantisse.(fix_salary + commission.(total_sales, 15), 2)

IO.puts("TOTAL = R$ #{result}")
