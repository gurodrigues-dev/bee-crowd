package main

import "fmt"

func main() {
  var n, p int
  for i := 0; i < 5; i++ {
    fmt.Scanf("%d", &n)
    if n % 2 == 0 {
      p += 1
    }
  }
  fmt.Printf("%d valores pares\n", p)
}
