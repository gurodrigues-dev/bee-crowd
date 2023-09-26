package main

import "fmt"

func main() {
  var c int
  comb := map[int]int{
    1: 0,
    2: 0,
    3: 0,
  }

  for {
    fmt.Scanf("%d", &c)

    if c < 0 && c > 4 {
      continue
    }

    if c == 4 {
      break
    }

    comb[c] += 1
  }

  fmt.Printf("MUITO OBRIGADO\nAlcool: %d\nGasolina: %d\nDiesel: %d\n", comb[1], comb[2], comb[3])
}
