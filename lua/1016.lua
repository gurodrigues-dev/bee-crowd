local v, d, t
v = 30

d = tonumber(io.read())

t = d / v * 60
print(string.format("%.0f minutos", t))
