defmodule Money do
  @banknotes [100, 50, 20, 10, 5, 2, 1]

  def get_amount_of_banknotes(amount),
    do: do_get_amount_of_banknotes(amount, @banknotes, %{})

  defp do_get_amount_of_banknotes(_, banknotes, accumulator) when length(banknotes) == 0,
    do: accumulator

  defp do_get_amount_of_banknotes(amount, [banknote | smaller_banknotes], accumulator) do
    banknote_amount = :math.floor(amount / banknote) |> trunc()
    remaining_amount = rem(amount, banknote)

    Map.merge(
      do_get_amount_of_banknotes(remaining_amount, smaller_banknotes, %{
        banknote => banknote_amount
      }),
      accumulator
    )
  end
end

defmodule Util do
  def parse_string_as_integer(value) do
    value |> String.trim() |> String.to_integer()
  end
end

balance = IO.gets("") |> Util.parse_string_as_integer()

IO.puts("#{balance}")

Money.get_amount_of_banknotes(balance)
|> Enum.reverse()
|> Enum.each(fn {banknote, amount} -> IO.puts("#{amount} nota(s) de R$ #{banknote},00") end)
