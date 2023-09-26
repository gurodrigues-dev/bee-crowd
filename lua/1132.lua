local x = io.read("*n")
local y = io.read("*n")
local sum = 0

if y < x then
    x, y = y, x
end

for i = x, y do
    if i % 13 ~= 0 then
      sum = sum + i
    end
end

print(sum)
