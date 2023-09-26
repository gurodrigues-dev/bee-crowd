local n = tonumber(io.read())

local h = n // 3600
n = n % 3600

local m = n // 60
n = n % 60

print(string.format("%d:%d:%d", h, m, n))
