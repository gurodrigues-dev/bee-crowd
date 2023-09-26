{number, _} = IO.gets("") |> Integer.parse
{worked_hours, _} = IO.gets("") |> Integer.parse
{val_hour, _} = IO.gets("") |> Float.parse

salary_calc = fn val_hour, hours -> val_hour * hours end
format_mantisse = fn salary, mantisse -> :erlang.float_to_binary(salary, [decimals: mantisse]) end

salary = format_mantisse.(salary_calc.(val_hour, worked_hours), 2)


IO.puts("NUMBER = #{number}")
IO.puts("SALARY = U$ #{salary}")
