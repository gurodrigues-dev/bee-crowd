function calcularVolumeEsfera(raio)
    local pi = 3.14159
    local volume = (4.0/3) * pi * raio^3
    return volume
end

local raio = io.read("*n")

local volume = calcularVolumeEsfera(raio)
local volume = string.format("%.3f", volume)

print("VOLUME = "..volume)
