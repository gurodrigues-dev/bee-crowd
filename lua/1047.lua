local h1 = io.read("*n")
local m1 = io.read("*n")
local h2 = io.read("*n")
local m2 = io.read("*n")

local hours = h2 - h1

if hours < 0 then
    hours = 24 + hours
end

local mins = m2 - m1

if mins < 0 then
    hours = hours - 1
    mins = 60 + mins
end

if hours < 0 then
    hours = 24 + hours
end

if hours == 0 and mins == 0 then
    hours = 24
end

print(string.format("O JOGO DUROU %d HORA(S) E %d MINUTO(S)", hours, mins))