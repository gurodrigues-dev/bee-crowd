package main

import "fmt"

func main() {
  var n int
  ddd := map[int]string{
    61: "Brasilia",
    71: "Salvador",
    11: "Sao Paulo",
    21: "Rio de Janeiro",
    32: "Juiz de Fora",
    19: "Campinas",
    27: "Vitoria",
    31: "Belo Horizonte",
  }

  fmt.Scanf("%d", &n)

  r := ddd[n]

  if r == "" {
    r = "DDD nao cadastrado"
  }
  fmt.Println(r)
}
