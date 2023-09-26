
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

defmodule Ex1040 do
  def calc_pond_avg n1, n2, n3, n4 do
    (n1 * 2 + n2 * 3 + n3 * 4 + n4 * 1) / 10.0
  end

  def show_feedback_regular avg do
    cond do
      avg >= 7.0 -> "Aluno aprovado."
      avg < 5.0   -> "Aluno reprovado."
      :true      -> "Aluno em exame."
    end
  end

  def is_in_exam avg do
    avg >= 5.0 and avg <= 6.9
  end

  def show_feedback_exam avg do
    cond do
      avg >= 5.0 -> "Aluno aprovado."
      true     -> "Aluno reprovado."
    end
  end

  def calc_avg_with_exam avg_previous, exam do
    (avg_previous + exam) / 2
  end

  def show_note message, avg do
    "#{message}: #{avg |> BcParse.float_to_str(1)}"
  end

end

[n1, n2, n3, n4] = BcInput.input_as_float_array()

avg = Ex1040.calc_pond_avg(n1, n2, n3, n4)
IO.puts(Ex1040.show_note("Media", avg))
IO.puts(Ex1040.show_feedback_regular(avg))

if Ex1040.is_in_exam(avg) do
  exam_note = BcInput.input_as_float()

  IO.puts(Ex1040.show_note("Nota do exame", exam_note))
  IO.puts(Ex1040.show_feedback_exam(Ex1040.calc_avg_with_exam(avg, exam_note)))
  IO.puts(Ex1040.show_note("Media Final", Ex1040.calc_avg_with_exam(avg, exam_note)))
end
