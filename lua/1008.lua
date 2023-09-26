local number = io.read("*n")
local hours = io.read("*n")
local value = io.read("*n")

local salary = hours * value
salary = string.format("%.2f", salary)

print("NUMBER = "..number)
print("SALARY = U$ "..salary)
