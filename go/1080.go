package main

import "fmt"

func main() {
  var n, pos, maior int
  for i := 1; i <= 100; i++ {
    fmt.Scanf("%d", &n)
    if n > maior {
      maior = n
      pos = i
    }
  }

  fmt.Printf("%d\n%d\n", maior, pos)
}
