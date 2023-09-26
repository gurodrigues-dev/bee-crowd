local l, t, v
t = tonumber(io.read())
v = tonumber(io.read())

l = t * v / 12
print(string.format("%.3f", l))
