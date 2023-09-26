local function sort(arr)
    for i = 1, #arr - 1 do
        for j = 1, #arr - i do
            if arr[j] > arr[j + 1] then
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end
        end
    end
    return arr
end

local l = {}
local old = {}

l[1] = io.read("*n")
l[2] = io.read("*n")
l[3] = io.read("*n")

for i = 1, #l do
    old[i] = l[i]
end

l = sort(l)

for i = 1, #l do
    print(l[i])
end

print()

for i = 1, #old do
    print(old[i])
end
