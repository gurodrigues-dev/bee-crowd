package main

import "fmt"

func main() {
  var p int
  var n float64
  for i := 0; i < 6; i++ {
    fmt.Scanf("%f", &n)
    if n > 0 {
      p += 1
    }
  }
  fmt.Printf("%d valores positivos\n", p)
}
