package main

import "fmt"

func main() {
  var n, sum, count float64
  for {
    fmt.Scanf("%f", &n)
    if n < 0 {
      break
    }

    count += 1
    sum += n
  }

  fmt.Printf("%.2f\n", sum / count)
}
