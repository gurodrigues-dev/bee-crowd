local function split (inputstr)
  local sep = "%s"
  local t={}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end

local d1, h1, m1, s1, d2, h2, m2, s2

local l1 = split(io.read("*l"))
local l2 = split(io.read("*l"))
local l3 = split(io.read("*l"))
local l4 = split(io.read("*l"))

d1 = l1[2]
h1 = l2[1]
m1 = l2[3]
s1 = l2[5]

d2 = l3[2]
h2 = l4[1]
m2 = l4[3]
s2 = l4[5]

local dias = d2 - d1
local horas = h2 - h1
local minutos = m2 - m1
local segundos = s2 - s1

if segundos < 0 then
    segundos = segundos + 60
    minutos = minutos - 1
end

if minutos < 0 then
    minutos = minutos + 60
    horas = horas - 1
end

if horas < 0 then
    horas = horas + 24
    dias = dias - 1
end

print(string.format("%d dia(s)\n%d hora(s)\n%d minuto(s)\n%d segundo(s)", dias, horas, minutos, segundos))
