package main

import "fmt"

func recFib(n int) int {
  if n == 0 || n == 1 {
    return n
  }

  return recFib(n - 1) + recFib(n - 2)
}

func main() {
  var n  int

  fmt.Scanf("%d", &n)
  var output string

  for i := 0; i < n; i++ {
    output += fmt.Sprintf("%d", recFib(i))

    if i < n - 1 {
      output += fmt.Sprintf(" ")
    }
  }

  fmt.Println(output)
}
