package main

import "fmt"

func fatorial(n int) int {
  if n == 1 {
    return n
  }

  return n * fatorial(n - 1)
}

func main() {
  var n int
  fmt.Scanf("%d", &n)
  fmt.Println(fatorial(n))
}
