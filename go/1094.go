package main

import "fmt"

func main() {
  var n, qtd, tot int
  var animal string
  cob := map[string]int{
    "C": 0,
    "R": 0,
    "S": 0,
  }

  fmt.Scanf("%d", &n)
  for i := 0; i < n; i++ {
    fmt.Scanf("%d", &qtd)   
    fmt.Scanf("%s", &animal)
    cob[animal] += qtd
    tot += qtd
  }

  fmt.Printf("Total: %d cobaias\n", tot)
  fmt.Printf("Total de coelhos: %d\n", cob["C"])
  fmt.Printf("Total de ratos: %d\n", cob["R"])
  fmt.Printf("Total de sapos: %d\n", cob["S"])
  fmt.Printf("Percentual de coelhos: %.2f %%\n", 100 * float64(cob["C"]) / float64(tot))
  fmt.Printf("Percentual de ratos: %.2f %%\n",   100 * float64(cob["R"]) / float64(tot))
  fmt.Printf("Percentual de sapos: %.2f %%\n",   100 * float64(cob["S"]) / float64(tot))
}
