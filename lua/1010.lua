local function split(str)
    local r = {}

    for p in str:gmatch("([^%s]+)") do
        table.insert(r, p)
    end

    return r
end

local p1 = split(io.read())
local p2 = split(io.read())

local total = p1[2] * p1[3] + p2[2] * p2[3]

total = string.format("%.2f", total)

print("VALOR A PAGAR: R$ "..total)
