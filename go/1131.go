package main

import "fmt"

func main() {
  var grenais, golInt, golGre, inter, gremio, emp, choose int
  var winner string

  for {
    fmt.Scanf("%d %d", &golInt, &golGre)
    if golInt > golGre {
      inter += 1
    }
    
    if golGre > golInt {
      gremio += 1
    }

    if golGre == golInt {
      emp += 1
    }

    grenais += 1

    fmt.Println("Novo grenal (1-sim 2-nao)")
    fmt.Scanf("%d", &choose)

    if choose == 2 {
      break
    }
  }

  fmt.Printf("%d grenais\nInter:%d\nGremio:%d\nEmpates:%d\n", grenais, inter, gremio, emp)

  if inter == gremio {
    fmt.Println("Nao houve vencedor")
    return
  }

  winner = "Inter"
  if gremio > inter {
    winner = "Gremio"
  }

  fmt.Printf("%s venceu mais\n", winner)
}
