local function split(inputstr)
  local sep = "%s"
  local t={}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end
local n, qtd, tot = 0, 0, 0
local cob = {
  C = 0,
  R = 0,
  S = 0,
}

n = io.read()
local animal, line
for _ = 1, n do
  line = io.read()
  line = split(line)

  qtd = tonumber(line[1])
  animal = line[2]

  cob[animal] = cob[animal] + qtd
  tot = tot + qtd
end

print(string.format("Total: %d cobaias", tot))
print(string.format("Total de coelhos: %d", cob["C"]))
print(string.format("Total de ratos: %d", cob["R"]))
print(string.format("Total de sapos: %d", cob["S"]))
print(string.format("Percentual de coelhos: %.2f %%", 100 * cob["C"] / tot))
print(string.format("Percentual de ratos: %.2f %%", 100 * cob["R"] / tot))
print(string.format("Percentual de sapos: %.2f %%", 100 * cob["S"] / tot))
