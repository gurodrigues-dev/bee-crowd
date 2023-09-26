package main

import (
	"fmt"
)

func main() {

	var ignore string
  var d1, h1, m1, s1, d2, h2, m2, s2 int

  fmt.Scanf("%s", &ignore)
  fmt.Scanf("%d", &d1)
  fmt.Scanf("%d", &h1)
  fmt.Scanf("%s", &ignore)
  fmt.Scanf("%d", &m1)
  fmt.Scanf("%s", &ignore)
  fmt.Scanf("%d", &s1)

  fmt.Scanf("%s", &ignore)
  fmt.Scanf("%d", &d2)
  fmt.Scanf("%d", &h2)
  fmt.Scanf("%s", &ignore)
  fmt.Scanf("%d", &m2)
  fmt.Scanf("%s", &ignore)
  fmt.Scanf("%d", &s2)


  dias := d2 - d1
  horas := h2 - h1
  minutos := m2 - m1
  segundos := s2 - s1

  if segundos < 0  {
    segundos += 60
    minutos -= 1
  }

  if minutos < 0 {
    minutos += 60
    horas -= 1
  }

  if horas < 0 {
    horas += 24
    dias -= 1
  }

	fmt.Printf("%d dia(s)\n%d hora(s)\n%d minuto(s)\n%d segundo(s)\n", dias, horas, minutos, segundos)
}
