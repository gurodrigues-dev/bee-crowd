package main

import "fmt"

func main() {
  ajusts := []float64{0.15, 0.12, 0.1, 0.07, 0.04}

  var n float64
  var ajust float64
  var percent string

  fmt.Scanf("%f", &n)

  if n <= 400 {
    ajust = n * ajusts[0]
    n = n + ajust
    percent = "15"

  }else if n > 400 && n <= 800{
    ajust = n * ajusts[1]
    n = n + ajust
    percent = "12"
  
  }else if n > 800 && n <= 1200 {
    ajust = n * ajusts[2]
    n = n + ajust
    percent = "10"
  
  }else if n > 1200 && n <= 2000 {
    ajust = n * ajusts[3]
    n = n + ajust
    percent = "7"
  
  }else if n > 2000 {
    ajust = n * ajusts[4]
    n = n + ajust
    percent = "4"
  }

  fmt.Printf("Novo salario: %.2f\n", n)
  fmt.Printf("Reajuste ganho: %.2f\n", ajust)
  fmt.Printf("Em percentual: %s %%\n", percent)
}
