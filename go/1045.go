package main

import (
	"fmt"
	"math"
)

func sort(l [3]float64) [3]float64 {
	for i := 0; i < len(l)-1; i++ {
		for j := 0; j < len(l)-i-1; j++ {
			if l[j] < l[j+1] {
				l[j], l[j+1] = l[j+1], l[j]
			}
		}
	}
	return l
}

func main() {
	var l [3]float64
	var a, b, c float64
	fmt.Scanf("%f", &l[0])
	fmt.Scanf("%f", &l[1])
	fmt.Scanf("%f", &l[2])

	l = sort(l)
	a, b, c = l[0], l[1], l[2]

	if a >= b+c {
		fmt.Printf("NAO FORMA TRIANGULO\n")
		return
	}

	if math.Pow(a, 2) == math.Pow(b, 2)+math.Pow(c, 2) {
		fmt.Printf("TRIANGULO RETANGULO\n")
	}

	if math.Pow(a, 2) > math.Pow(b, 2)+math.Pow(c, 2) {
		fmt.Printf("TRIANGULO OBTUSANGULO\n")
	}

	if math.Pow(a, 2) < math.Pow(b, 2)+math.Pow(c, 2) {
		fmt.Printf("TRIANGULO ACUTANGULO\n")
	}

	if a == b && b == c {
		fmt.Printf("TRIANGULO EQUILATERO\n")
	}

	if (a == b && a != c) || (a == c && a != b) || (b == c && b != a) {
		fmt.Printf("TRIANGULO ISOSCELES\n")
	}
}
