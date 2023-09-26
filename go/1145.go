package main

import "fmt"

func main() {
  var x, y, count int
  fmt.Scanf("%d %d", &x ,&y)

  for i := 1; i <= y; i++ {
    count += 1
    fmt.Printf("%d", i)

    if count == x {
      count = 0
      fmt.Println()
      continue
    }

    if i != y {
      fmt.Printf(" ")
    }
  }
}
