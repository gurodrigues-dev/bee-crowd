package main

import "fmt"

func main() {
	var n int
	var h, s float64
	fmt.Scanf("%d", &n)
	fmt.Scanf("%f", &h)
	fmt.Scanf("%f", &s)
	fmt.Printf("NUMBER = %d\n", n)
	fmt.Printf("SALARY = U$ %.2f\n", h*s)
}
