package main

import "fmt"

func main() {
  var count int
  var v, sum float64
  for {
    fmt.Scanf("%f", &v)
    if v < 0 || v > 10 {
      fmt.Println("nota invalida")
      continue
    }
    sum += v
    count += 1

    if count == 2 {
      break
    }
  }

  fmt.Printf("media = %.2f\n", sum / 2)
}
