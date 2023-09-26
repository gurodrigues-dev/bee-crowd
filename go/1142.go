package main

import "fmt"

func main() {
  var n, init int
  fmt.Scanf("%d", &n)

  init = 1
  for i := 0; i < n; i++ {
    for j := init; j < init + 3; j++ {
      fmt.Printf("%d ", j)
    }
    fmt.Println("PUM")
    init += 4
  }
}
