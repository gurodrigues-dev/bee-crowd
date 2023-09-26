package main

import (
	"fmt"
)

func main() {
	var n, r float64

	fmt.Scanf("%f", &n)
	r = 3.14159 * (n * n)

	fmt.Printf("A=%.4f\n", r)
}
