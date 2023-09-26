package main

import "fmt"

func main() {
  var n int
  var x, y float64
  fmt.Scanf("%d", &n)
  for i := 0; i < n; i++ {
    fmt.Scanf("%f", &x)
    fmt.Scanf("%f", &y)

    if y == 0 {
      fmt.Println("divisao impossivel")
      continue
    }

    fmt.Printf("%.1f\n", x / y)
  }
}
