local x = io.read("*n")
local y = io.read("*n")

if x == 0 and y == 0 then
    print("Origem")
    return
end

if x == 0 then
    print("Eixo Y")
    return
end

if y == 0 then
    print("Eixo X")
    return
end

if x > 0 and y > 0 then
    print("Q1")
    return
end

if x < 0 and y > 0 then
    print("Q2")
    return
end

if x < 0 and y < 0 then
    print("Q3")
    return
end

if x > 0 and y < 0 then
    print("Q4")
    return
end
