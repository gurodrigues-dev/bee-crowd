local d = tonumber(io.read())

local a = d // 365
d = d % 365

local m = d // 30
d = d % 30

print(string.format("%d ano(s)", a))
print(string.format("%d mes(es)", m))
print(string.format("%d dia(s)", d))
