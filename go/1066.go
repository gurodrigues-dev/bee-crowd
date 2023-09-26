package main

import (
	"fmt"
	"math"
)

func main() {
  var n, par, impar, pos, neg int
  for i := 0; i < 5; i++ {
    fmt.Scanf("%d", &n)
    if n % 2 == 0 {
      par += 1
    }

    if math.Abs(float64(n % 2)) == 1 {
      impar += 1
    }

    if n > 0 {
      pos += 1
    }

    if n < 0 {
      neg += 1
    }
  }
  fmt.Printf("%d valor(es) par(es)\n%d valor(es) impar(es)\n%d valor(es) positivo(s)\n%d valor(es) negativo(s)\n", par, impar, pos, neg)
}
