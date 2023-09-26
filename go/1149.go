package main

import "fmt"

func main() {
  var x, y, sum int

  fmt.Scanf("%d", &x)

  for {
    fmt.Scanf("%d", &y)
    if y > 0 {
      break
    }
  }

  for i := 0; i < y; i++ {
    sum += x + i
  }

  fmt.Println(sum)
}
