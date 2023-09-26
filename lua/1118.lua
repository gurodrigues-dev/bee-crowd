local close = false

while not close do
    local count = 0
    local sum = 0.0
    local choose = 0

    while count < 2 do
        local v = io.read("*n")

        if v < 0 or v > 10 then
            print("nota invalida")
        else
            sum = sum + v
            count = count + 1
        end
    end

    print(string.format("media = %.2f", sum / 2))
    count = 0
    sum = 0

    while true do
        print("novo calculo (1-sim 2-nao)")
        choose = io.read("*n")

        if choose == 2 or choose == 1 then
          if choose == 2 then
            close = true
          end

          break  -- Exit the inner loop
        end
    end
end
