while true do
    local x = io.read("*n")
    local y = io.read("*n")

    if x == 0 or y == 0 then
        break
    end

    if x > 0 and y > 0 then
        print("primeiro")
    elseif x < 0 and y > 0 then
        print("segundo")
    elseif x < 0 and y < 0 then
        print("terceiro")
    else
        print("quarto")
    end
end
