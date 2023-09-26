package main

import (
	"fmt"
	"math"
)

func main() {
	var h1, m1, h2, m2, hours, mins int
	fmt.Scanf("%d", &h1)
	fmt.Scanf("%d", &m1)
	fmt.Scanf("%d", &h2)
	fmt.Scanf("%d", &m2)

	hours = h2 - h1
	if hours < 0 {
		hours = 24 - int(math.Abs(float64(hours)))
	}

	mins = m2 - m1
	if mins < 0 {
		hours -= 1
		mins = 60 - int(math.Abs(float64(mins)))
	}

	if hours < 0 {
		hours = 24 + hours
	}

	if hours == 0 && mins == 0 {
		hours = 24
	}

	fmt.Printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", hours, mins)
}
