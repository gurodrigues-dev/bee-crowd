package main

import "fmt"

func main() {
  var n, v, in, out int
  fmt.Scanf("%d", &n)

  for i := 0; i < n; i++ {
    fmt.Scanf("%d", &v)
    if v >= 10 && v <= 20 {
      in += 1
      continue
    }
    out += 1
  }

  fmt.Printf("%d in\n%d out\n", in, out)
}
