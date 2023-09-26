package main

import "fmt"

func main() {
  var p int
  var n, t float64
  for i := 0; i < 6; i++ {
    fmt.Scanf("%f", &n)
    if n > 0 {
      p += 1
      t += n
    }
  }
  fmt.Printf("%d valores positivos\n", p)
  fmt.Printf("%.1f\n", t/float64(p))
}
