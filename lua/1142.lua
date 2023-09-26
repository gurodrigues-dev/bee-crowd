local n = io.read("*n")
local init = 1

for i = 1, n do
    for j = init, init + 2 do
        io.write(j, " ")
    end
    print("PUM")
    init = init + 4
end
