for i = 0, 20, 2 do
    for j = 10 + i, i + 30, 10 do
        if i % 10 ~= 0 then
            print(string.format("I=%.1f J=%.1f", i / 10, j / 10))
        else
            print(string.format("I=%d J=%d", i / 10, j / 10))
        end
    end
end
