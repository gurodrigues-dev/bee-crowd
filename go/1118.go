package main

import "fmt"

func main() {
  var close bool
  var count, choose int
  var v, sum float64
  for {
    fmt.Scanf("%f", &v)
    if v < 0 || v > 10 {
      fmt.Println("nota invalida")
      continue
    }
    sum += v
    count += 1

    if count != 2 {
      continue
    }

    fmt.Printf("media = %.2f\n", sum / 2)
    count = 0
    sum = 0

    for {
      fmt.Println("novo calculo (1-sim 2-nao)")
      fmt.Scanf("%d", &choose)

      if choose != 2 && choose != 1 {
        continue
      }

      if choose == 2 {
        close = true
      }

      break
    }

    if close {
      break
    }
  }

}
