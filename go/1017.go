package main

import "fmt"

func main() {
	var t, v, l float64
	fmt.Scanf("%f", &t)
	fmt.Scanf("%f", &v)
	l = t * v / 12
	fmt.Printf("%.3f\n", l)
}
