local animal, c1, c2, c3

local animals = {
    vertebrado = {
        ave = {
            carnivoro = "aguia",
            onivoro = "pomba",
        },
        mamifero = {
            onivoro = "homem",
            herbivoro = "vaca",
        },
    },
    invertebrado = {
        inseto = {
            hematofago = "pulga",
            herbivoro = "lagarta",
        },
        anelideo = {
            hematofago = "sanguessuga",
            onivoro = "minhoca",
        },
    },
}

c1 = io.read()
c2 = io.read()
c3 = io.read()

animal = animals[c1][c2][c3]

print(animal)
