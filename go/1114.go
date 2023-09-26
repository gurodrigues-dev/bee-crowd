package main

import "fmt"

func main() {
  var pass int
  for {
    fmt.Scanf("%d", &pass)
    if pass == 2002 {
      fmt.Println("Acesso Permitido")
      break
    }

    fmt.Println("Senha Invalida")
  }
}
