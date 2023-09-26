package main

import "fmt"

func main() {
  var m, n, maior, menor, sum int
  for {
    fmt.Scanf("%d", &m)
    fmt.Scanf("%d", &n)
    if n <= 0 || m <= 0 {
      break
    }

    maior = m
    menor = n
    if n > m {
      maior = n
      menor = m
    }

    sum = 0
    for i := menor; i <= maior; i++ {
      sum += i
      fmt.Printf("%d ", i)
    }

    fmt.Printf("Sum=%d\n", sum)
  }
}
