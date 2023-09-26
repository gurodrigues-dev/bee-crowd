package main

import "fmt"

func seqSII(x, y float64) float64 {
  if x == 39 {
    return x / y
  }

  return (x / y) + seqSII( x + 2, y * 2)
}

func main() {
  fmt.Printf("%.2f\n", seqSII(1, 1))
}
