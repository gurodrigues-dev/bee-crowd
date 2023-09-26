local n = io.read("*n")

for i = 1, n do
    local v = io.read("*n")

    if v == 0 then
        print("NULL")
    elseif v % 2 == 0 then
        io.write("EVEN ")
    elseif math.abs(v % 2) == 1 then
        io.write("ODD ")
    end

    if v > 0 then
        print("POSITIVE")
    elseif v < 0 then
        print("NEGATIVE")
    end
end
