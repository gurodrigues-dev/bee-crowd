package main

import (
	"fmt"
	"math"
)

func main() {
	var pi, r, v float64
	pi = 3.14159
	fmt.Scanf("%f", &r)
	v = (4 / 3.0) * pi * math.Pow(r, 3)
	fmt.Printf("VOLUME = %.3f\n", v)
}
