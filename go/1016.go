package main

import "fmt"

func main() {
	var v, d, t float64
	v = 30
	fmt.Scanf("%f", &d)
	t = d / v * 60
	fmt.Printf("%.0f minutos\n", t)
}
