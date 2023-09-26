package main

import "fmt"

func main() {
  var x, y int
  fmt.Scanf("%d", &x)
  fmt.Scanf("%d", &y)

  if x > y {
    x, y = y, x
  }

  for i := x + 1; i < y; i++ {
    if i % 5 == 2 || i % 5 == 3 {
      fmt.Println(i)
    }
  }
}
