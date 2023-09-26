package main

import (
	"fmt"
	"math"
)

func main() {
  var n, v int
  fmt.Scanf("%d", &n)

  for i := 0; i < n; i++ {
    fmt.Scanf("%d", &v)

    if v == 0 {
      fmt.Printf("NULL\n")
      continue
    }
    
    if v % 2 == 0 {
      fmt.Printf("EVEN ")
    }

    if math.Abs(float64(v % 2)) == 1 {
      fmt.Printf("ODD ")
    }

    if v > 0 {
      fmt.Printf("POSITIVE\n")
    }

    if v < 0 {
      fmt.Printf("NEGATIVE\n")
    }
  }
}
