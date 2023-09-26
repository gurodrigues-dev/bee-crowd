n = IO.gets("") |> String.trim |> String.to_integer

#Erlang.math dont have E constant
e = 2.71828182845904523536

r = floor(n*:math.log10(n/e)+:math.log10(2*:math.pi()*n)/2.0) + 1
IO.puts r
