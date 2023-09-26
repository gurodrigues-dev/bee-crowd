package main

import "fmt"

func main() {
  var x, z, count, sum int
  fmt.Scanf("%d", &x)

  for {
    fmt.Scanf("%d", &z)

    if z > x {
      break
    }
  }

  sum = x
  count = 1

  for {
    sum += x + count
    count += 1
    if sum > z {
      break
    }
  }

  fmt.Println(count)
}
