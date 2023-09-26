while true do
    local x = io.read("*n")
    if x == 0 then
        break
    end

    local list = ""
    for i = 1, x do
        list = list .. i
        if i < x then
            list = list .. " "
        end
    end

    print(list)
end
