package main

import "fmt"

func main() {
  var x, y int
  for {
    fmt.Scanf("%d", &x)
    fmt.Scanf("%d", &y)

    if x == 0 || y == 0 {
      break
    }

    if x > 0 && y > 0 {
      fmt.Println("primeiro")
      continue
    }
    
    if x < 0 && y > 0 {
      fmt.Println("segundo")
      continue
    }

    if x < 0 && y < 0 {
      fmt.Println("terceiro")
      continue
    }

    fmt.Println("quarto")
  }

}
