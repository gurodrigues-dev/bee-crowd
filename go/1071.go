package main

import (
	"fmt"
	"math"
)

func main() {
  var a, b, start, end, sum int
  fmt.Scanf("%d", &a)
  fmt.Scanf("%d", &b)

  start = a
  end = b
  
  if a > b {
    start = b
    end = a
  }

  for i := start + 1; i < end; i++ {
    if math.Abs(float64(i % 2)) == 1 {
      sum += i
    }
  }

  fmt.Println(sum)
}
