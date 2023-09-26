package main

import "fmt"

func main() {
  var n, tot int
  fmt.Scanf("%d", &n)
  for {
    if n % 2 == 1 {
      fmt.Println(n)
      tot += 1
    }
    n += 1

    if tot == 6 {
      break
    }
  }
}
