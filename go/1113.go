package main

import "fmt"

func main() {
  var x, y int
  for {
    fmt.Scanf("%d", &x)
    fmt.Scanf("%d", &y)

    if x == y {
      break
    }

    if x < y {
      fmt.Println("Crescente")
      continue
    }

    fmt.Println("Decrescente")
  }
}
