package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c, m float64
	fmt.Scanf("%f", &a)
	fmt.Scanf("%f", &b)
	fmt.Scanf("%f", &c)
	m = (a + b + math.Abs(a-b)) / 2
	m = (m + c + math.Abs(m-c)) / 2
	fmt.Printf("%.0f eh o maior\n", m)
}
