local i = 1
local j = 60

while j >= 0 do
    print(string.format("I=%d J=%d", i, j))
    i = i + 3
    j = j - 5
end
