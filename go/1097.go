package main

import "fmt"

func main() {
  for i := 1; i < 10; i += 2 {
    for j := 6 + i; j >= 4 + i; j-- {
      fmt.Printf("I=%d J=%d\n", i, j)
    }
  }
}

