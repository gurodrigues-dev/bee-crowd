package main

import "fmt"

func main() {
  var x, sum, count int

  for {
    fmt.Scanf("%d", &x)

    if x == 0 {
      break
    }

    count = 0
    sum = 0
    for {
      if x % 2 == 0 {
        count += 1
        sum += x
      }

      x += 1

      if count == 5 {
        break
      }
    }
    fmt.Println(sum)
  }
}
