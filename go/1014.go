package main

import "fmt"

func main() {
	var d, c float64
	fmt.Scanf("%f", &d)
	fmt.Scanf("%f", &c)
	fmt.Printf("%.3f km/l\n", d/c)
}
