package main

import (
  "fmt"
)

func main() {
  for i := 0; i <= 20; i += 2 {
    for j := 10 + i; j <= i + 30; j += 10 {
      if i % 10 != 0 {
        fmt.Printf("I=%.1f J=%.1f\n", float64(i) / 10, float64(j) / 10)
        continue
      }
      fmt.Printf("I=%d J=%d\n", i / 10, j / 10)
    }
  }
}

