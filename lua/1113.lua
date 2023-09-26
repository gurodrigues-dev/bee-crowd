while true do
    local x = io.read("*n")
    local y = io.read("*n")

    if x == y then
        break
    end

    if x < y then
        print("Crescente")
    else
        print("Decrescente")
    end
end
