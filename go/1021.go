package main

import (
	"fmt"
    "math"
)

func notas(v float64, n []float64) float64 {
	fmt.Println("NOTAS:")
	for _, i := range n {
		fmt.Printf("%d nota(s) de R$ %.2f\n", int(v/i), i)
		v = math.Mod(v, i)
	}
	return v
}

func moedas(v float64, m []float64) {
	fmt.Println("MOEDAS:")
    v += 0.0001 // Avoid precision problems
	for _, i := range m {
		fmt.Printf("%d moeda(s) de R$ %.2f\n", int(v/i), i)
		v = math.Mod(v, i)
	}
}


func main() {
	n := []float64{100.00, 50.00, 20.00, 10.00, 5.00, 2.00}
	m := []float64{1.00, 0.50, 0.25, 0.10, 0.05, 0.01}

	var v float64
	fmt.Scan(&v)

	v = notas(v, n)
	moedas(v, m)
}
