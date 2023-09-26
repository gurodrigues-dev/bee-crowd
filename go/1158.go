package main

import (
	"fmt"
)

func main() {
  var n, x, y, sum, count int

  fmt.Scanf("%d", &n)

  for i := 0; i < n; i++ {
    fmt.Scanf("%d %d", &x, &y)

    sum = 0
    count = 0

    for {
      if x % 2 != 0 {
        count += 1
        sum += x
      }

      x += 1

      if count == y {
        break
      }
    }

    fmt.Println(sum)
  }

}
