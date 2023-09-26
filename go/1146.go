package main

import "fmt"

func main() {
  var x int
  var list string

  for {
    fmt.Scanf("%d", &x)
    if x == 0 {
      break
    }

    list = ""
    for i := 1; i <= x; i++ {
      list += fmt.Sprintf("%d", i)
      if i < x {
        list += fmt.Sprintf(" ")
      }
    }

    fmt.Println(list)
  }
}
