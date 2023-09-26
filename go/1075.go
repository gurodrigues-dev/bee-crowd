package main

import "fmt"

func main() {
  var n int
  fmt.Scanf("%d", &n)
  for i := 1; i < 10000; i++ {
    if i % n == 2 {
      fmt.Println(i)
    }
  }
}
