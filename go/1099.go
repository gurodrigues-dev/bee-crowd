package main

import "fmt"

func main() {
  var n, x, y, maior, menor, sum int
  fmt.Scanf("%d", &n)
  for i := 0; i < n; i++ {
    fmt.Scanf("%d", &x)
    fmt.Scanf("%d", &y)
    maior = x
    menor = y
    if y > x {
      maior = y
      menor = x
    }
  
    sum = 0
    for j := menor + 1; j < maior; j++ {
      if j % 2 == 0 {
        continue
      }
      sum += j
    }

    fmt.Println(sum)
  }
}
