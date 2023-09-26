package main

import "fmt"

func main() {
  var animal, c1, c2, c3 string

  animals := map[string]map[string]map[string]string{
    "vertebrado": {
      "ave": {
        "carnivoro": "aguia",
        "onivoro": "pomba",
      },
      "mamifero": {
        "onivoro": "homem",
        "herbivoro": "vaca",
      },
    },
    "invertebrado": {
      "inseto": {
        "hematofago": "pulga",
        "herbivoro": "lagarta",
      },
      "anelideo": {
        "hematofago": "sanguessuga",
        "onivoro": "minhoca",
      },
    },
  }

  fmt.Scanf("%s", &c1)
  fmt.Scanf("%s", &c2)
  fmt.Scanf("%s", &c3)

  animal = animals[c1][c2][c3]

  fmt.Println(animal)
}
