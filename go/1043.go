package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c, r float64
	fmt.Scanf("%f", &a)
	fmt.Scanf("%f", &b)
	fmt.Scanf("%f", &c)

	if math.Abs(b-c) < a && a < b+c && math.Abs(a-c) < b && b < a+c && math.Abs(a-b) < c && c < a+b {
		r = a + b + c
		fmt.Printf("Perimetro = %.1f\n", r)
		return
	}

	r = (a + b) * c / 2
	fmt.Printf("Area = %.1f\n", r)
}
