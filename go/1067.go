package main

import "fmt"

func main() {
  var n int
  fmt.Scanf("%d", &n)

  for i := 1; i <= n; i++ {
    if i % 2 == 1 {
      fmt.Println(i)
    }
  }
}
