package main

import "fmt"

func seqS(n float64) float64 {
  if n == 1 {
    return n
  }

  return 1/n + seqS(n - 1)
}

func main() {
  fmt.Printf("%.2f\n", seqS(100))
}
