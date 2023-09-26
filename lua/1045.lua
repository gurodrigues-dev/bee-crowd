local function sort(arr)
    for i = 1, #arr - 1 do
        for j = 1, #arr - i do
            if arr[j] < arr[j + 1] then
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end
        end
    end
    return arr
end

local l = {}
local a, b, c

l[1] = io.read("*n")
l[2] = io.read("*n")
l[3] = io.read("*n")

l = sort(l)
a, b, c = l[1], l[2], l[3]

if a >= b + c then
    print("NAO FORMA TRIANGULO")
    return
end

if a * a == b * b + c * c then
    print("TRIANGULO RETANGULO")
end

if a * a > b * b + c * c then
    print("TRIANGULO OBTUSANGULO")
end

if a * a < b * b + c * c then
    print("TRIANGULO ACUTANGULO")
end

if a == b and b == c then
    print("TRIANGULO EQUILATERO")
end

if (a == b and a ~= c) or (a == c and a ~= b) or (b == c and b ~= a) then
    print("TRIANGULO ISOSCELES")
end
