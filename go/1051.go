package main

import "fmt"

func main() {
  var s, v, imposto float64

  fmt.Scanf("%f", &s)

  imposto = 0
  if s > 2000 {
    v = s - 2000
    if v > 1000 {
      v = 1000
    }

    imposto += v * 0.08
  }

  if s > 3000 {
    v = s - 3000
    if v > 1500 {
      v = 1500
    }

    imposto += v * 0.18
  }

  if s > 4500 {
    v = s - 4500

    imposto += v * 0.28
  }

  if imposto == 0 {
    fmt.Println("Isento")
    return
  }

  fmt.Printf("R$ %.2f\n", imposto)
}
