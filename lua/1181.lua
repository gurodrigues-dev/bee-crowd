local n = tonumber(io.read())
local calc = io.read()

local sum = 0.0

for i = 0, 11 do
    for j = 0, 11 do
        local x = tonumber(io.read())
        if n == i then
            sum = sum + x
        end
    end
end

if calc == "M" then
    sum = sum / 12.0
end

io.write(string.format("%.1f\n", sum))
