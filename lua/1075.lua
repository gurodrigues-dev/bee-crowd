local n = io.read("*n")

for i = 1, 9999 do
    if i % n == 2 then
        print(i)
    end
end
