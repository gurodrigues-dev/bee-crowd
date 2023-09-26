package main

import "fmt"

func main() {
	var n string
	var s, c, t float64
	fmt.Scanf("%s", &n)
	fmt.Scanf("%f", &s)
	fmt.Scanf("%f", &c)
	t = s + (c * 0.15)
	fmt.Printf("TOTAL = R$ %.2f\n", t)
}
